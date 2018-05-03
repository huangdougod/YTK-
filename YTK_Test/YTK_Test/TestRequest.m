//
//  TestRequest.m
//  YTK_Test
//
//  Created by 王勇 on 2018/4/27.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "TestRequest.h"

@implementation TestRequest
- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}
- (NSString *)requestUrl{
    return @"/Interface_1_1_6/Information/informationList";
}
//-(id)requestArgument{
//    return nil;
//}
- (YTKRequestMethod)requestMethod{
    return YTKRequestMethodGET;
}

@end
