//
//  RegisterAPI.m
//  YTK_Test
//
//  Created by 王勇 on 2018/4/27.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "RegisterAPI.h"

@implementation RegisterAPI {
    NSString *_username;
    NSString *_password;
}
//初始化的时候将两个参数值传入
- (id)initWithUsername:(NSString *)username password:(NSString *)password {
    self = [super init];
    if (self) {
        _username = username;
        _password = password;
    }
    return self;
}

//需要和baseUrl拼接的地址
- (NSString *)requestUrl {
    // “ http://www.yuantiku.com ” 在 YTKNetworkConfig 中设置，这里只填除去域名剩余的网址信息
//    return @"/iphone/register";
    //http://www.54shouhushen.com/Home/Users/register
    return @"/Home/Users/register";
}

//请求方法
- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodPOST;
}

//请求体
- (id)requestArgument {
//    return @{
//             @"username": _username,
//             @"password": _password
//             };
    
    NSDictionary * dic = @{@"username":_username,
                           @"password":_password,
                           @"nickname":@"crycry",
                           @"source":@"1"};
    NSError * error;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    NSString * base64Str = [jsonData base64EncodedStringWithOptions:0];
//    NSDictionary * dict = @{@"encrycode" : base64Str};
    
    return @{@"encrycode" : base64Str};
    
    

}
//- (id)jsonValidator{
//    return @{@"encrycode":[NSString class]};
//}



@end
