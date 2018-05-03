//
//  RegisterAPI.h
//  YTK_Test
//
//  Created by 王勇 on 2018/4/27.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "YTKRequest.h"

@interface RegisterAPI : YTKRequest
- (id)initWithUsername:(NSString *)username password:(NSString *)password;
@end
