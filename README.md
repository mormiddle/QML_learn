# _QML学习_

## 第四课 states和transition

- `states`设置状态，使用`state`和`name`来设置状态
- `PropertyAnimation`和`NumberAnimation`来设置动画
- `duration`设置延迟
- `SequentialAnimation`按顺序显示动画
- `transitions`给`states`变化添加过度动画
- `Behavior`针对某个值的变化，作出对应的行为

## 第五课 component和loader

- Component.onCompleted//窗口创建的时候加载
- Component.onDestruction//窗口销毁的时候加载
- Component自定义空间，Loader来加载控件
- 可以使用loader.sourceComponent = null对loader中的控件进行析构
- 如果想在控价加载完成之后，依然对控件进行属性修改，可以使用item
  如loader.item.width = 50
- 加载图片使用Image
- 使用动图AnimatedImage

## 第六课 MouseArea

- MouseArea默认是左键，如果要接受左右键使用acceptedButtons: Qt.LeftButton | Qt.RightButton
- 如果想要知道按下的是哪个按键，使用pressedButtons
   var ret = pressedButtons & Qt.LeftButt  on
- 判断鼠标是否在MouseArea区域内，使用containsMouse和containsPress
- 其中containsMouse使用的前提是hoverEnabled = true，否则其效果和containsPress相同，即鼠标在区域内点击时，才会触发
- 在区域内，变成一个十字形的光标
- 拖动区域中的控件，使用drag
- drag.filterChildren子控件继承了父控件拖动的属性