#include "mainview.h"

MainView::MainView()
{

}

void MainView::postLoad(QQuickItem *item)
{
    item->setProperty("selectedSource", 0);
    //TODO: get last selected source from backend
}
