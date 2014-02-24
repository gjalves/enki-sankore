#ifndef UBSHAPEEDITABLE_H
#define UBSHAPEEDITABLE_H

#include "UBAbstractGraphicsItem.h"
#include "UBEditable.h"

class UBAbstractEditableGraphicsShapeItem : public UBAbstractGraphicsItem, public UBAbstractEditable
{
public:
    UBAbstractEditableGraphicsShapeItem(QGraphicsItem *parent = 0);

protected:
    virtual void mousePressEvent(QGraphicsSceneMouseEvent *event);
    virtual void mouseMoveEvent(QGraphicsSceneMouseEvent *event);
    virtual void focusOutEvent(QFocusEvent *event);

    virtual void onActivateEditionMode();

    int mMultiClickState;
};

#endif // UBSHAPEEDITABLE_H