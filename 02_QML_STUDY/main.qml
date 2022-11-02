import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        x: 100
        y: 20
        width: 100
        height: 50
        color: "black"

        //antialiasing: true    //抗锯齿
        //scale: 2      //放缩
        //rotation: 30  //旋转

    }


//    Rectangle{
//        width: 100
//        height: 50
//        color: "black"
//        //anchors.fill: parent //填充整个屏幕
//        //anchors.centerIn: parent  //屏幕居中
//        //anchors.horizontalCenter: parent.horizontalCenter  //水平顶部居中
//        //anchors.verticalCenter: parent.verticalCenter     //垂直左侧居中
//    }


//     Rectangle{
//         id: rect1
//         width: 100
//         height: 50
//         color: "black"
//     }

//     Rectangle{
//         id: rect2
//         width: 100
//         height: 50
//         anchors.left: rect1.right //设置相对位置
//         anchors.leftMargin: 20
//         color: "blue"
//     }

//     Rectangle{
//         id: rect3
//         width: 100
//         height: 50
//         anchors.top: rect1.bottom
//         anchors.topMargin: 20
//         color: "blue"
//     }




//    Rectangle{
//        x:100
//        y:100
//        width: 100
//        height: 50
//        color: "black"
//        focus: true

//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                console.log("on clicked")
//            }
//        }

//        Keys.onReturnPressed: {
//            console.log("on return pressed")

//        }

//    }

}
