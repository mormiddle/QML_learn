import QtQuick 2.0
import QtQuick.Controls 2.5

Rectangle {

    width: 200
    height: 100
    color: "blue"
    property alias attr: attributes

    QtObject {
        id: attributes
        property int textValue: 0
    }

    Component.onCompleted: {
        console.log(attributes.textValue)
    }
}
