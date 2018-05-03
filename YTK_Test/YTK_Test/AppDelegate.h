//
//  AppDelegate.h
//  YTK_Test
//
//  Created by 王勇 on 2018/4/27.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

