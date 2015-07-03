//
//  TableViewController.m
//  inputAccessoryView
//
//  Created by Admin on 04.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "TableViewController.h"
#import "inputAccessoryViewController.h"
#import "UIResponder+FirstResponder.h"

@interface TableViewController ()
@property (nonatomic, readwrite) UIInputViewController *inputAccessoryViewController;
@end

@implementation TableViewController

- (void)loadView
{
    [super loadView];
    self.inputAccessoryViewController = [inputAccessoryViewController new];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"didAppear %@", [UIResponder currentFirstResponder]);
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    inputAccessoryViewController *controller = (inputAccessoryViewController *)self.inputAccessoryViewController;
    
    if ( controller.textField.isFirstResponder ) {
        [controller.textField resignFirstResponder];
    }
}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}


- (BOOL)canBecomeFirstResponder
{
    return YES;
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
