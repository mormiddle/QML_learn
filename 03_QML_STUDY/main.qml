import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MyRectangle {
        x:100
        y:50
        width: 200
        height: 100
        myTopMargin: 10
        myButtonMargin: 10
    }
}
