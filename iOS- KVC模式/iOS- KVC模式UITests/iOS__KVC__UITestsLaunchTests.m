//
//  iOS__KVC__UITestsLaunchTests.m
//  iOS- KVC模式UITests
//
//  Created by 李育腾 on 2022/9/19.
//

#import <XCTest/XCTest.h>

@interface iOS__KVC__UITestsLaunchTests : XCTestCase

@end

@implementation iOS__KVC__UITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
