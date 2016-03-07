//
//  ViewController.m
//  MyApp
//
//  Created by zj.feng on 16/3/3.
//  Copyright (c) 2016年 zj.feng. All rights reserved.
//

#import "ViewController.h"

#import <MyFramework/MyFramework.h>

@interface ViewController ()

@end

//#pragma mark 夏利
//
//@interface ViewController ()
//
//@end

@implementation ViewController

- (IBAction)setText:(id)sender {
    UITextView *text = [[UITextView alloc ]init];
    //[self.view addSubview:text];
    text.backgroundColor = [UIColor grayColor];
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor =[UIColor blueColor];
    
    text.inputAccessoryView = view;
}


- (IBAction)Btn_show:(id)sender {
    
    MyClass *x = [[MyClass alloc]init];
    NSString *message = [x getMessage];
    [[[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"Yes" otherButtonTitles:@"No", nil] show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
