//
//  ViewController.m
//  Calculator
//
//  Created by wangyifei on 13-3-19.
//  Copyright (c) 2013年 Me. All rights reserved.
//
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    if (iPhone5) {
         CalculatorView *myCalculator = [[[NSBundle mainBundle]loadNibNamed:@"CalculatorView_4_inch" owner:self options:nil]lastObject];
        [self.view addSubview:myCalculator];
    }else{
        CalculatorView *myCalculator = [[[NSBundle mainBundle]loadNibNamed:@"CalculatorView_3_5_inch" owner:self options:nil]lastObject];
        [self.view addSubview:myCalculator];
    }
   
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
