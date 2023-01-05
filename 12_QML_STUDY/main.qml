import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        width: 50
        height: 50
        onClicked: {
            Popup.close()
        }
    }

    MyPopup {
        id: popup

    }

//第二个例外
//    Popup {
//        id: rect
//        z: 1
//        width: 200
//        height: 100
//        visible: true
//        background: Rectangle {
//            color: "black"
//        }
//    }

//    Popup {
//        id: rect2
//        width: 200
//        height: 100
//        x: 100
//        z: -1
//        background: Rectangle {
//            color: "blue"
//        }
//    }

//    Rectangle {
//        id: rect
//        z: 10000
//        width: 200
//        height: 100
//        color: "black"
//    }

//    //后面的控件z顺序大于前面的
//    //但是popup是个例外
//    //无论其他的控件z顺序是多少，popup的永远在最上层
//    //popup的z顺序，只对同为popup的控件有效
//    Popup {
//        id: rect2
//        z: -1
//        width: 200
//        height: 100
//        x: 100
//    }


//第一个例外
//    Rectangle {
//        width: 200
//        height: 100
//        color: "black"
//        visible: false
//        //子控件覆盖在父控件上，父控件visible为false，子控件即使是true，也无法显示
//        Rectangle {
//            width: 50
//            height: 50
//            color: "red"
//            visible: true
//        }
//        //但是popup是个例外,及时父控件是否显示对popup并不存在影响
//        Popup {
//            width: 50
//            height: 50
//            visible: true
//        }

//    }

//    Button {
//        width: 50
//        height: 50
//        onClicked: {
//            popup.open()
//        }
//    }

//    Popup {     //默认的popup类似于rectangle
//             id: popup
//             x: 100
//             y: 100
//             width: 200
//             height: 300
//             //默认不启动
//             //使用visible来显示，或者使用open函数
//             //visible: true
//         }
}
