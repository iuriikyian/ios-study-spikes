//
//  ViewController.m
//  soc-02-single-view-app
//
//  Created by Iurii Kyian on 20/09/14.
//  Copyright (c) 2014 Iurii Kyian. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testTap:(UIButton *)sender {
    [self.lbl setText: @"button tapped"];
}
@end
