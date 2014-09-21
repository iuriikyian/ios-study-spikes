//
//  main.m
//  soc-01-simple-cmdline
//
//  Created by finebrain on 19/09/14.
//  Copyright (c) 2014 IOS Study Spikes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test01_ClassAndInstanceMethodsAccess.h"
#import "Test02_accessors.h"


void manual_memory_management_test(); // forward declaration for //#import "Test03_ManualMemoryManagment.m"

void methods_access_test(){
    Test01_ClassAndInstanceMethodsAccess* mc = [Test01_ClassAndInstanceMethodsAccess new];
    
    // 1. call instance method on instance
    [mc foo];
    
    // 2. call class method on class
    [Test01_ClassAndInstanceMethodsAccess goo];
    
    // 3. call class method on instance -> ERROR
    //[mc goo];
    
    // 4. call instance method on class -> ERROR
    //[MyClass foo];
    
    // 5. call private instance method (provided only in class implementation) -> ERROR
    //[mc foo_private];
    
    // 6. call private class method (provided only in class implementation) -> ERROR
    //[mc goo_private];
    
    // 7. call private instance method (provided only in class implementation) inside of the class
    [mc call_foo_private];
    
    // 7. call private class method (provided only in class implementation) for the class
    [Test01_ClassAndInstanceMethodsAccess call_goo_private];
    
    // 8. check private selector presence

    SEL privateMethodSelector = NSSelectorFromString(@"foo_private");
    if([mc respondsToSelector: privateMethodSelector] == YES){
        NSLog(@"can response to selector foo_private");
    }
    
    // compile time definistion of selector with suppressing the warning
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wundeclared-selector"
    SEL privateMethodSelector2 = @selector(goo_private);
    #pragma clang diagnostic pop
    
    if([Test01_ClassAndInstanceMethodsAccess respondsToSelector: privateMethodSelector2] == YES){
        NSLog(@"can response to selector goo_private");
    }
}

void test_accessors(){
    Test02_accessors *ta = [Test02_accessors new];
    [ta info];
    ta.a = 23;
    [ta info];
    int b = ta.a;
    NSLog(@"recieved: %d" , b);
    int c;
    int* pc = &c;
    [ta getA: pc];
    NSLog(@"recieved with getA: %d" , c);
    
    // properties usage
    ta.b = 78;
    [ta info];
    NSLog(@"property b access: %d", ta.b);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        methods_access_test();
        //test_accessors();
        //manual_memory_management_test();
    }
    return 0;
}
