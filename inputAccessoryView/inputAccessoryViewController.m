//
//  inputAccessoryViewController.m
//  inputAccessoryView
//
//  Created by Admin on 04.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "inputAccessoryViewController.h"

@interface inputAccessoryViewController ()

@end

@implementation inputAccessoryViewController {
    UITextField *_textField;
    CGFloat height;
    NSLayoutConstraint *_heightConstraint;
}

-(void)loadView{
    [super loadView];
    self.view.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.superview.frame), 40);
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    _textField = [UITextField new];
    _textField.backgroundColor = [UIColor whiteColor];
    _textField.layer.borderColor = [UIColor grayColor].CGColor;
    _textField.layer.borderWidth = 1;
    _textField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_textField];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[textField]-10-|" options:0 metrics:nil views:@{@"textField":_textField}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[textField]-10-|" options:0 metrics:nil views:@{@"textField":_textField}]];

}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    

    
    for ( NSLayoutConstraint *constraint in self.view.superview.constraints ) {
        if ( constraint.firstItem == self.view && constraint.firstAttribute == NSLayoutAttributeHeight ) {
        
        }
    }
}


@end
