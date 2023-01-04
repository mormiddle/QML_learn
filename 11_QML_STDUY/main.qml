import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor  //鼠标移动到链接上，变成手的形状
        }

        onLinkActivated: {  //点击链接会触发
            console.log(link + " link activated")
        }
        onLinkHovered: {
            console.log("hover", link)
        }
        onHoveredLinkChanged: {
            console.log("hover link changed: ", hoveredLink)
        }

    }


//    Rectangle {
//        id:rect
//        width: 50
//        height: 50
//        border.color: "black"

//        Text {
//            id: txt
//            text: qsTr("text text text text text")
//            wrapMode: Text.WordWrap
//            anchors.fill: parent
//            elide: Text.ElideRight
//        }
//    }

//    Column {
//         Text {
//             font.pointSize: 24
//             text: "<b>Hello</b> <i>World!</i>"
//         }
//         Text {
//             font.pointSize: 24
//             textFormat: Text.RichText  //富文本
//             text: "<b>Hello</b> <i>World!</i>"
//         }
//         Text {
//             font.pointSize: 24
//             textFormat: Text.PlainText //纯文本
//             text: "<b>Hello</b> <i>World!</i>"
//         }
//         Text {
//             font.pointSize: 24
//             textFormat: Text.MarkdownText  //markdown语法
//             text: "**Hello** *World!*"
//         }
//     }

//    Text {
//        id: txt
//        text: qsTr("MY QML")
//        font.bold: true             //粗体
//        font.family: "Courier New"  //字体
//        font.italic: true           //斜体
//        font.letterSpacing: 10      //字母间隔
//        font.pixelSize: 36          //字体 像素为单位
//        //font.pointSize: 36        //字体 磅为单位
//        font.underline: true        //下划线
//    }

//    Rectangle {
//        width: 50
//        height: 50
//        anchors.centerIn: parent
//        border.color: "black"
//        Text {
//            id: txt
//            elide: Text.ElideRight
//            anchors.fill: parent
//            text: qsTr("text123123135123123123123")
//        }
//    }
}
