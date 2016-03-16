//
//  NSStringTest.m
//  IOS_Utils
//
//  Created by leipei on 16/3/16.
//  Copyright © 2016年 leipei. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+My_Extend.h"

@interface NSStringTest : XCTestCase

@end

@implementation NSStringTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testmd5{
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString *abc = @"abc";
    NSString *md5Result = [abc md5];
    NSLog(@"md5 result is :%@",md5Result);
    XCTAssertTrue([md5Result isEqual:@"900150983CD24FB0D6963F7D28E17F72"],@"The md5 is not equal");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
