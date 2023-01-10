#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "myobject.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    //全局对象 上下文对象
//    QQmlContext* context = engine.rootContext();
//    context->setContextProperty("MyObject", MyObject::getInstance());
    qmlRegisterType<MyObject>("MyObj",1 ,0, "MyObject");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    //engine 加载完成之后 load以后
    auto list =  engine.rootObjects();

    return app.exec();
}
