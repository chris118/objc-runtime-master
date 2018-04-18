//
//  Person.m
//  debug-objc
//
//  Created by Colin on 2018/4/17.
//

#import "Person.h"
#import "objc-runtime.h"

@interface Person ()

@property (nonatomic, copy) NSString *avatar;

@end

@implementation Person

- (void)dealloc
{
    objc_removeAssociatedObjects(self);
}

- (void)test {
    NSLog(@"call test func");
}

@end
