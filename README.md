# GradientCategory
使用category实现gradient

#### 简介
***本例主要采用了类别来实现了给按钮设置渐变色的功能***
当然，里边也有一些别的对比实现方法.
各位看官如有发现什么bug，请批评指正！

#### 效果图
![](https://upload-images.jianshu.io/upload_images/1241385-66a2fa0a30010ca2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 来看`.h`文件
```

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, GradientType) {
GradientFromTopToBottom = 1,            //从上到下
GradientFromLeftToRight,                //从做到右
GradientFromLeftTopToRightBottom,       //从上到下
GradientFromLeftBottomToRightTop        //从上到下
};

@interface UIImage (Gradient)

/**
*  根据给定的颜色，生成渐变色的图片
*  @param imageSize        要生成的图片的大小
*  @param colorArr         渐变颜色的数组
*  @param percents          渐变颜色的占比数组
*  @param gradientType     渐变色的类型
*/
- (UIImage *)createImageWithSize:(CGSize)imageSize gradientColors:(NSArray *)colorArr percentage:(NSArray *)percents gradientType:(GradientType)gradientType;

@end


#import <UIKit/UIKit.h>

#import "UIImage+Gradient.h"

@interface UIButton (Gradient)

/**
*  根据给定的颜色，设置按钮的颜色
*  @param btnSize  这里要求手动设置下生成图片的大小，防止coder使用第三方layout,没有设置大小
*  @param clrs     渐变颜色的数组
*  @param percent  渐变颜色的占比数组
*  @param type     渐变色的类型
*/
- (UIButton *)gradientButtonWithSize:(CGSize)btnSize colorArray:(NSArray *)clrs percentageArray:(NSArray *)percent gradientType:(GradientType)type;

@end
```

#### 实现
[请大家移步Github](https://github.com/WooNoah/GradientCategory)
如果感觉有帮到您，***麻烦给个star***，谢谢！
