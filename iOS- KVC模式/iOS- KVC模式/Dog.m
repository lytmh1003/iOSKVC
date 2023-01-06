//
//  Dog.m
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/19.
//

#import "Dog.h"
/***
 KVC- 属性
 */
@implementation Dog
- (instancetype)init {
    if (self = [super init]) {
        _age = 777;
    }
    return  self;
}
@end
 
