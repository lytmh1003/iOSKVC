//
//  Person.m
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/19.
//

#import "Person.h"
#import "Dog.h"
@implementation Person
- (instancetype)init {
    if (self = [super init]) {
        // 属性
//        _dog = [[Dog alloc] init];
        //成员变量
        _name = @"_name";
        _isName = @"_isName";
        name = @"name";
        isName = @"isName";
    }
    return self;
}

/***
 第一优先级，3个Setter方法，getKey > key >isKey
 */
//- (NSString*)name {
//    return @"Hank";
//}
//- (NSString*)getName {
//    return @"getHank";
//}
////- (int)getName {
////    /***
////     发现第二优先级方法的来源
////     name被包装成了NSDCFNumeber类型
////     */
////    return 10;
////}
//- (NSString*)isName {
//    return @"isHank";
//}

/***
 发现来源- 在3个getter方法里返回一个 int 发现系统包装成了
 第二优先级，当3个getter方法不存在的时候，系统调用这个方法，生成一个NSKeyValueArray数组！新发现
 */
- (NSInteger)countOfName {
    return 12;
}
- (id)objectInNameAtIndex :(NSInteger)index{
    return @"objectName";
}

/***
 第三优先级，当上述的相关方法都不存在的时候，我们发现iOS提供了看+ (BOOL)accessInstanceVariablesDirectly返回值的方法
 - 默认YES
 - YES- 找成员变量，_name >_isName > name >isName
 - NO- 异常，报错- 尝试（可以重写- (id)valueForUndefinedKey:(NSString *)key ) 使其 return nil;
 */
+ (BOOL)accessInstanceVariablesDirectly {
    return NO;
    
}
- (id)valueForUndefinedKey:(NSString *)key {
    return nil;
}
@end
