//
//  ViewController2.m
//  soc-03-simple-storyboard
//
//  Created by finebrain on 26/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import "SOC03_ViewController2.h"

@implementation SOC03_ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)pback:(id)sender {
    [self.navigationController popViewControllerAnimated:TRUE];
}
@end
