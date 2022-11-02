import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    property int myValu: 0

    minimumHeight: 400
    minimumWidth: 300
    maximumHeight: 600
    maximumWidth: 600//修改最大和最小的长宽

    //opacity: 0.5 //设置窗口透明度 0-1

    Button{
        id: btn1
        width: 50
        height: 50
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
        id: btn2
        x : 100
        width: 50
        height: 50
        background: Rectangle{
            border.color: btn2.focus ? "blue" : "black"
        }
        onClicked: {
            console.log("btn2 clicked")
        }
        Keys.onRightPressed: {
            btn1.focus = true
        }
    }

    onActiveFocusItemChanged: {
        console.log("active focus item changed", activeFocusItem)
    }
}
