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