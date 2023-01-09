# _QML学习_

## 第四课 states和transition

- `states`设置状态，使用`state`和`name`来设置状态
- `PropertyAnimation`和`NumberAnimation`来设置动画
- `duration`设置延迟
- `SequentialAnimation`按顺序显示动画
- `transitions`给`states`变化添加过度动画
- `Behavior`针对某个值的变化，作出对应的行为

## 第五课 component和loader

- `Component.onCompleted`//窗口创建的时候加载
- `Component.onDestruction`//窗口销毁的时候加载
- `Component`自定义空间，`Loader`来加载控件
- 可以使用`loader.sourceComponent = null`对`loader`中的控件进行析构
- 如果想在控价加载完成之后，依然对控件进行属性修改，可以使用`item`
  如`loader.item.width = 50`
- 加载图片使用`Image`
- 使用动图`AnimatedImage`

## 第六课 MouseArea

- `MouseArea`默认是左键，如果要接受左右键使用`acceptedButtons: Qt.LeftButton | Qt.RightButton`
- 如果想要知道按下的是哪个按键，使用`pressedButtons`
   `var ret = pressedButtons & Qt.LeftButt `
- 判断鼠标是否在`MouseArea`区域内，使用`containsMouse`和`containsPress`
- 其中`containsMouse`使用的前提是`hoverEnabled = true`，否则其效果和`containsPress`相同，即鼠标在区域内点击时，才会触发
- 在区域内，变成一个十字形的光标
- 拖动区域中的控件，使用`drag`
- `drag.filterChildren`子控件继承了父控件拖动的属性

## 第七课 Button

- `autoExclusive`控制按钮排他
- `autoRepeat`在按住按键时，可以不断触发`clicked`，`pressed`和`released`
- `autoRepeatDelay`按压按键多少秒之后触发三个状态
- `autoRepeatInterval`触发状态之后，每多少秒重复触发状态
- `button`的样式很固定，使用`background: Rectangle`，创建一个`rectangle`控件来改变`button`

## 第八课 Property

- `property`后面可以直接用`Component`等组件，调用之后，传什么样的`Component`就出现什么样的`Component`，实现了一个动态调用的过程
-  即`property`可以支持组件，可以不赋值，在外界需要的时候再传参，实现动态加载组件的过程
- 在`property`前，加`readonly`，使得这个属性只读
- 想要访问到子控件，给子控件起别名
  `property alias newInnerRect: innerRect`
  也可以只给某个属性去别名
  `property alias newInnerRectColor: innerRect.color`

## 第九课 CheckBox

- `CheckBox`生成一个可以勾选的框

- `tristate`使得选择框有三种模式可以选择

- `autoExclusive`继承自`AbstractButton`，使得可以自动排它，但是在`CheckBox`中并不生效
  想要实现排它，可以将之放在容器中

  ```qml
   ButtonGroup {
                id: childGroup
                exclusive: true
                buttons: col.children
            }
  ```

  其中`exclusive`就是排它的作用，`buttons`是需要排它的控件，如下所示
  ```qml
      Column {
          id:col
          CheckBox {
                   checked: true
                   text: qsTr("First")
               }
               CheckBox {
                   text: qsTr("Second")
               }
               CheckBox {
                   checked: true
                   text: qsTr("Third")
               }
      }
  
  ```

  或者，在`CheckBox`中设置分组

  ```qml
      ButtonGroup {
                id: childGroup
                exclusive: true
                //buttons: col.children
            }
  
      Column {
          id:col
          CheckBox {
                   checked: true
                   //tristate: true
                   text: qsTr("First")
                   ButtonGroup.group: childGroup
               }
               CheckBox {
                   text: qsTr("Second")
                   ButtonGroup.group: childGroup
               }
               CheckBox {
                   checked: true
                   text: qsTr("Third")
                   ButtonGroup.group: childGroup
               }
      }
  ```

- `nextCheckState`进行`CheckBox`的状态切换

## 第十课 Button扩展

- `DelayButton`点击中包含进度的按钮
- `RadioButton`是一个单选按钮，自带排它性质
- `Switch`是一个切换的按钮，`autoExclusive`对其无效，依然需要`ButtonGroup`
- `TabBar`相当于一个切页的`button`，自带排它性质
- `RoundButton`是一个圆形的按钮
- `ToolBar`是一个组合按钮的功能
- 在`button`中使用附加属性来进行自定义设计，且附加属性进行控制时，需要通过id来调用控件
- `button`使用`contentItem`对附加属性进行自定义修改

## 第十一课 Text

- `contentHeight`和`contentWidth`获取文本的实际宽度和高度

- 当文本过长，会超出文本所在的控件，使用elide来隐藏
  ```qml
  	elide: Text.ElideRight
  	anchors.fill: parent
  ```


- 一些用法如下
  ```qml
      Text {
          id: txt
          text: qsTr("MY QML")
          font.bold: true             //粗体
          font.family: "Courier New"  //字体
          font.italic: true           //斜体
          font.letterSpacing: 10      //字母间隔
          font.pixelSize: 36          //字体 像素为单位
          //font.pointSize: 36        //字体 磅为单位
          font.underline: true		//下划线
      }
  ```

- `Column`的使用
  
  ```qml
  Column {
           Text {
               font.pointSize: 24
               text: "<b>Hello</b> <i>World!</i>"
           }
           Text {
               font.pointSize: 24
               textFormat: Text.RichText  //富文本
               text: "<b>Hello</b> <i>World!</i>"
           }
           Text {
               font.pointSize: 24
               textFormat: Text.PlainText //纯文本
               text: "<b>Hello</b> <i>World!</i>"
           }
           Text {
               font.pointSize: 24
               textFormat: Text.MarkdownText  //markdown语法
               text: "**Hello** *World!*"
           }
       }
  ```
  
- 自动换行`wrapMode`
  ```qml
  Rectangle {
          id:rect
          width: 50
          height: 50
          border.color: "black"
  
          Text {
              id: txt
              text: qsTr("text text text text text")
              wrapMode: Text.WordWrap
              anchors.fill: parent
              elide: Text.ElideRight
          }
      }
  ```


- `link`的用法--链接

  ```qml
      Text {
          text: "See the <a href=\"http://qt-project.org\">Qt Project website</a>."
          MouseArea {
              anchors.fill: parent
              hoverEnabled: true
              cursorShape: Qt.PointingHandCursor  //鼠标移动到链接上，变成手的形状
          }
  
          onLinkActivated: {  //点击链接会触发
              console.log(link + " link activated")
          }
          onLinkHovered: {
              console.log("hover", link)
          }
          onHoveredLinkChanged: {
              console.log("hover link changed: ", hoveredLink)
          }
  
      }
  ```


## 第十二课 popup绘制和overlay使用

- `popup`的开启

  ```qml
      Button {
          width: 50
          height: 50
          onClicked: {
              popup.open()
          }
      }
  
      Popup {     //默认的popup类似于rectangle
               id: popup
               x: 100
               y: 100
               width: 200
               height: 300
               //默认不启动
               //使用visible来显示，或者使用open函数
               //visible: true
           }
  ```

- `popup`的第一个例外

  ```qml
      Rectangle {
          width: 200
          height: 100
          color: "black"
          visible: false
          //子控件覆盖在父控件上，父控件visible为false，子控件即使是true，也无法显示
          Rectangle {
              width: 50
              height: 50
              color: "red"
              visible: true
          }
          //但是popup是个例外,及时父控件是否显示对popup并不存在影响
          Popup {
              width: 50
              height: 50
              visible: true
          }
  
      }
  ```

- `popup`第二个例外，z顺序

  ```qml
      Rectangle {
          id: rect
          z: 10000
          width: 200
          height: 100
          color: "black"
      }
  
      //后面的控件z顺序大于前面的
      //但是popup是个例外
      //无论其他的控件z顺序是多少，popup的永远在最上层
      //popup的z顺序，只对同为popup的控件有效
      Popup {
          id: rect2
          z: -1
          width: 200
          height: 100
          x: 100
      }
  ```

  `popup`的z顺序只针对`popup`，会永远优先于其他控件

  ```qml
      Popup {
          id: rect
          z: 1
          width: 200
          height: 100
          visible: true
          background: Rectangle {
              color: "black"
          }
      }
  
      Popup {
          id: rect2
          width: 200
          height: 100
          x: 100
          z: -1
          background: Rectangle {
              color: "blue"
          }
      }
  ```

- `closePolicy`关闭协议，`modal`模态对话框

  ```qml
      //closePolicy默认的关闭逻辑是，点击外接和esc都会关闭popup
      closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
      //模态对话框：不关闭这个对话框，无法对系统的其他内容进行操作
      modal: false
      //dim控制非模态对话框情况下的背景色是否需要设置
      dim: true
      //enter和exit，打开和关闭时的动画效果设置
  ```

- `enter`和`exit`，打开和关闭时的动画效果设置

  ```qml
  //enter和exit，打开和关闭时的动画效果设置
      enter: Transition { //打开的时候
          NumberAnimation {
              property: "opacity";
              from: 0.0;
              to: 1.0
              duration: 1000
          }
      }
      exit: Transition {
          NumberAnimation {
              property: "opacity";
              from: 1.0;
              to: 0.0
              duration: 1000
          }
      }
  ```

- `contentItem`定制`Popup`

  ```qml 
  contentItem: Rectangle {
          anchors.fill: parent
          Text {
              id: txt
              anchors.fill: parent
              text: qsTr("Message Box Area!!!")
              font.pixelSize: 26
              wrapMode: Text.WordWrap
          }
      }
  ```

- 给`Popup`加`button`
  ```qml 
      Button {
          anchors.bottom: parent.bottom
          anchors.bottomMargin: 30
          anchors.right: parent.right
          anchors.rightMargin: 30
          text: "cancel"
      }
  
      Button {
          anchors.bottom: parent.bottom
          anchors.bottomMargin: 30
          anchors.right: parent.right
          anchors.rightMargin: 230
          text: "ok"
      }
  ```

- 对`Popup`以外的部分进行控制
  ```qml
      //如果是模态框用Overlay.modal，如果是非模态框用Overlay.modalless
      Overlay.modal: Rectangle {
          anchors.fill: parent
          color: "lightsteelblue"
      }
  
      Overlay.modalless: Rectangle {
          anchors.fill: parent
          color: "lightsteelblue"
      }
  ```

- 对于模态框情况下， 背景色设置透明的方法
  ```qml
      Overlay.modal: Rectangle {
          anchors.fill: parent
  //        color: "lightsteelblue" //英语设置颜色
  //        color: "#FF0000"    //  RGB的16进制设置颜色
          color: "#33000000"  //RGBA ARGB 该颜色为透明色
  
      }
  ```

- 如果想在模态框的情况下，在背景中添加一个可以点击的按钮
  ```qml
      Overlay.modal: Rectangle {
          anchors.fill: parent
  //        color: "lightsteelblue" //英语设置颜色
  //        color: "#FF0000"    //  RGB的16进制设置颜色
          color: "#33000000"  //RGBA ARGB 该颜色为透明色
  
          //如果想在模态框的情况下，在背景中添加一个可以点击的按钮
          Popup {
              width: parent.width
              height: 80
              closePolicy: Popup.NoAutoClose
              visible: true
              background: Rectangle {
  //                color: "transparent"
                  color: "grey"
              }
              Button {
                  width: 50
                  height: 50
                  anchors.right: parent.right
              }
          }
  
      }
  ```


## 第十三课 Repeater

- 显示多个控件
  ```qml
      Repeater {
  //            model: 3    //模型，数字的话，表示有几个模型
              model: ["Button", "Rectangle", "MouseArea"] //数量还是3 读取list的大小
              Button {
                  y: index * 50
                  width: 100; height: 40
                  text: modelData //使用model中的属性
              }
          }
  ```

## 第十四课 ListView

- 封装自定义的变量，然后使用
  ```qml
       model: ListModel {
           ListElement {
               name: "Bill Smith"
               number: "555 3264"
               myValue: 111
           }
           ListElement {
               name: "John Brown"
               number: "555 8426"
               myValue: 222
           }
           ListElement {
               name: "Sam Wise"
               number: "555 0473"
               myValue: 333
           }
       }
       spacing: 10    //每一项之间的距离
       delegate: Button {   //控制了每一项数据是如何绘制的
           text: name + " " + number + " " + myValue
       }
  ```

- 高亮显示和移动
  ```qml
   highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
       delegate: Rectangle {   //控制了每一项数据是如何绘制的
           color: "transparent"
           width: list.width
           height: 50
           Text {
               id: txt
               text: name
           }
           MouseArea {
               anchors.fill: parent
               onClicked: {
                   currentIndex = index
               }
           }
  ```

- `header`和`footer`，给控件最上面和最下面添加加效果，不影响其他部分

