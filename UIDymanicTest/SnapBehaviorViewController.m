//
//  SnapBehaviorViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "SnapBehaviorViewController.h"

@interface SnapBehaviorViewController () <UIDynamicAnimatorDelegate>

@end

@implementation SnapBehaviorViewController

- (void)play:(id)sender
{
	UISnapBehavior *snapBehavior = [[UISnapBehavior alloc] initWithItem:simpleView snapToPoint:self.view.center];
	snapBehavior.damping = 0.5;
	[animator addBehavior:snapBehavior];
}

@end
