//
//  CustomBehavior.m
//  UIDynamicTest
//
//  Created by Green on 13/12/17.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import "CustomBehavior.h"

@implementation CustomBehavior

- (instancetype)initWithItem:(id<UIDynamicItem>)inItem
{
	self = [super init];
	if (self) {
		UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[inItem]];
		gravityBehavior.gravityDirection = CGVectorMake(0.0, -1.0);
        UICollisionBehavior *collosionBehavior = [[UICollisionBehavior alloc] initWithItems:@[inItem]];
		[collosionBehavior addBoundaryWithIdentifier:@"simple1" fromPoint:CGPointMake(0.0, CGRectGetHeight([UIScreen mainScreen].bounds) - 140.0) toPoint:CGPointMake(CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds) - 140.0)];
		collosionBehavior.collisionDelegate = self;
        [self addChildBehavior:gravityBehavior];
        [self addChildBehavior:collosionBehavior];
	}
	return self;
}


- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier
{
	UIGravityBehavior *gravityBehavior = (UIGravityBehavior *)self.childBehaviors[0];
	if ([(NSString *)identifier isEqualToString:@"simple1"]) {
		[behavior removeBoundaryWithIdentifier:identifier];

		[behavior addBoundaryWithIdentifier:@"simple2" forPath:[UIBezierPath bezierPathWithRect:CGRectMake(0, 64.0, CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds) - 64.0)]];
		gravityBehavior.gravityDirection = CGVectorMake(0, 0.05);
	}
	else if ([(NSString *)identifier isEqualToString:@"simple2"] && gravityBehavior.gravityDirection.dy >= 0) {
		gravityBehavior.gravityDirection = CGVectorMake(0.0, -1.5);
	}

}

@end
