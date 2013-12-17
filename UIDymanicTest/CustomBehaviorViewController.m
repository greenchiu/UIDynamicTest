//
//  CustomDynamicViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/17.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "CustomBehaviorViewController.h"
#import "CustomBehavior.h"

@interface CustomBehaviorViewController ()

@end

@implementation CustomBehaviorViewController

- (void)play:(id)sender
{
	simpleView.frame = CGRectMake(0.0, CGRectGetHeight(self.view.frame) + 100.0, 100.0, 100.0);
	CustomBehavior *customBehavior = [[CustomBehavior alloc] initWithItem:simpleView];
	[animator addBehavior:customBehavior];
}


@end
