#ifndef STANDBY_H
#define STANDBY_H

#include "abstractview.h"

class StandbyView : public AbstractView
{
public:
    StandbyView();

    QString source() { return "Standby.qml"; }
};

#endif // STANDBY_H
