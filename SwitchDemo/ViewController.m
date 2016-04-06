//
//  ViewController.m
//  SwitchDemo
//
//  Created by 成 尹 on 16/4/6.
//  Copyright © 2016年 成 尹. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *modeSwitch;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *viewSpacingContraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redViewConstraint;
@end

@implementation ViewController
-(void)updateConstraints{
    if (self.modeSwitch.isOn) {
        self.viewSpacingContraint.constant = 6.0;
        self.blueViewConstraint.priority = UILayoutPriorityDefaultHigh+1;
    } else {
        self.viewSpacingContraint.constant = self.view.frame.size.width;
        self.blueViewConstraint.priority = UILayoutPriorityDefaultHigh-1;
    }
}

- (IBAction)enableMode:(UISwitch *)sender {
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setBool:sender.isOn forKey:@"modeUserDefaultKey"];
//    [defaults synchronize];
    
    [UIView animateWithDuration:1.0 animations:^{
        [self updateConstraints];
        [self.view layoutIfNeeded];
    }];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateConstraints];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
