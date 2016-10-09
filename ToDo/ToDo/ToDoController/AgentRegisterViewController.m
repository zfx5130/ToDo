//
//  AgentRegisterViewController.m
//  ToDo
//
//  Created by 赵富星 on 16/10/9.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "AgentRegisterViewController.h"

@interface AgentRegisterViewController ()

@end

@implementation AgentRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = YES;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.translucent = NO;
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupViews {
    [self setupBackBarItem];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init]
                                                  forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

- (void)setupBackBarItem {
    UIBarButtonItem *dismissButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回"
                                                                          style:UIBarButtonItemStyleDone
                                                                         target:self
                                                                         action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = dismissButtonItem;
}

#pragma mark - Handlers

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
