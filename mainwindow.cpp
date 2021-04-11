#include "mainwindow.h"
#include "ui_mainwindow.h"


#include <QCoreApplication>
#include <QApplication>
#include <QProcess>
#include <QStringList>
#include <QThread>
#include <QtConcurrent/QtConcurrent>
#include <QFutureWatcher>


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


#include <fstream>
typedef CGAL::Simple_cartesian<double>                       Kernel;
typedef Kernel::Point_3                                      Point;
typedef CGAL::Surface_mesh<Point>                            Mesh;



typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef CGAL::Delaunay_triangulation_3<K>                   DT3;
typedef CGAL::Creator_uniform_3<double,K::Point_3>          Creator;


typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef CGAL::Delaunay_triangulation_2<K> Triangulation;
typedef Triangulation::Point Point2;



MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
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

        QFutureWatcher<void>* watcher = new QFutureWatcher<void>;;

        connect (watcher,&QFutureWatcher<void>::finished,[=](){draw_eq(eq);});

        watcher->setFuture(QtConcurrent::run([&]() {
            QStringList arguments {"/home/nadia/bezie_and_triangulation/eq.py", eq};
            QProcess p;
        p.start("python", arguments);
        p.execute("sudo python", arguments);
        p.waitForFinished();
       // qDebug()<<p.readAll()<<p.arguments();
        qDebug()<<"end!";

            }));

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


}
