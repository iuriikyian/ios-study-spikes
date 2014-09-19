//
//  MyClass.m
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import "Test01_ClassAndInstanceMethodsAccess.h"

@implementation Test01_ClassAndInstanceMethodsAccess

- (void) foo{
    NSLog(@"called '- foo()'");
}

- (void) foo_private{
    NSLog(@"called '- foo_private()'");
}

- (void )call_foo_private{
    [self foo_private];
}


+ (void) goo{
    NSLog(@"called '+ goo()'");
}


+ (void) goo_private{
    NSLog(@"called '+ goo_private()'");
}

+ (void )call_goo_private{
    [self goo_private];
}

@end
