//
//  Person.m
//  3.NSInvocation
//
//  Created by 梁森 on 2020/7/11.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat{
    NSLog(@"吃...");
}
- (void)eat:(NSString *)food{
    NSLog(@"%s", __func__);
}
- (void)eat:(NSString *)food andPlay:(NSString *)girl{
    NSLog(@"%s", __func__);
}
- (NSString *)eatFood{
    NSLog(@"%s", __func__);
    return @"happy";
}

@end
