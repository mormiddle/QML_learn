import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

//    Component {
//        id: com
//        Rectangle {
//            id: rect
//            width: 200
//            height: 100
//            color: "black"
//            Component.onCompleted: {        //窗口创建的时候
//                console.log("onCompleted",width,height,color)
//            }
//            Component.onDestruction: {      //窗口销毁的时候
//                console.log("onDestruction")
//            }
//        }
//    }

    Component {
        id: com
        Image {
            id: img
            source: "/logo.png"
            width: 200
            height: 200
        }


    }


    Loader {
        id: loader
        sourceComponent: com
        onStatusChanged: {
            console.log("status:",status)
        }
    }


    Button {
        width: 50
        height: 50
        x: 200
        onClicked: {
//            loader.item.width = 50
//            loader.item.height = 50
//            loader.item.color = "red"
//            loader.sourceComponent = null
        }
    }





}
