import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: btn
        width: 150
        height: 50
        autoRepeat: true
        autoRepeatDelay: 3000
        autoRepeatInterval: 1000
        background: Rectangle {
            anchors.fill: btn
            color: {
                if(btn.pressed) {
                    return "green"
                }
                else {
                    return "blue"
                }
            }
        }
    }

//    Button {
//        id: btn
//        width: 50
//        height: 50
//        autoRepeat: true
//        autoRepeatDelay: 3000
//        autoRepeatInterval: 1000
//        onClicked: {
//            console.log("clicked")
//        }

//        onPressed: {
//            console.log("pressed")
//        }

//        onReleased: {
//            console.log("released")
//        }
//    }




//    Button {
//        id: btn
//        width: 50
//        height: 50
//        autoExclusive: true
//        checkable: true
//    }

//    Button {
//        id: btn2
//        width: 50
//        height: 50
//        x: 60
//        autoExclusive: true
//        checkable: true
//    }

//    Button {
//        id: btn3
//        width: 50
//        height: 50
//        x: 120
//        autoExclusive: true
//        checkable: true
//    }

}
