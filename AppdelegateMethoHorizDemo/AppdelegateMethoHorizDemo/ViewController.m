//
//  ViewController.m
//  AppdelegateMethoHorizDemo
//
//  Created by YZY on 2017/10/12.
//  Copyright © 2017年 YZY. All rights reserved.
//

#import "ViewController.h"
#import "NewViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 100, 100)];
    label.backgroundColor = [UIColor blackColor];
    label.text = @"1";
    [self.view addSubview: label];

    [self.view addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(tapAction)]];
}

- (void)tapAction {
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    delegate.makeOrientation = UIInterfaceOrientationLandscapeRight;
    
    NewViewController *newvc = [[NewViewController alloc] init];
    
    [self presentViewController: newvc animated: YES completion: nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
