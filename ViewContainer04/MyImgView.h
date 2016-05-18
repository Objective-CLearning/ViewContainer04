//
//  MyImgView.h
//  ViewContainer04
//
//  Created by FM-C2 on 2015/1/29.
//  Copyright (c) 2015年 Nick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyImgView : UIImageView
{
    CGRect initFrame;
}

//自訂 MyImgView class 初始化
-(id)initWithFrame:(CGRect)frame withImg:(UIImage *)img;

@end
