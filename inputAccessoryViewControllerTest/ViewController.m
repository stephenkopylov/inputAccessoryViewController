//
//  ViewController.m
//  inputAccessoryViewControllerTest
//
//  Created by rovaev on 02.07.15.
//  Copyright (c) 2015 rovaev. All rights reserved.
//

#import "ViewController.h"
#import "inputAccessoryController.h"
@interface ViewController ()

@end

@implementation ViewController{
    inputAccessoryController *_test;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;

    // Do any additional setup after loading the view, typically from a nib.}

}

-(BOOL)canBecomeFirstResponder{
    return YES;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [UIView performWithoutAnimation:^{
        _test = nil;
        [self becomeFirstResponder];
       //[_test.view removeFromSuperview];
    }];
}

-(UIInputViewController *)inputAccessoryViewController{
    if(!_test){
        _test = [inputAccessoryController new];
    }
    return _test;

}
@end
