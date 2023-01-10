import QtQuick 2.15
import QtQuick.Window 2.15
import MyObj 1.0
import QtQuick.Controls 2.5

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    signal qmlSig(int i, string s)

    Button {
        width: 100
        height: 50
        onClicked: {
            qmlSig(10, "zhangsan")
        }
    }

    MyObject {
        id: myobj

    }

//    Connections {
//        target: window
//        function onQmlSig(i,s) {
//            myobj.cppSlot(i,s)
//        }
//    }

    Component.onCompleted: {
        qmlSig.connect(myobj.cppSlot)
    }
}
