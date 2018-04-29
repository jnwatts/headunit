#ifndef ABSTRACTVIEW_H
#define ABSTRACTVIEW_H

#include <QObject>
#include <QQuickItem>

class AbstractView : public QObject
{
    Q_OBJECT
public:
    explicit AbstractView(QObject *parent = nullptr);
    virtual ~AbstractView() = default;

    virtual void postLoad(QQuickItem *item) { Q_UNUSED(item); }

    virtual QString source() = 0;
};

#endif // ABSTRACTVIEW_H
