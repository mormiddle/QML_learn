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
            id: btn
            width: 100
            height: 50
            background: Rectangle {
                anchors.fill: parent
                border.color: btn.activeFocus ? "blue" : "black"
            }

//            signal btnSig(int value)
        signal leftBtnPressed()
        Keys.onRightPressed: {
            leftBtnPressed()
        }
        }
    }

    MyComponent {
        com1: com
        com2: com
    }
}
