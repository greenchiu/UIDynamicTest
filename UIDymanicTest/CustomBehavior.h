//
//  CustomBehavior.h
//  UIDynamicTest
//
//  Created by Green on 13/12/17.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomBehavior : UIDynamicBehavior <UICollisionBehaviorDelegate>

- (instancetype)initWithItem:(id <UIDynamicItem>)inItem;
@end
