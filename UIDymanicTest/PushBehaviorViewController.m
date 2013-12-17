//
//  PushBehaviorViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "PushBehaviorViewController.h"

@implementation PushBehaviorViewController

- (void)play:(id)sender
{
	simpleView.transform = CGAffineTransformMakeRotation(120.0);
	simpleView.center = self.view.center;

	UIPushBehavior *pushBehavior = [[UIPushBehavior alloc] initWithItems:@[simpleView] mode:UIPushBehaviorModeContinuous];
	pushBehavior.angle = M_PI_2; // unit vector
	pushBehavior.magnitude = 1.0; // default 0.

//	pushBehavior.pushDirection = CGVectorMake(0.0, 1.0); // angle * magnitude;

	[animator addBehavior:pushBehavior];
}

@end
