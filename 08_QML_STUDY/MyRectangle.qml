import QtQuick 2.0

Rectangle {
    id:borderRect
    property int myTopMargin: 0
    property int myButtonMargin: 0
    property real myReal: 1.0
    property string myString: "black"
    property color myColor: "black"
    property url myUrl: "value"

    property Component myComponent
    property Rectangle myRect

    property var myVar: ["123"]
    property list<Rectangle> myList

    readonly property int rectWidth: width

    property alias newInnerRect: innerRect
    property alias newInnerRectColor: innerRect.color

    width: 100
    height: 100
    color: "black"
    Rectangle {
        Loader {
            id: loader
            sourceComponent: myComponent
        }
        id: innerRect
        color: "blue"
        anchors.fill: parent
        anchors.topMargin: myTopMargin
        anchors.bottomMargin: myButtonMargin
        anchors.leftMargin: 0
        anchors.rightMargin: 0
    }
}
