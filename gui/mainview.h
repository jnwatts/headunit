#ifndef MAINVIEW_H
#define MAINVIEW_H

#include "abstractview.h"

class MainView : public AbstractView
{
public:
    MainView();

    void postLoad(QQuickItem *item);

    QString source() { return "Main.qml"; }
};

#endif // MAINVIEW_H
