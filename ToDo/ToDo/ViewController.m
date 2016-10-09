//
//  ViewController.m
//  ToDo
//
//  Created by 赵富星 on 16/10/9.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "ViewController.h"
#import "AgentRegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)toDo:(UIButton *)sender {
    AgentRegisterViewController *agentViewController = [[AgentRegisterViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:agentViewController];
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
