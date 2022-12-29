import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")



    Rectangle {
        width: 480
        height: 320
        Rectangle {
            x: 30; y: 30
            width: 300; height: 240
            color: "lightsteelblue"

            MouseArea {
                anchors.fill: parent
                drag.target: parent;
                drag.axis: "XAxis"
                drag.minimumX: 30
                drag.maximumX: 150
                drag.filterChildren: true

                Rectangle {
                    color: "yellow"
                    x: 50; y : 50
                    width: 100; height: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log("Clicked")
                    }
                }
            }
        }
    }

//    Rectangle {
//        id: container
//        width: 600; height: 200

//        Rectangle {
//            id: rect
//            width: 50; height: 50
//            color: "red"
//            opacity: (600.0 - rect.x) / 600

//            MouseArea {
//                anchors.fill: parent
//                drag.target: rect
//                drag.axis: Drag.XAxis
//                drag.minimumX: 0
//                drag.maximumX: container.width - rect.width
//            }
//        }
//    }



//    MouseArea {
//        id: mouseArea
//        width: 200
//        height: 200
//        acceptedButtons: Qt.LeftButton | Qt.RightButton
//        hoverEnabled: true
//        cursorShape: Qt.CrossCursor
//        Rectangle {
//            anchors.fill: parent
//            color: "black"
//        }

//        onHoveredChanged: {
//            console.log("onHoveredChanged")
//        }

//        onClicked: {
//            console.log("clicked")
//        }

//        onContainsMouseChanged: {
//            console.log("onContainsMouseChanged", containsMouse)
//        }

//        onContainsPressChanged: {
//            console.log("onContainsPressChanged", containsPress)
//        }


//        onPressed: {
//            var ret = pressedButtons & Qt.LeftButton
//            var ret2 = pressedButtons & Qt.RightButton
//            console.log(ret ? "left" : ret2 ? "right" : "other")
//            console.log("pressed")
//        }
//        onReleased: {
//            console.log("released")
//        }

    }
