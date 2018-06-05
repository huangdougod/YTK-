//
//  TableViewModel.h
//  YTK_Test
//
//  Created by 王勇 on 2018/5/3.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^callBlack) (NSArray *array);
@interface TableViewModel : NSObject
- (void)headerRefreshRequestWithCallBack:(callBlack)callback;
- (void)footerRefreshRequestWithCallBack:(callBlack)callback;

@end
