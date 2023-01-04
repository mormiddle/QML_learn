import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    CheckBox {
        tristate: true
        nextCheckState: function() {
            if (checkState === Qt.Unchecked)
                return Qt.Checked
            else if(checkState == Qt.Checked)
                return Qt.PartiallyChecked
            else
                return Qt.Unchecked
        }
    }


//    Column {
//          ButtonGroup {
//              id: childGroup
//              exclusive: false
//              checkState: parentBox.checkState
//          }

//          CheckBox {
//              id: parentBox
//              text: qsTr("Parent")
//              checkState: childGroup.checkState
//          }

//          CheckBox {
//              checked: true
//              text: qsTr("Child 1")
//              leftPadding: indicator.width
//              ButtonGroup.group: childGroup
//          }

//          CheckBox {
//              text: qsTr("Child 2")
//              leftPadding: indicator.width
//              ButtonGroup.group: childGroup
//          }
//      }




//    ButtonGroup {
//              id: childGroup
//              exclusive: true
//              //buttons: col.children
//          }

//    Column {
//        id:col
//        CheckBox {
//                 checked: true
//                 //tristate: true
//                 text: qsTr("First")
//                 ButtonGroup.group: childGroup
//             }
//             CheckBox {
//                 text: qsTr("Second")
//                 ButtonGroup.group: childGroup
//             }
//             CheckBox {
//                 checked: true
//                 text: qsTr("Third")
//                 ButtonGroup.group: childGroup
//             }
//    }


}
