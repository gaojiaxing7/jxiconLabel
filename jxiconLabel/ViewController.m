//
//  ViewController.m
//  jxiconLabel
//
//  Created by ikuan on 16/10/25.
//  Copyright © 2016年 ikuan. All rights reserved.
//

#import "ViewController.h"
#import "jxIconLabelView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    jxIconLabelView *labelView=[jxIconLabelView jxIconLabelView:CGRectMake(100, 200, 200, 30) andImageName:@"iconme"];
    [self.view addSubview:labelView];
    
    labelView.backgroundColor=[UIColor yellowColor];

    [labelView autoMessageFrameWith:@"个人中心"];
    
    
    
    
    jxIconLabelView *labelView2=[jxIconLabelView jxIconLabelView:CGRectMake(100, 300, 200, 30) andImageName:@"iconme"];
    [self.view addSubview:labelView2];
    labelView2.backgroundColor=[UIColor yellowColor];
    [labelView2 autoMessageFrameWith:@""];

    jxIconLabelView *labelView3=[jxIconLabelView jxIconLabelView:CGRectMake(100, 400, 200, 30) andImageName:@"iconme"];
    [self.view addSubview:labelView3];
    labelView3.backgroundColor=[UIColor yellowColor];
    [labelView3 autoMessageFrameWith:@"用户管理中心"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
