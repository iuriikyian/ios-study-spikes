//
//  Test03_ManualMemoryManagment.m
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MemTestClass : NSObject

- (id) init;
- (void) dealloc;
@end

@implementation MemTestClass

- (id) init {
    if(self = [super init]){
        NSLog(@"init() called");
    }
    return self;
}

- (void) dealloc{
    NSLog(@"dealloc() called");
    [super dealloc];
}
@end

void manual_memory_management_test(){
    MemTestClass* mt = [MemTestClass new];
    
    // code that requires to turn off automatic reference counting with flag for this file -fno-objc-arc
    NSLog(@"%@", [mt description]);
    NSLog(@"retainCount : %lu", (unsigned long)mt.retainCount);
    [mt retain];
    NSLog(@"retain called");
    NSLog(@"retainCount : %lu", (unsigned long)mt.retainCount);
    NSLog(@"%@", [mt description]);
    [mt release];
    NSLog(@"release called");
    NSLog(@"retainCount : %lu", (unsigned long)mt.retainCount);
    NSLog(@"%@", [mt description]);
    [mt release];
    NSLog(@"release called");
    
    // ERROR: causes not catchable EXC_BAD_ACCESS exception in access to deallocated memory
    //NSLog(@"retainCount : %lu", (unsigned long)mt.retainCount);
    
    mt = nil;

}