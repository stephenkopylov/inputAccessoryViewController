//
//  inputAccessoryController.m
//  inputAccessoryViewControllerTest
//
//  Created by rovaev on 02.07.15.
//  Copyright (c) 2015 rovaev. All rights reserved.
//

#import "inputAccessoryController.h"
#import "myTF.h"

@interface inputAccessoryController ()

@end

@implementation inputAccessoryController

-(void)loadView{
    [super loadView];
    self.view.frame =  CGRectMake(0, 0, 100, 60);
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:testView];
    
    _testTF = [[myTF alloc] initWithFrame:CGRectMake(30, 0, 50, 20)];
    _testTF.backgroundColor = [UIColor greenColor];
    [testView addSubview:_testTF];
    
    _testTF.inputAccessoryView = self.view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"dissapeared");
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        NSLog(@"appeared");
    [_testTF becomeFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
