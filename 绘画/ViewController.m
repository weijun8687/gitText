//
//  ViewController.m
//  绘画
//
//  Created by Ibokan on 15/12/7.
//  Copyright © 2015年 魏国军. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self setButtonLayer];
//    [self setImageViewLayer];
    CALayer * layer = [CALayer layer];
    
    layer.bounds = CGRectMake(0, 0, 100, 100);
    // 设置的是layer中心点得位置
    layer.position = CGPointMake(120, 300);
    // 设置layer的锚点 默认是（0.5，0.5）
//    layer.anchorPoint = CGPointMake(0, 0);
    layer.backgroundColor = [UIColor blueColor].CGColor;
    [self.view.layer addSublayer:layer];
}

- (void)setButtonLayer{
    self.button.layer.cornerRadius = 50;
    self.button.layer.shadowColor = [UIColor yellowColor].CGColor;
    self.button.layer.shadowOpacity = 1;
    self.button.layer.borderWidth = 3;
    self.button.layer.borderColor = [UIColor whiteColor].CGColor;
    
}

- (void)setImageViewLayer
{
    self.imageView.layer.cornerRadius = 50;
    self.imageView.layer.masksToBounds = YES;
    
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [UIView animateWithDuration:1.0 animations:^{
//        // imageView 旋转
////        self.imageView.layer.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
//        
//        // imageView 平移
////        self.imageView.layer.transform = CATransform3DMakeTranslation(200, 200, 0);
//        
//        // imageView 缩放
//        self.imageView.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
//        
//    }];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
