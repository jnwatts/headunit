#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTouchEvent>
#include <QDebug>
#include <QQuickWindow>
#include <QQmlApplicationEngine>
#include <QVector>
#include "abstractview.h"

class MainWindow : public QObject
{
    Q_OBJECT

    enum Views {
        VIEW_STANDBY = 0,
        VIEW_MAIN,
        VIEW_MAX,
    };

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    bool load();

private slots:
    void onPowerPressed();

private:
    void updateActiveSource();
    AbstractView *activeView() { return this->_views.at(this->_activeView); }

    QQmlApplicationEngine _engine;
    QQuickWindow *_qml;
    QVector<AbstractView *> _views;
    int _activeView;

    bool _powered;
};

#endif // MAINWINDOW_H
