//
//  Person.h
//  debug-objc
//
//  Created by Colin on 2018/4/17.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSInteger _stature;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;

- (void)test;

@end
