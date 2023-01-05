import QtQuick 2.0
import QtQuick.Controls 2.5

Popup {
    id: popup
    x: 100
    y: 100
    width: 400
    height: 300
    visible: true
    //closePolicy默认的关闭逻辑是，点击外接和esc都会关闭popup
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
    //模态对话框：不关闭这个对话框，无法对系统的其他内容进行操作
    modal: true
    //dim控制非模态对话框情况下的背景色是否需要设置
    //dim: true
    //enter和exit，打开和关闭时的动画效果设置
    enter: Transition { //打开的时候
        NumberAnimation {
            property: "opacity";
            from: 0.0;
            to: 1.0
            duration: 1000
        }
    }
    exit: Transition {
        NumberAnimation {
            property: "opacity";
            from: 1.0;
            to: 0.0
            duration: 1000
        }
    }

    contentItem: Rectangle {
        anchors.fill: parent
        Text {
            id: txt
            anchors.fill: parent
            text: qsTr("Message Box Area!!!")
            font.pixelSize: 26
            wrapMode: Text.WordWrap
        }
    }

    Button {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30
        text: "cancel"
    }

    Button {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 230
        text: "ok"
    }

    //如果是模态框用Overlay.modal，如果是非模态框用Overlay.modalless
    Overlay.modal: Rectangle {
        anchors.fill: parent
//        color: "lightsteelblue" //英语设置颜色
//        color: "#FF0000"    //  RGB的16进制设置颜色
        color: "#33000000"  //RGBA ARGB 该颜色为透明色

        //如果想在模态框的情况下，在背景中添加一个可以点击的按钮
        Popup {
            width: parent.width
            height: 80
            closePolicy: Popup.NoAutoClose
            visible: true
            background: Rectangle {
//                color: "transparent"
                color: "grey"
            }
            Button {
                width: 50
                height: 50
                anchors.right: parent.right
            }
        }

    }

//    Overlay.modalless: Rectangle {
//        anchors.fill: parent
//        color: "lightsteelblue"
//    }
}
