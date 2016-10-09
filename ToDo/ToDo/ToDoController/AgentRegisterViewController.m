//
//  AgentRegisterViewController.m
//  ToDo
//
//  Created by 赵富星 on 16/10/9.
//  Copyright © 2016年 thomas. All rights reserved.
//

#import "AgentRegisterViewController.h"

#import "AgentRegisterSuccessViewController.h"

@interface AgentRegisterViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;

@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *textViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *verifyButtonLeftConstraint;

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupViewAttributes {
    self.leftImageView.layer.cornerRadius = 3.0f;
    self.leftImageView.layer.masksToBounds = YES;
    self.leftImageView.layer.borderColor =
    [UIColor colorWithRed:223.0f / 255.0f green:223.0f / 255.0f blue:223.0f / 255.0f alpha:1.0f].CGColor;
    self.leftImageView.layer.borderWidth = 1.0f;
    
    
    self.rightImageView.layer.cornerRadius = 3.0f;
    self.rightImageView.layer.masksToBounds = YES;
    self.rightImageView.layer.borderColor =
    [UIColor colorWithRed:223.0f / 255.0f green:223.0f / 255.0f blue:223.0f / 255.0f alpha:1.0f].CGColor;
    self.rightImageView.layer.borderWidth = 1.0f;
    
    self.addButton.layer.cornerRadius = 2.0f;
    self.addButton.layer.masksToBounds = YES;
    self.addButton.layer.borderColor = [UIColor colorWithRed:136.0 / 255.0f green:155.0f / 255.0f blue:183.0f / 255.0f alpha:1.0f].CGColor;
    self.addButton.layer.borderWidth = 1.0f;
    
    self.textView.layer.cornerRadius = 2.0f;
    self.textView.layer.masksToBounds = YES;
    self.textView.layer.borderColor = [UIColor colorWithRed:223.0f / 255.0f green:223.0f / 255.0f blue:223.0f / 255.0f alpha:1.0f].CGColor;
    self.textView.layer.borderWidth = 1.0f;
    if ([UIScreen mainScreen].bounds.size.width == 320.0f) {
        self.viewHeightConstraint.constant = 60.0f;
        self.textViewHeightConstraint.constant = 60.0f;
        self.verifyButtonLeftConstraint.constant = 3.0f;
    }
}


- (void)setupViews {
    [self setupBackBarItem];
    [self setupViewAttributes];
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init]
                                                  forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

- (void)setupBackBarItem {
    UIBarButtonItem *dismissButtonItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                          style:UIBarButtonItemStyleDone
                                                                         target:self
                                                                         action:@selector(dismiss)];
    self.navigationItem.leftBarButtonItem = dismissButtonItem;
    
    UIBarButtonItem *goButtonItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                     style:UIBarButtonItemStyleDone
                                                                    target:self
                                                                    action:@selector(next)];
    self.navigationItem.rightBarButtonItem = goButtonItem;
}

#pragma mark - Handlers


- (IBAction)leftButtonWasPressed:(UIButton *)sender {
    NSLog(@"正面上传");
}

- (IBAction)rightButtonWasPressed:(UIButton *)sender {
    NSLog(@"反面上传");
}


- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)next {
    AgentRegisterSuccessViewController *agentSuccessViewController = [[AgentRegisterSuccessViewController alloc] init];
    [self.navigationController pushViewController:agentSuccessViewController
                                         animated:YES];
}

@end
