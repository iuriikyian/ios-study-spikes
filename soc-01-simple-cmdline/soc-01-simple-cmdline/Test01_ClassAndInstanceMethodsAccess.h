//
//  MyClass.h
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test01_ClassAndInstanceMethodsAccess : NSObject

- (void )foo;
- (void )call_foo_private;

+ (void) goo;
+ (void )call_goo_private;
@end


@interface MyClassWithDataMembers : NSObject
{
    int a;
}

@end
