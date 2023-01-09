import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    signal  testSig(string s, int value)

    function func(ss, ii){
        console.log(ss,ii)
    }

    Button {
        width: 50
        height: 50
        onClicked: {
            testSig("zhangsan", "99")
        }
    }
    Connections {
        target: window
//        onTestSig: {
//            console.log(s, value)
//        }
        function onTestSig(str,iValue) {
            console.log(str, iValue)
        }
    }



//    Component.onCompleted: {
//        testSig.connect(func)
//    }
}
