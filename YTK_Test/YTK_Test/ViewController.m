//
//  ViewController.m
//  YTK_Test
//
//  Created by 王勇 on 2018/4/27.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "ViewController.h"
#import "TestRequest.h"
#import "RegisterAPI.h"

#import <AFNetworking.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpUi];
}
- (void)setUpUi{
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(pressToDoSomething) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    
    UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 40)];
    [btn1 setTitle:@"测试1" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(pressToDoSomething1) forControlEvents:UIControlEventTouchUpInside];
    btn1.backgroundColor = [UIColor redColor];
  
}
- (void)pressToDoSomething{
    TestRequest * testApi = [[TestRequest alloc]init];
    //[testApi start];
    [testApi startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"success---%@---",request.responseObject);
        
        
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {

        NSLog(@"failed---%@---",request.error.description);
        NSLog(@"----%@",request.response);
    }];
    /*
    RegisterAPI * registerApi = [[RegisterAPI alloc]initWithUsername:@"13811130549" password:@"111111"];
    [registerApi startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        
        NSLog(@"success---%@---",request.responseJSONObject);
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        
        NSLog(@"failed---%@---",request);
    }];
  */
}
- (void)pressToDoSomething1{
    NSDictionary * dic = @{@"username":@"13811130549",
                           @"password":@"123456",
                           @"verificationCode":@"unVerificationCode",
                           @"source":@"1",
                           @"type":@"1"};
    NSError * error;
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&error];
    NSString * base64Str = [jsonData base64EncodedStringWithOptions:0];
    NSDictionary * dict = @{@"encrycode" : base64Str};
    
    
    
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    //manager.responseSerializer = [AFHTTPResponseSerializer serializer];
   // manager.responseSerializer = [AFJSONResponseSerializer serializer];
     manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json",@"text/xml", @"text/javascript", @"text/plain",@"text/html",nil];

    [manager POST:@"http://www.54shouhushen.com/Home/Users/login" parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        
        NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dict);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error.description);
        //NSLog(@"failed");
    }];
    
//    [manager GET:@"http://www.54shouhushen.com/Interface_1_1_6/Information/informationList" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"success%@",responseObject);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"get-failed---");
//    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
