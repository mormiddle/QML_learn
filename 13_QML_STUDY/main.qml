import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Repeater {
//            model: 3    //模型，数字的话，表示有几个模型
            model: ["Button", "Rectangle", "MouseArea"] //数量还是3 读取list的大小
            Button {
                y: index * 50
                width: 100; height: 40
                text: modelData //使用model中的属性
            }
        }
}
