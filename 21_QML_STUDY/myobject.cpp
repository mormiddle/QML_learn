#include "myobject.h"

#include <QDebug>
#include <qdebug.h>

MyObject::MyObject(QObject *parent)
    : QObject{parent}
{

}

MyObject *MyObject::getInstance()
{
    static MyObject * obj = new MyObject();
    return obj;
}

int MyObject::iValue() const
{
    return m_iValue;
}

void MyObject::setIValue(int newIValue)
{
    if (m_iValue == newIValue)
        return;
    m_iValue = newIValue;
    emit iValueChanged();
}

QString MyObject::sStirng() const
{
    return m_sStirng;
}

void MyObject::setSStirng(const QString &newSStirng)
{
    if (m_sStirng == newSStirng)
        return;
    m_sStirng = newSStirng;
    emit sStirngChanged();
}

void MyObject::func()
{
    qDebug() << __FUNCTION__;
}

void MyObject::cppSlot(int i, QString s)
{
    qDebug() << __FUNCTION__ << " " << i << " " << s;
}
