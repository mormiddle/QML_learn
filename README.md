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