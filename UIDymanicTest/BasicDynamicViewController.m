//
//  BasicDynamicViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "BasicDynamicViewController.h"

@implementation BasicDynamicViewController

- (instancetype)init
{
	self = [super init];
	if (self) {
	}
	return self;
}

- (void)loadView
{
	[super loadView];
	self.view.backgroundColor = [UIColor whiteColor];
	animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
	animator.delegate = self;

	simpleView = [[UIView alloc] initWithFrame:CGRectMake(0.0, 64.0, 100.0, 100.0)];
	simpleView.backgroundColor = [UIColor lightGrayColor];
	[self.view addSubview:simpleView];
}

- (void)viewDidAppear:(BOOL)animated
{
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(play:)];
}

- (void)play:(id)sender
{
	
}

@end
