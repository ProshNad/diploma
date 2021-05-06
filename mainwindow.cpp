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


typedef CGAL::Scale_space_surface_reconstruction_3<Kernel>    Reconstruction;
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

typedef CGAL::Scale_space_reconstruction_3::Jet_smoother<Kernel>              Smoother;
typedef CGAL::Scale_space_reconstruction_3::Advancing_front_mesher<Kernel>    Mesher;

typedef std::array<std::size_t, 3> Facet; // Triple of indices

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->label_3->setVisible(false);
   // ui->pushButton_6->setVisible(false);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    std::vector<K::Point_3> points;
      CGAL::Random_points_in_sphere_3<K::Point_3,Creator> g(3.0);
      std::copy_n(g, ui->spinBox->value(), std::back_inserter(points));

      DT3 dt3(points.begin(), points.end());

     //CGAL::draw(dt3); - не использовать никогда!!!!!

      CGAL::DefaultColorFunctorT3 fcolor;
      CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>* ma= new CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>(nullptr, dt3, "Фигура из случайных точек", false, fcolor);
      ma->show();
}

void MainWindow::on_pushButton_2_clicked()
{
    QString fileName = QFileDialog::getOpenFileName(this,
                                QString::fromUtf8("Открыть файл с набором точек"),
                                QDir::currentPath());


            Mesh sm1;
          std::ifstream in1(fileName.toStdString());
           in1 >> sm1;

           CGAL::DefaultColorFunctorSM fcolor;
           CGAL::SimpleSurfaceMeshViewerQt<Mesh,CGAL::DefaultColorFunctorSM>* m;
           m=new CGAL::SimpleSurfaceMeshViewerQt<Mesh,CGAL::DefaultColorFunctorSM>(nullptr,sm1, "Фигура из файла", false, fcolor);
           m->show();


}


void MainWindow::on_pushButton_4_clicked()//добавить точку
{
    ui->tableWidget->insertRow(ui->tableWidget->rowCount());//"Точка №"+QString::number(ui->tableWidget->rowCount()));

    //(ui->tableWidget->rowCount()


}

void MainWindow::on_pushButton_3_clicked()//нарисовать из точек
{


     std::vector<K::Point_3> points;
    for(int i=0;i<ui->tableWidget->rowCount();i++){
         K::Point_3 a(ui->tableWidget->item(i,0)->text().toInt(),ui->tableWidget->item(i,1)->text().toInt(),ui->tableWidget->item(i,2)->text().toInt());
         points.push_back(a);
    }

     DT3 dt3(points.begin(), points.end());


        CGAL::DefaultColorFunctorT3 fcolor;
        CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>* ma= new CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>(nullptr, dt3, "Фигура из точек", false, fcolor);
        ma->show();

}

void MainWindow::on_pushButton_5_clicked()//нарисовать уравнение
{

        QString eq = ui->lineEdit->text();
        ui->label_3->setVisible(true);

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





}

void MainWindow::draw_eq(QString eq)
{


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
                  //qDebug()<<list.at(0)<<" "<<list.at(1)<<" "<<list.at(2);
                  K::Point_3 a(QString(list.at(0)).toFloat(),QString(list.at(1)).toFloat(),QString(list.at(2)).toFloat());
                  points.push_back(a);

               }
               file.close();
            }




            DT3 dt3(points.begin(), points.end());


               CGAL::DefaultColorFunctorT3 fcolor;

               CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>* ma= new CGAL::SimpleTriangulation3ViewerQt<DT3, CGAL::DefaultColorFunctorT3>(nullptr, dt3, "Фигура из точек", false, fcolor);
               ma->show();

              ui->label_3->setVisible(false);













              Point_set points1;

               QString s("/home/nadia/bezie_and_triangulation/points"+eq+".txt");
               std::ifstream inn(s.toStdString());
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

                   std::ofstream ff (QString("/home/nadia/bezie_and_triangulation/points"+eq+".off").toStdString());
                   ff << output_mesh;
                   ff.close ();
}

void MainWindow::on_pushButton_6_clicked()
{


    Point_set points;

     QString s("/home/nadia/bezie_and_triangulation/pointsx*x+y*y+z*y*x+1.txt");
     std::ifstream inn(s.toStdString());
     inn >> points;




     std::vector<Facet> facets;
     CGAL::advancing_front_surface_reconstruction(points.points().begin(),
                                                     points.points().end(),
                                                     std::back_inserter(facets));


     std::vector<K::Point_3> vertices;
         vertices.reserve (points.size());
         std::copy (points.points().begin(), points.points().end(), std::back_inserter (vertices));
         CGAL::Surface_mesh<K::Point_3> output_mesh;
         CGAL::Polygon_mesh_processing::polygon_soup_to_polygon_mesh (vertices, facets, output_mesh);
         std::ofstream f ("outttt.off");
         f << output_mesh;
         f.close ();

}
