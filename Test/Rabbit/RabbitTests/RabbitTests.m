//
//  RabbitTests.m
//  RabbitTests
//
//  Created by Htain Lin Shwe on 18/4/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Rabbit.h"

@interface RabbitTests : XCTestCase

@end

@implementation RabbitTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRabbit {
    // This is an example of a functional test case.
  
  NSString *json = [[NSString alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"sample" ofType:@"json"] encoding:NSUTF8StringEncoding error:nil];
  
  NSData *data =[json dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary *words = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
  
  NSArray *zawgyi = words[@"zg"];
  NSArray *uni = words[@"uni"];
  
  for (int i=0 ; i< zawgyi.count; i++) {
    
    XCTAssertEqualObjects([Rabbit uni2zg:uni[i]], zawgyi[i]);
    XCTAssertEqualObjects([Rabbit zg2uni:zawgyi[i]], uni[i]);
    
  }
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
