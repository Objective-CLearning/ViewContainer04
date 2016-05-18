//
//  ViewController.m
//  ViewContainer02
//
//  Created by 曾偉亮 on 2016/3/9.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    MainView *m_view;
}

@end

@implementation ViewController


-(id)initWithFrame:(CGRect)frame {
    
    self = [super init];
    if (!self) {
        
        return nil;
    }
    
    self.view.frame = frame;
    self.view.backgroundColor = [UIColor whiteColor];
    
    m_view = [[MainView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:m_view];
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

@end
