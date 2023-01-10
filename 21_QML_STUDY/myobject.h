#ifndef MYOBJECT_H
#define MYOBJECT_H

#include <QObject>
#include <QtQml>

class MyObject : public QObject
{
    Q_OBJECT

   QML_ELEMENT

public:
    explicit MyObject(QObject *parent = nullptr);
    static MyObject * getInstance();
    int iValue() const;
    void setIValue(int newIValue);

    QString sStirng() const;
    void setSStirng(const QString &newSStirng);

    Q_INVOKABLE void func();

public slots:
    void cppSlot(int i, QString s);

private:
    int m_iValue;
    QString m_sStirng;

    Q_PROPERTY(int iValue READ iValue WRITE setIValue NOTIFY iValueChanged)

    Q_PROPERTY(QString sStirng READ sStirng WRITE setSStirng NOTIFY sStirngChanged)

signals:

    void iValueChanged();
    void sStirngChanged();
};

#endif // MYOBJECT_H
