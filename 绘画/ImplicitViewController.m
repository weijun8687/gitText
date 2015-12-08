//
//  ImplicitViewController.m
//  绘画
//
//  Created by Ibokan on 15/12/7.
//  Copyright © 2015年 魏国军. All rights reserved.
//  隐式动画

#import "ImplicitViewController.h"

@interface ImplicitViewController ()
@property (nonatomic, strong) CALayer * layer;

@end

@implementation ImplicitViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.layer = [CALayer layer];
    self.layer.backgroundColor = [UIColor redColor].CGColor;
    self.layer.bounds = CGRectMake(0, 0, 100, 100);
    // 设置锚点
    self.layer.anchorPoint = CGPointMake(0, 0);
    [self.view.layer addSublayer:self.layer];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint pos = [touch locationInView:self.view];
    
    // 开启事务
    [CATransaction begin];
    
    // 取消隐式动画
//    [CATransaction setDisableActions:YES];
    self.layer.position = pos;
    self.layer.cornerRadius = arc4random_uniform(20);
    
    // 提交事务
    [CATransaction commit];
}

@end
