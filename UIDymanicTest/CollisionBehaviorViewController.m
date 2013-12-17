//
//  CollisionBehaviorViewController.m
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "CollisionBehaviorViewController.h"

@implementation CollisionBehaviorViewController

- (void)play:(id)sender
{
	UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:@[simpleView]];
	collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
	UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[simpleView]];
	[animator addBehavior:collisionBehavior];
	[animator addBehavior:gravity];
}

@end
