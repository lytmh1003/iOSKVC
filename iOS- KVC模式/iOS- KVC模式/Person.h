//
//  Person.h
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/19.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
NS_ASSUME_NONNULL_BEGIN
/***
 KVC - 成员变量
 
 */
@interface Person : NSObject {
    NSString* _name;
    NSString* _isName;
    NSString* name;
    NSString* isName;
    int pAge;
}
/**
 添加Dog属性
 */
@property (nonatomic, strong)Dog* dog;
@end

NS_ASSUME_NONNULL_END
