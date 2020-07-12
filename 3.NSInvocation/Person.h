//
//  Person.h
//  3.NSInvocation
//
//  Created by 梁森 on 2020/7/11.
//  Copyright © 2020 梁森. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)eat;
- (void)eat:(NSString *)food;
- (void)eat:(NSString *)food andPlay:(NSString *)girl;
- (NSNumber *)eatFood;

@end

NS_ASSUME_NONNULL_END
