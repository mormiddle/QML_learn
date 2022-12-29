import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: banner
        width: 150; height: 100; border.color: "black"

        Column {
            anchors.centerIn: parent
            Text {
                id: code
                text: "Code less."
                opacity: 0.01
            }
            Text {
                id: create
                text: "Create more."
                opacity: 0.01
            }
            Text {
                id: deploy
                text: "Deploy everywhere."
                opacity: 0.01
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: playbanner.start()
        }

        SequentialAnimation {
            id: playbanner
            running: false
            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
        }
    }




//    Rectangle {
//        width: 75; height: 75; radius: width
//        id: ball
//        color: "salmon"

//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                ball.x += 50
//                ball.y += 40
//            }
//        }
//        Behavior on x {
//            NumberAnimation {
//                id: bouncebehavior
//                easing {
//                    type: Easing.OutElastic
//                    amplitude: 1.0
//                    period: 0.5
//                }
//            }
//        }
//        Behavior on y {
//            animation: bouncebehavior
//        }
//        Behavior {
//            ColorAnimation { target: ball; duration: 100 }
//        }
//    }



//    Rectangle {
//        width: 75; height: 75
//        id: button
//        state: "RELEASED"

//        MouseArea {
//            anchors.fill: parent
//            onPressed: button.state = "PRESSED"
//            onReleased: button.state = "RELEASED"
//        }

//        states: [
//            State {
//                name: "PRESSED"
//                PropertyChanges { target: button; color: "lightblue"}
//            },
//            State {
//                name: "RELEASED"
//                PropertyChanges { target: button; color: "lightsteelblue"}
//            }
//        ]

//        transitions: [
//            Transition {
//                from: "PRESSED"
//                to: "RELEASED"
//                ColorAnimation { target: button; duration: 100}
//            },
//            Transition {
//                from: "RELEASED"
//                to: "PRESSED"
//                ColorAnimation { target: button; duration: 100}
//            }
//        ]
//    }



//    Rectangle {
//        width: 100; height: 100
//        color: "red"

//        SequentialAnimation on color {
//                  ColorAnimation { to: "yellow"; duration: 1000 }
//                  ColorAnimation { to: "blue"; duration: 1000 }
//              }
//    }



//    Rectangle {
//        id: rect
//        width: 100; height: 100
//        color: "red"

//        PropertyAnimation on x {    //修改当前控件的位置
//            to: 100
//            duration: 1000
//        }
//        PropertyAnimation on y {
//            to: 100
//            duration: 1000
//        }
//        PropertyAnimation on width {
//            to: 300
//            duration: 2000
//        }
//    }


//    Rectangle {
//        id: flashingblob
//        width: 75; height: 75
//        color: "blue"
//        opacity: 1.0

//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                animateColor.start()
//                animateOpacity.start()
//                animateWidth.start()
//            }
//        }

//        PropertyAnimation {
//            id: animateColor;
//            target: flashingblob;
//            properties: "color";
//            to: "green";
//            duration: 1000      //持续时间
//        }

//        NumberAnimation {
//            id: animateOpacity
//            target: flashingblob
//            properties: "opacity"
//            from: 0.99
//            to: 1.0
//            duration: 2000      //持续时间
//       }

//        NumberAnimation {
//            id: animateWidth
//            target: flashingblob
//            properties: "width"
//            from: 75
//            to: 150
//            duration: 2000      //持续时间
//       }
//    }







//    Rectangle {
//        id: root
//        width: 100; height: 100
//        state: "normal"
//        states: [
//            State {
//                name: "normal"
//                PropertyChanges { target: root; color: "black" }
//            },
//            State {
//                name: "red_color"
//                PropertyChanges { target: root; color: "red"; width:200 }
//            },
//            State {
//                name: "blue_color"
//                PropertyChanges { target: root; color: "blue"; height:200 }
//            }
//        ]
//        MouseArea {
//            anchors.fill: parent
//            onPressed: {
//                root.state = "red_color"
//            }
//            onReleased: {
//                root.state = "blue_color"
//            }
//        }
//    }
}
