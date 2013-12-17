//
//  UIAttachmentViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "AttachmentBehaviorViewController.h"


@implementation AttachmentBehaviorViewController

- (void)play:(id)sender
{
	UIAttachmentBehavior *attchmentBehavior = nil;
	attchmentBehavior = [[UIAttachmentBehavior alloc] initWithItem:simpleView attachedToAnchor:self.view.center];

	attchmentBehavior.length = 0.0;
	attchmentBehavior.damping = 0.7;
	attchmentBehavior.frequency = 3.0;
	[animator addBehavior:attchmentBehavior];
}

@end
