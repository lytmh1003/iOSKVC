//
//  newPerson.m
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/20.
//

#import "newPerson.h"

@implementation newPerson
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"Sex"]) {
        self.pSex = (NSString*) value;
    }
}
@end
