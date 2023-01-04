import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: control
        text: qsTr("Button")
        contentItem: Text {
            text: control.text
            font.pixelSize: 18
            font.bold: true
            font.italic: true
        }
    }

//    Button {
//        id: btn
//        width: 150
//        height: 100
//        background: Rectangle {
//            anchors.fill: parent
//            color: btn.checked | btn.down ? "blue" : "black"
//        }
//    }

//    ToolBar {
//        Row {
//            anchors.fill: parent
//            ToolButton {
//                text: qsTr("‹")
//                onClicked: stack.pop()
//            }
//            Label {
//                text: "Title"
//                elide: Label.ElideRight
//                horizontalAlignment: Qt.AlignHCenter
//                verticalAlignment: Qt.AlignVCenter

//            }
//            ToolButton {
//                text: qsTr("⋮")
//                onClicked: menu.open()
//            }
//        }
//    }


//    TabBar {
//        TabButton {
//            text: qsTr("Home")
//        }
//        TabButton {
//            text: qsTr("Discover")
//        }
//        TabButton {
//            text: qsTr("Activity")
//        }
//    }

//    Column {
//         Switch {
//             text: qsTr("Wi-Fi")
//         }
//         Switch {
//             text: qsTr("Bluetooth")
//         }
//     }

//    Column {
//         RadioButton {
//             checked: true
//             text: qsTr("First")
//         }
//         RadioButton {
//             text: qsTr("Second")
//         }
//         RadioButton {
//             text: qsTr("Third")
//         }
//     }


//    DelayButton {
//        width: 150
//        height: 50
//        delay: 3000
//    }
}
