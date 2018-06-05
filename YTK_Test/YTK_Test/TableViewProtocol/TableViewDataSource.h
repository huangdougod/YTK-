//
//  TableViewDataSource.h
//  YTK_Test
//
//  Created by 王勇 on 2018/5/3.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TableViewDataSource : NSObject<UITableViewDataSource>
@property (nonatomic, strong) NSArray *array;
@end
