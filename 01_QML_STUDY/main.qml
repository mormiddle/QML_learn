import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {//root 空间 父窗口是屏幕
    visible: true
    width: 400
    height: 300
    title: qsTr("Hello World")
    //x:
    //y:  //修改控件的坐标

    minimumWidth: 400
    minimumHeight: 300
    maximumWidth: 500
    maximumHeight: 1000//修改最小和最大的宽度和高度

    //opacity: 0.5 //修改控件透明度

    Button{
        id:btn1
        width: 50
        height: 50
        focus: true
        objectName: "btn1"
        background: Rectangle{
            border.color: btn1.focus ? "blue" : "black"
        }
        onClicked: {
            console.log("btn1 clicked")
        }
        Keys.onRightPressed: {
            btn2.focus = true
        }
    }

    Button{
        id:btn2
        x:100
        width: 50
        height: 50
        objectName: "btn2"
        background: Rectangle{
            border.color: btn2.focus ? "blue" : "black"
        }
        onClicked: {
            console.log("btn2 clicked")
        }
        Keys.onLeftPressed: {
            btn1.focus = true
        }
    }
    onActiveFocusItemChanged: {
        console.log("active focus item changed ", activeFocusItem, activeFocusItem.objectName)
    }
}


