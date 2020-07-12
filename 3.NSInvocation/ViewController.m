//
//  ViewController.m
//  3.NSInvocation
//
//  Created by 梁森 on 2020/7/11.
//  Copyright © 2020 梁森. All rights reserved.
//

#import "ViewController.h"

#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self test];
    [self testWithParameter];
    [self testWithParameters];
    [self testWithReturnValue];
}
- (void)test{
    // 无参数
    Person * p = [Person new];
    SEL sel = @selector(eat);
//    NSMethodSignature * signature = [[p class] instanceMethodSignatureForSelector:sel];
    NSMethodSignature * signature = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.selector = sel;
    invocation.target = p;
    [invocation invoke];
}
- (void)testWithParameter{
    Person * p = [Person new];
    SEL sel = @selector(eat:);
    NSMethodSignature * signature = [[p class] instanceMethodSignatureForSelector:sel];
//    NSMethodSignature * signature = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.selector = sel;
    invocation.target = p;
    NSString * str = @"eat";
    [invocation setArgument:&str atIndex:2];
    [invocation invoke];
}
- (void)testWithParameters{
    Person * p = [Person new];
    SEL sel = @selector(eat:andPlay:);
    NSMethodSignature * signature = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.selector = sel;
    invocation.target = p;
    NSString * str = @"eat";
    [invocation setArgument:&str atIndex:2];
    [invocation invoke];
}
- (void)testWithReturnValue{
    Person * p = [Person new];
    SEL sel = @selector(eatFood);
    NSMethodSignature * signature = [[p class] instanceMethodSignatureForSelector:sel];
//    NSMethodSignature * signature = [NSMethodSignature signatureWithObjCTypes:"v@:@"];
    NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.selector = sel;
    invocation.target = p;
    [invocation invoke];
    
    //获取返回值
    NSString * str = nil;
    [invocation getReturnValue:&str];
    NSLog(@"%@", str);
}


@end
