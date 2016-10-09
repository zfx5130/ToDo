//
//  AgentRegisterSuccessViewController.m
//  ToDo
//
//  Created by 赵富星 on 16/10/9.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "AgentRegisterSuccessViewController.h"

@interface AgentRegisterSuccessViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;


@property (weak, nonatomic) IBOutlet UIButton *repeatButton;

@property (weak, nonatomic) IBOutlet UIButton *abandonButton;
@end

@implementation AgentRegisterSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBackBarItem];
    [self setupViews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupBackBarItem {
    UIBarButtonItem *dismissButtonItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                          style:UIBarButtonItemStyleDone
                                                                         target:self
                                                                         action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = dismissButtonItem;
}

- (void)setupViews {
    self.textView.layer.cornerRadius = 2.0f;
    self.textView.layer.masksToBounds = YES;
    self.textView.layer.borderColor = [UIColor colorWithRed:232.0f / 255.0f green:237.0f / 255.0f blue:242.0f / 255.0f alpha:1.0f].CGColor;
    self.textView.layer.borderWidth = 1.0f;
    
    
    self.abandonButton.layer.cornerRadius = 4.0f;
    self.abandonButton.layer.masksToBounds = YES;
    self.abandonButton.layer.borderColor = [UIColor colorWithRed:232.0f / 255.0f green:237.0f / 255.0f blue:242.0f / 255.0f alpha:1.0f].CGColor;
    self.abandonButton.layer.borderWidth = 1.0f;
    
    self.repeatButton.layer.cornerRadius = 4.0f;
    self.repeatButton.layer.masksToBounds = YES;
    self.repeatButton.layer.borderColor = [UIColor colorWithRed:232.0f / 255.0f green:237.0f / 255.0f blue:242.0f / 255.0f alpha:1.0f].CGColor;
    self.repeatButton.layer.borderWidth = 1.0f;
}

#pragma mark - Handlers

- (void)dismiss {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
