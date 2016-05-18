//
//  MainView.m
//  ViewContainer04
//
//  Created by FM-C2 on 2015/1/29.
//  Copyright (c) 2015年 Nick. All rights reserved.
//

#import "MainView.h"

@implementation MainView
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(!self) return nil;
    self.backgroundColor = [UIColor whiteColor];
    
    imgcar =[[MyImgView alloc] initWithFrame:CGRectMake(0 ,0 , 100, 100) withImg:[UIImage imageNamed:@"pic"]];
    [self addSubview:imgcar];
    
    return self;
}

-(void)resizeWithTouches:(NSSet*)touches
{
    UITouch *touch=[[touches allObjects] objectAtIndex:0];
    CGPoint location =[touch locationInView:self];
    
    [UIView beginAnimations:@"ANI" context:nil];
    [UIView setAnimationDuration:1];
    imgcar.frame = CGRectMake(imgcar.frame.origin.x, imgcar.frame.origin.y, location.x, location.y);
    [UIView commitAnimations];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self resizeWithTouches:touches];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self resizeWithTouches:touches];
}



@end
