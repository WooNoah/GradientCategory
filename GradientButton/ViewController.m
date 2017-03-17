//
//  ViewController.m
//  testLayer
//
//  Created by tb on 17/3/17.
//  Copyright © 2017年 com.tb. All rights reserved.
//

#import "ViewController.h"

#import "UIButton+Gradient.h"

#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@property (weak, nonatomic) IBOutlet UIButton *testButton2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self.testButton setImage:[UIImage imageNamed:@"rightArrow"] forState:UIControlStateNormal];
    [self.testButton setBackgroundImage:[UIImage imageNamed:@"gradientButton"] forState:UIControlStateNormal];
    
    [self.testButton2 setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    [self.testButton2 setBackgroundImage:[UIImage imageNamed:@"gradientButton"] forState:UIControlStateNormal];
    [self.testButton2 gradientButtonWithSize:CGSizeMake(300, 44) colorArray:@[(id)RGB(55, 188, 253),(id)RGB(0, 0, 0)] percentageArray:@[@(0.5),@(1)] gradientType:GradientFromLeftTopToRightBottom];
    
    
    
    
    UIButton *thirdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    thirdBtn.frame = CGRectMake(10, 50, 200, 44);
    
    CAGradientLayer *gradientLayer =  [CAGradientLayer layer];
    gradientLayer.frame = CGRectMake(0, 0, 200, 44);
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    gradientLayer.locations = @[@(0.1),@(1.0)];
    [gradientLayer setColors:@[(id)[RGB(46, 229, 253) CGColor],(id)[RGB(41, 195, 252) CGColor]]];
    [thirdBtn.layer addSublayer:gradientLayer];
    
    
    [thirdBtn setTitle:@"代码创建的按钮，使用layer" forState:UIControlStateNormal];
    [thirdBtn setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    [self.view addSubview:thirdBtn];
    
    
    UIButton *four = [UIButton buttonWithType:UIButtonTypeCustom];
    four.frame = CGRectMake(20, 120, 250, 44);
    [four setTitle:@"代码创建的按钮，使用Category" forState:UIControlStateNormal];
    [four setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [four setImage:[UIImage imageNamed:@"right"] forState:UIControlStateNormal];
    [four gradientButtonWithSize:CGSizeMake(200, 44) colorArray:@[(id)[UIColor yellowColor],(id)[UIColor brownColor]] percentageArray:@[@(0.18),@(1)] gradientType:GradientFromLeftBottomToRightTop];
    [self.view addSubview:four];
    
    
    [self.button3 gradientButtonWithSize:CGSizeMake(300, 44) colorArray:@[(id)RGB(253, 175, 55),(id)RGB(91, 7, 7)] percentageArray:@[@(0.3),@(1)] gradientType:GradientFromTopToBottom];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
