import QtQuick 2.5
import QtQuick.Controls 2.5

ListView {
    id:list
     width: 180; height: 200

//     model: 3   //数字，也可以填[] list    //控制了所有的数据

     model: ListModel {
         ListElement {
             name: "Bill Smith"
             number: "555 3264"
             myValue: 111
             size: "small"
         }
         ListElement {
             name: "John Brown"
             number: "555 8426"
             myValue: 222
             size: "medium"
         }
         ListElement {
             name: "Sam Wise"
             number: "555 0473"
             myValue: 333
             size: "large"
         }
     }
     spacing: 20    //每一项之间的距离
     highlight: Rectangle {
         color: "grey"
     }

     section.property: "size"
     section.criteria: ViewSection.FullString
     section.delegate: sectionHeading



 }
