//
//  ViewController.m
//  soc-03-simple-storyboard
//
//  Created by finebrain on 26/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import "SOC03_ViewController.h"

@implementation SOC03_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pgoto2:(id)sender {
    [self performSegueWithIdentifier:@"view2" sender:sender];
}
@end
