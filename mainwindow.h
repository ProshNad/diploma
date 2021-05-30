#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#define CGAL_USE_BASIC_VIEWER


#include <QMainWindow>
#include <QThread>
#include <QDebug>
#include <QProcess>
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
#include <CGAL/Point_set_3.h>

#include <fstream>
typedef CGAL::Simple_cartesian<double>                       Kernel;
typedef Kernel::Point_3                                      Point;
typedef CGAL::Surface_mesh<Point>                            Mesh;



typedef CGAL::Exact_predicates_inexact_constructions_kernel K;
typedef CGAL::Delaunay_triangulation_3<K>                   DT3;
typedef CGAL::Creator_uniform_3<double,K::Point_3>          Creator;


typedef CGAL::Delaunay_triangulation_2<K> Triangulation;
typedef Triangulation::Point Point2;

typedef CGAL::Point_set_3<K::Point_3> Point_set;



namespace Ui {
class MainWindow;
}


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

    void on_pushButton_4_clicked();

    void on_pushButton_3_clicked();

    void on_pushButton_5_clicked();
    void draw_eq(QString eq);

    void on_pushButton_6_clicked();

    void on_action_triggered();

    void on_actionAbout_triggered();

    void on_action_3_triggered();

    void DelaunayTriangulation(CGAL::Surface_mesh<K::Point_3> output_mesh);
    void greedyTriangulation(std::vector<K::Point_3> points);
    CGAL::Surface_mesh<K::Point_3> surface_based_Delaunay_cache(Point_set points1);/* поверхностный алгоритм реконструкции поверхности Делоне,
                                                               который последовательно выбирает треугольники, то есть использует ранее выбранные
                                                               треугольники для выбора нового треугольника для продвижения вперед. На каждом шаге
                                                               продвижения выбирается наиболее правдоподобный треугольник, и выбранные треугольники
                                                               создают ориентируемую триангулированную поверхность многообразия.*/
    CGAL::Surface_mesh<K::Point_3> surface_based_Delaunay_layered(Point_set points1);/*Триангулированная поверхностная сетка создается путем сначала
                                                              *  вычисления набора точек в грубом масштабе, затем построения
                                                              * сетки из точек, установленных в этом масштабе, и, наконец, возврата
                                                              * точек сетки к их исходному масштабу.*/


private:
    Ui::MainWindow *ui;

};

#endif // MAINWINDOW_H
