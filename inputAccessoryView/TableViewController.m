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
#import "PushViewController.h"

static BOOL openKeyboard;

@interface TableViewController ()
@property (nonatomic, readwrite) UIInputViewController *inputAccessoryViewController;
@end

@implementation TableViewController {
    inputAccessoryViewController *_iavc;
}


+ (void)load
{
    openKeyboard = NO;
}


- (void)loadView
{
    [super loadView];
    _iavc = [inputAccessoryViewController new];
    self.inputAccessoryViewController = _iavc;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
    UIBarButtonItem *firstItem = [[UIBarButtonItem alloc] initWithTitle:@"Alert" style:UIBarButtonItemStylePlain target:self action:@selector(alert)];
    UIBarButtonItem *secondItem = [[UIBarButtonItem alloc] initWithTitle:@"Push" style:UIBarButtonItemStylePlain target:self action:@selector(push)];
    
    self.navigationItem.rightBarButtonItems = @[firstItem, secondItem];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _iavc.openKeyboard = openKeyboard;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"didAppear %@", [UIResponder currentFirstResponder]);
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ( _iavc.textField.isFirstResponder ) {
        openKeyboard = YES;
        [_iavc.textField resignFirstResponder];
    }
    else {
        openKeyboard = NO;
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


#pragma mark - custom methods

- (void)alert
{
}


- (void)push
{
    [self.navigationController pushViewController:[PushViewController new] animated:YES];
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
