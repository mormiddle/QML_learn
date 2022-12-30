import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component {
        id: com
        Button {
            width: 50
            height: 50
        }
    }

    MyRectangle {
        myComponent: com
        myTopMargin: 10
        Component.onCompleted: {
            newInnerRectColor = "yellow"
        }
    }
}
