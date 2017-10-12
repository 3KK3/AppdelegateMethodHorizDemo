

//
//  NewViewController.m
//  AppdelegateMethoHorizDemo
//
//  Created by YZY on 2017/10/12.
//  Copyright © 2017年 YZY. All rights reserved.
//

#import "NewViewController.h"
#import "AppDelegate.h"

@interface NewViewController ()

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"2";
    [self.view addSubview: label];
    

    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]forKey:@"orientation"];

    [self.view addGestureRecognizer: [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(tapAction)]];
}

- (void)tapAction {
    [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait]forKey:@"orientation"];
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    delegate.makeOrientation = UIInterfaceOrientationPortrait;
    [self dismissViewControllerAnimated: YES completion: ^{
        

    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
