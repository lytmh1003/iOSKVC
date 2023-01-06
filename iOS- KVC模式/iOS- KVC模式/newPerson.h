//
//  newPerson.h
//  iOS- KVC模式
//
//  Created by 李育腾 on 2022/9/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface newPerson : NSObject
@property (nonatomic, assign) NSInteger pAge;
@property (nonatomic, copy) NSString* pName;
@property (nonatomic, copy) NSString* pSex;
@end

NS_ASSUME_NONNULL_END
