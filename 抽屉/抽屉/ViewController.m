//
//  ViewController.m
//  抽屉
//
//  Created by apple on 16/2/25.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topconstant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomconstant;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *widthconstant;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//左滑
- (IBAction)leftswipe:(id)sender {
    self.topconstant.constant = 0;
    self.bottomconstant.constant = 0;
    self.widthconstant.constant = self.view.bounds.size.width;
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

//右滑
- (IBAction)rightswipe:(id)sender {
    
    self.topconstant.constant = 40;
    self.bottomconstant.constant = 40;
    self.widthconstant.constant = 150;
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

@end
