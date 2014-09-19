//
//  Test02_accessors.h
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test02_accessors : NSObject
{
    int _a;
}

- (void) setA: (int)a;
- (int) a;
- (void) getA: (int*) pa;

- (void) info;

@end
