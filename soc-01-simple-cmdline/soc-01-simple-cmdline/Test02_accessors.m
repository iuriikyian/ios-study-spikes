//
//  Test02_accessors.m
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import "Test02_accessors.h"

@implementation Test02_accessors
{
    int _a;
}

@synthesize b = _b;

- (void) setA: (int)a{
    _a = a;
}
- (int) a{
    return _a;
};

- (void) getA: (int*) pa{
    *pa = _a;
};

- (void) info{
    NSLog(@"content: a = %d, b = %d", _a, _b);
}

@end
