//
//  Attchment2BehaviorViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/17.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "Attachment2BehaviorViewController.h"

@interface Attachment2BehaviorViewController ()

@end

@implementation Attachment2BehaviorViewController


- (void)play:(id)sender
{
	UIAttachmentBehavior *attchmentBehavior = nil;

	UIView *targetView = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame) - 48.0, CGRectGetHeight(self.view.frame) - 48.0, 48.0, 48.0)];
	targetView.backgroundColor = [UIColor redColor];
	[self.view addSubview:targetView];
	attchmentBehavior = [[UIAttachmentBehavior alloc] initWithItem:simpleView attachedToItem:targetView];

	attchmentBehavior.length = 0.0;
	attchmentBehavior.damping = 0.7;
	attchmentBehavior.frequency = 3.0;
	[animator addBehavior:attchmentBehavior];
}

@end
