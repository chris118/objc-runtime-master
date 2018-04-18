
//  main.m
//  debug-objc
//
//  Created by closure on 2/24/16.
//
//

//#import "objc-private.h"
#import <Foundation/Foundation.h>
#import "RuntimeKit.h"
#import "runtime.h"
#import "message.h"
#import "Person.h"
#import "Person+Cate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        person.name = @"Tom";
        
        SEL test = NSSelectorFromString(@"test");
        objc_msgSend(person, test);
        NSLog(@"%@", person.name);
        
        person.profession = @"programmer";
        NSLog(@"profession: %@", person.profession);
        
        person.cat = @"cat";
        NSLog(@"cat: %@", person.cat);
        NSLog(@"profession: %@", person.profession);

        NSArray *ivarList = [RuntimeKit fetchIvarList:[Person class]];
        NSLog(@"ivarList:%@", ivarList);
        NSArray *propertyList = [RuntimeKit fetchPropertyList:[Person class]];
        NSLog(@"propertyList:%@", propertyList);
        
        struct objc_object *a = (__bridge struct objc_object *)[[Person alloc] init];
        NSLog(@"%p", a);
    }
    return 0;
}
