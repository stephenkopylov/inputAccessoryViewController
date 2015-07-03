//
//  TableViewController.m
//  inputAccessoryView
//
//  Created by Admin on 04.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "TableViewController.h"
#import "inputAccessoryViewController.h"

@interface TableViewController ()
@property (nonatomic,readwrite) UIInputViewController *inputAccessoryViewController;
@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (BOOL)canBecomeFirstResponder
{
    return YES;
}


- (UIInputViewController *)inputAccessoryViewController
{
    return [inputAccessoryViewController new];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}


@end
