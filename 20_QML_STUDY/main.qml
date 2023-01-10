import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: SCREEN_WIDTH
    height: 480
    title: qsTr("Hello World")

    MyRectangle {
        Component.onCompleted: {
            attr.textValue = 200
            console.log(attr.textValue)
        }
    }

}
