#include <QApplication>
#include <QGuiApplication>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    MainWindow mw;

    if (!mw.load())
        return -1;

    return app.exec();
}
