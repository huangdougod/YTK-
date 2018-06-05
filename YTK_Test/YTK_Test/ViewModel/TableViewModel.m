//
//  TableViewModel.m
//  YTK_Test
//
//  Created by 王勇 on 2018/5/3.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "TableViewModel.h"

@implementation TableViewModel
- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)headerRefreshRequestWithCallBack:(callBlack)callback{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        sleep(2);
        dispatch_async(<#dispatch_queue_t  _Nonnull queue#>, <#^(void)block#>)
    });
}
@end
