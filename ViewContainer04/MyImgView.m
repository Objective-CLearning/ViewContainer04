//
//  MyImgView.m
//  ViewContainer04
//
//  Created by FM-C2 on 2015/1/29.
//  Copyright (c) 2015年 Nick. All rights reserved.
//

#import "MyImgView.h"

@implementation MyImgView

-(id)initWithFrame:(CGRect)frame withImg:(UIImage *)img
{
    self = [super initWithImage:img];
    
    if(!self) return nil;
   
    self.frame = frame;
    
    initFrame = frame; //儲存 //按一下回原尺寸圖
    
    self.userInteractionEnabled = YES;  //阻擋繼續觸發的動作 
    
    return self;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  //按一下回原尺寸圖
{
    [UIView beginAnimations:@"img" context:nil];
    [UIView setAnimationDuration:0.88];
    self.frame = initFrame;
    [UIView commitAnimations];
    
}

@end
