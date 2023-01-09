import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //foucs的使用
    Button {
        id: btn
        width: 100
        height: 50
        focus: false
        background: Rectangle {
            anchors.fill: parent
            border.color: btn.focus ? "blue" : "black"
        }
        onFocusChanged: {
            console.log("focus: ", focus)
        }
        Component.onCompleted: {
            console.log("foucsPolicy: ", foucsPolicy)
        }
    }
}
