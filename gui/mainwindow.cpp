#include <QQmlProperty>

#include "standbyview.h"
#include "mainview.h"
#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QObject(parent),
    _qml(nullptr),
    _powered(false)
{
    this->_views = {
        new StandbyView(),
        new MainView(),
    };
}

MainWindow::~MainWindow()
{
    for (AbstractView *view : this->_views) {
        delete view;
    }
}

bool MainWindow::load()
{
    this->_engine.load(QUrl(QStringLiteral("qrc:/App.qml")));
    if (this->_engine.rootObjects().isEmpty())
        return false;
    this->_qml = qobject_cast<QQuickWindow*>(this->_engine.rootObjects().value(0));
    connect(this->_qml, SIGNAL(powerPressed()), this, SLOT(onPowerPressed()));
    return true;
}

void MainWindow::onPowerPressed()
{
    this->_powered = !this->_powered;
    this->updateActiveSource();
}

void MainWindow::updateActiveSource()
{
    AbstractView *view;
    if (this->_powered) {
        this->_activeView = VIEW_MAIN;
    } else {
        this->_activeView = VIEW_STANDBY;
    }

    view = this->activeView();
    QObject *loader = qvariant_cast<QQuickItem*>(QQmlProperty::read(this->_qml, "loader"));
    loader->setProperty("source", "qrc:///" + view->source());
    view->postLoad(qvariant_cast<QQuickItem*>(QQmlProperty::read(loader, "item")));
}
