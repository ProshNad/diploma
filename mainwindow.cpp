#include "mainwindow.h"
#include "ui_mainwindow.h"


#include <QCoreApplication>
#include <QApplication>
#include <QProcess>
#include <QStringList>
#include <QThread>
#include <QtConcurrent/QtConcurrent>
#include <QFutureWatcher>
#include <QProgressDialog>
#include <QMessageBox>
#include <mpfr.h>


#define CGAL_USE_BASIC_VIEWER
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/Delaunay_triangulation_3.h>
#include <CGAL/point_generators_3.h>
#include <CGAL/draw_triangulation_3.h>
#include <QGLViewer/manipulatedCameraFrame.h>
#include <QGLViewer/manipulatedFrame.h>

#include <CGAL/Simple_cartesian.h>

#include <CGAL/Surface_mesh.h>
#include <CGAL/draw_surface_mesh.h>

#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/Delaunay_triangulation_2.h>
#include <CGAL/draw_triangulation_2.h>

#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/Skin_surface_3.h>
#include <CGAL/Polyhedron_3.h>
#include <CGAL/mesh_skin_surface_3.h>
#include <CGAL/subdivide_skin_surface_mesh_3.h>
#include <list>
#include <CGAL/IO/Polyhedron_iostream.h>
#include <CGAL/subdivide_skin_surface_mesh_3.h>
#include <CGAL/Skin_surface_refinement_policy_3.h>
#include <CGAL/IO/read_xyz_points.h>
#include <CGAL/IO/read_off_points.h>

#include <fstream>
#include <CGAL/Scale_space_surface_reconstruction_3.h>
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>
#include <CGAL/IO/read_off_points.h>


#include <CGAL/Timer.h>
#include <CGAL/Scale_space_reconstruction_3/Jet_smoother.h>
#include <CGAL/Scale_space_reconstruction_3/Advancing_front_mesher.h>
#include <CGAL/Point_set_3.h>
#include <CGAL/Point_set_3/IO.h>
#include <CGAL/Polygon_mesh_processing/polygon_soup_to_polygon_mesh.h>

#include <CGAL/Scale_space_surface_reconstruction_3.h>
#include <CGAL/Scale_space_reconstruction_3/Advancing_front_mesher.h>
#include <CGAL/Scale_space_reconstruction_3/Jet_smoother.h>
#include <CGAL/Exact_predicates_inexact_constructions_kernel.h>

#include <iostream>
#include <../Загрузки/cpp-spline/spline/src/main/cpp/Bezier.h>

typedef CGAL::Scale_space_surface_reconstruction_3<CGAL::Exact_predicates_inexact_constructions_kernel>    Reconstruction;
typedef CGAL::Simple_cartesian<double>                       Kernel;
typedef Kernel::Point_3                                      Point;
typedef CGAL::Surface_mesh<Point>                            Mesh;



typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef CGAL::Scale_space_surface_reconstruction_3<K>    Reconstruction2;


typedef CGAL::Delaunay_triangulation_3<K>                   DT3;
typedef CGAL::Creator_uniform_3<double,K::Point_3>          Creator;


typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef CGAL::Delaunay_triangulation_2<K> Triangulation;
typedef Triangulation::Point Point2;




typedef CGAL::Skin_surface_traits_3<K>                      Traits;
typedef CGAL::Skin_surface_3<Traits>                        Skin_surface_3;
typedef Skin_surface_3::FT                                  FT;
typedef Skin_surface_3::Bare_point                          Bare_point;
typedef Skin_surface_3::Weighted_point                      Weighted_point;
typedef CGAL::Polyhedron_3<K,
  CGAL::Skin_surface_polyhedral_items_3<Skin_surface_3> >   Polyhedron;


typedef CGAL::Point_set_3<K::Point_3> Point_set;

typedef CGAL::Scale_space_reconstruction_3::Jet_smoother<CGAL::Exact_predicates_inexact_constructions_kernel>             Smoother1;
typedef CGAL::Scale_space_reconstruction_3::Advancing_front_mesher<CGAL::Exact_predicates_inexact_constructions_kernel>    Mesher;

typedef std::array<std::size_t, 3> Facet; // Triple of indices
typedef Reconstruction::Facet_const_iterator                   Facet_iterator;

void drow2(){
    Point_set points1;

    QString fileName = QFileDialog::getOpenFileName(nullptr,
                                QString::fromUtf8("Открыть файл с набором точек"),
                                QDir::currentPath());
     std::ifstream inn(fileName.toStdString());
     inn >> points1;




     std::vector<Facet> facets;
     CGAL::advancing_front_surface_reconstruction(points1.points().begin(),
                                                     points1.points().end(),
                                                     std::back_inserter(facets));

     std::vector<K::Point_3> vertices;
         vertices.reserve (points1.size());
         std::copy (points1.points().begin(), points1.points().end(), std::back_inserter (vertices));
         CGAL::Surface_mesh<K::Point_3> output_mesh;
         CGAL::Polygon_mesh_processing::polygon_soup_to_polygon_mesh (vertices, facets, output_mesh);


         CGAL::DefaultColorFunctorSM fcolor1;
         CGAL::SimpleSurfaceMeshViewerQt<CGAL::Surface_mesh<K::Point_3>,CGAL::DefaultColorFunctorSM>* m;
         m=new CGAL::SimpleSurfaceMeshViewerQt<CGAL::Surface_mesh<K::Point_3>,CGAL::DefaultColorFunctorSM>(nullptr,output_mesh, "Фигура из уравнения", false, fcolor1);
         m->show();


}





MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->label_3->setVisible(false);
    ui->pushButton_6->setVisible(false);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked() //из рандомных точек
{
    std::vector<K::Point_3> points;
     Point_set points1;
      CGAL::Random_points_in_sphere_3<K::Point_3,Creator> g(3.0);
      std::copy_n(g, ui->spinBox->value(), std::back_inserter(points));
      CGAL::Timer t;
        t.start();

      for (auto p:points){
          points1.insert(p);
      }

      switch (ui->comboBox->currentIndex()) {
      case 0:{
      greedyTriangulation(points);
      break;
      }
      case 1:{
          auto output_mesh = surface_based_Delaunay_cache(points1);
              DelaunayTriangulation(output_mesh);
          break;
      }
      case 2:{
          auto sm1 = surface_based_Delaunay_layered(points1);
          DelaunayTriangulation(sm1);
          break;
      }

      }

      t.stop();
      qDebug()<<QString::number(t.time(), 'f',8);

      QMessageBox::about(this, "Время выполнения", "Выполненно за "+QString::number(t.time(), 'f',8)+" минут");


}

void MainWindow::on_pushButton_2_clicked()// из файла
{
    QString fileName = QFileDialog::getOpenFileName(this,
                                QString::fromUtf8("Открыть файл с набором точек"),
                                QDir::currentPath());


          CGAL::Surface_mesh<K::Point_3> sm1;
          std::ifstream in1(fileName.toStdString());
           in1 >> sm1;


           DelaunayTriangulation(sm1);


}


void MainWindow::on_pushButton_4_clicked()//добавить точку
{
    ui->tableWidget->insertRow(ui->tableWidget->rowCount());




}

void MainWindow::on_pushButton_3_clicked()//нарисовать из точек в таблице
{


     std::vector<K::Point_3> points;
     Point_set points1;
    for(int i=0;i<ui->tableWidget->rowCount();i++){
         K::Point_3 a(ui->tableWidget->item(i,0)->text().toInt(),ui->tableWidget->item(i,1)->text().toInt(),ui->tableWidget->item(i,2)->text().toInt());
         points.push_back(a);
        points1.insert(a);
    }
    switch (ui->comboBox->currentIndex()) {
    case 0:{
    greedyTriangulation(points);
    break;
    }
    case 1:{
        auto output_mesh = surface_based_Delaunay_cache(points1);
            DelaunayTriangulation(output_mesh);
        break;
    }
    case 2:{
        auto sm1 = surface_based_Delaunay_layered(points1);
        DelaunayTriangulation(sm1);
        break;
    }

    }



}

void MainWindow::on_pushButton_5_clicked()//нарисовать уравнение
{
    CGAL::Timer t;
      t.start();
        QString eq = ui->lineEdit->text();
        ui->label_3->setVisible(false);

        QFutureWatcher<void>* watcher = new QFutureWatcher<void>;



        connect (watcher,&QFutureWatcher<void>::finished,[=](){draw_eq(eq);});


//        //после run



QApplication::processEvents();

        watcher->setFuture(QtConcurrent::run([&]() {

            QStringList arguments {"/home/nadia/bezie_and_triangulation/eq.py", eq};
            QProcess p;
        p.start("python", arguments);
        p.execute("sudo python", arguments);
        p.waitForFinished(-1);
        p.close();
       // qDebug()<<p.readAll()<<p.arguments();
        qDebug()<<"end!";
            }));



        QProgressDialog dialog("Обработка уравнения "+eq, "Cancel", 0, 100);
        connect(watcher, &QFutureWatcher<void>::finished, &dialog, &QProgressDialog::reset);
        connect(&dialog, &QProgressDialog::canceled, watcher, &QFutureWatcher<void>::cancel);
        connect(watcher, &QFutureWatcher<void>::progressRangeChanged, &dialog, &QProgressDialog::setRange);
        connect(watcher, &QFutureWatcher<void>::progressValueChanged, &dialog, &QProgressDialog::setValue);
        dialog.exec();




          qDebug()<<"end2";

          t.stop();
          qDebug()<<QString::number(t.time(), 'f',8);

          QMessageBox::about(this, "Время выполнения", "Выполненно за "+QString::number(t.time(), 'f',8)+" минут");



}

void MainWindow::draw_eq(QString eq)
{

    switch (ui->comboBox->currentIndex()) {
    case 0:{
        qDebug()<<"111!";
        QFile file("/home/nadia/bezie_and_triangulation/points"+eq+".txt");
        qDebug()<<file.exists();

        std::vector<K::Point_3> points;

                if (file.open(QIODevice::ReadOnly))
                {
                   QTextStream in(&file);
                   while (!in.atEnd())
                   {
                      QString line = in.readLine();
                      QStringList list = line.split(' ');
                      K::Point_3 a(QString(list.at(0)).toFloat(),QString(list.at(1)).toFloat(),QString(list.at(2)).toFloat());
                      points.push_back(a);

                   }
                   file.close();
                }

                greedyTriangulation(points);


                  //ui->label_3->setVisible(false);


        break;
    }
    case 1:{
        qDebug()<<"222!";
        Point_set points1;

         QString s("/home/nadia/bezie_and_triangulation/points"+eq+".txt");
         std::ifstream inn(s.toStdString());
         inn >> points1;

         auto output_mesh = surface_based_Delaunay_cache(points1);

             DelaunayTriangulation(output_mesh);

             std::ofstream ff (QString("/home/nadia/bezie_and_triangulation/points"+eq+".off").toStdString());
             ff << output_mesh;
             ff.close ();
        break;
}
    case 2:{
        qDebug()<<"333!";

        Point_set points1;

         QString s("/home/nadia/bezie_and_triangulation/points"+eq+".txt");
         std::ifstream inn(s.toStdString());
         inn >> points1;


         auto sm1 = surface_based_Delaunay_layered(points1);

            DelaunayTriangulation(sm1);

        break;
    }
    }

}

void MainWindow::on_pushButton_6_clicked()
{

    Curve* curve = new Bezier();
        curve->set_steps(100); // generate 100 interpolate points between the last 4 way points


        for(int i=0;i<ui->tableWidget->rowCount();i++){
             curve->add_way_point(Vector(ui->tableWidget->item(i,0)->text().toInt(),ui->tableWidget->item(i,1)->text().toInt(),ui->tableWidget->item(i,2)->text().toInt()));
        }

        qDebug() << "nodes: " << curve->node_count();
        qDebug() << "total length: " << curve->total_length();
        for (int i = 0; i < curve->node_count(); ++i) {
            qDebug()<< "node #" << i << ": " << QString::fromStdString(curve->node(i).toString()) << " (length so far: " << curve->length_from_starting_point(i) << ")";
        }


        QFile file("out09099.txt");
        if (file.open(QIODevice::WriteOnly | QIODevice::Text)){
           QTextStream out(&file);
           for(int i=0;i<curve->node_count();i++){
                out << curve->node(i).x<< " "<<curve->node(i).y<<" "<<curve->node(i).z << "\n";

           }
        }
        file.close();


        std::vector<K::Point_3> points;
       for(int i=0;i<curve->node_count();i++){
            K::Point_3 a(curve->node(i).x,curve->node(i).y,curve->node(i).z);
            points.push_back(a);
       }

        DT3 dt3(points.begin(), points.end());


           CGAL::DefaultColorFunctorT3 fcolor;
           CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>* ma= new CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>(nullptr, dt3, "Фигура из точек", false, fcolor);
           ma->show();

        delete curve;

           drow2();

}

void MainWindow::on_action_triggered()
{
    qDebug()<<"out!";
    QApplication::exit(0);
}

void MainWindow::on_actionAbout_triggered()
{
    qDebug()<<"About!";
    QMessageBox::about(this, "О программе", "Программа выполненна в рамках ВКР Прошутиной Н.А. М8О-411Б-17 МАИ 2021");

}

void MainWindow::on_action_3_triggered()
{
    QMessageBox::about(this, "Помощь", "В программе визаулизованы различные алгоритмы триангуляции");

}


void MainWindow::DelaunayTriangulation(CGAL::Surface_mesh<K::Point_3> output_mesh)
{

    CGAL::DefaultColorFunctorSM fcolor1;
    CGAL::SimpleSurfaceMeshViewerQt<CGAL::Surface_mesh<K::Point_3>,CGAL::DefaultColorFunctorSM>* m;
    m=new CGAL::SimpleSurfaceMeshViewerQt<CGAL::Surface_mesh<K::Point_3>,CGAL::DefaultColorFunctorSM>(nullptr,output_mesh, "Фигура из уравнения", false, fcolor1);
    m->show();
}

void MainWindow::greedyTriangulation(std::vector<K::Point_3> points)
{
    DT3 dt3(points.begin(), points.end());
    for(auto p:points){
        qDebug()<<"points:"<<p.x()<<p.y()<<p.z();

    }

       CGAL::DefaultColorFunctorT3 fcolor;

       CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>* ma= new CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>(nullptr, dt3, "Фигура из точек", false, fcolor);

       ma->show();
}

CGAL::Surface_mesh<K::Point_3> MainWindow::surface_based_Delaunay_cache(Point_set points1)
{

    std::vector<Facet> facets;
    CGAL::advancing_front_surface_reconstruction(points1.points().begin(),
                                                    points1.points().end(),
                                                    std::back_inserter(facets));

    std::vector<K::Point_3> vertices;
        vertices.reserve (points1.size());
        std::copy (points1.points().begin(), points1.points().end(), std::back_inserter (vertices));
        CGAL::Surface_mesh<K::Point_3> output_mesh;
        CGAL::Polygon_mesh_processing::polygon_soup_to_polygon_mesh (vertices, facets, output_mesh);
        return output_mesh;
}

CGAL::Surface_mesh<K::Point_3> MainWindow::surface_based_Delaunay_layered(Point_set points1)
{
    Reconstruction reconstruct (points1.points().begin(), points1.points().end());
    reconstruct.increase_scale(4);
    reconstruct.reconstruct_surface (Mesher (0.5));

      std::ofstream out (QString("out.off").toStdString());
        out << "OFF" << std::endl << points1.size() << " " << reconstruct.number_of_facets() << " 0" << std::endl;
        for (Point_set::iterator it = points1.begin(); it != points1.end(); ++ it)
          out << points1.point(*it) << std::endl;
        for (Reconstruction::Facet_iterator it = reconstruct.facets_begin();
             it != reconstruct.facets_end(); ++ it)
          out << "3 " << (*it)[0] << " " << (*it)[1] << " " << (*it)[2] << std::endl;

        CGAL::Surface_mesh<K::Point_3> sm1;
      std::ifstream in1(QString("out.off").toStdString());
       in1 >> sm1;

       return sm1;

}


