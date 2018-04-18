//
//  Person+Cate.m
//  debug-objc
//
//  Created by Colin on 2018/4/17.
//

#import "Person+Cate.h"
#import "objc-runtime.h"


@implementation Person (Cate)

@dynamic profession;

- (void)setProfession:(NSString *)profession {
    objc_setAssociatedObject(self, "professionKey", profession, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)profession {
    return objc_getAssociatedObject(self, "professionKey");
}

- (void)setCat:(NSString *)cat {
    objc_setAssociatedObject(self, "cat", cat, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)cat {
    return objc_getAssociatedObject(self, "cat");
}

@end
