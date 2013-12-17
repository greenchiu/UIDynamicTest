//
//  BasicDynamicViewController.h
//  UIDynamicTest
//
//  Created by Green on 13/12/16.
//  Copyright (c) 2013年 Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicDynamicViewController : UIViewController <UIDynamicAnimatorDelegate>
{
	UIView *simpleView;
	UIDynamicAnimator *animator;
}

- (void)play:(id)sender;

@end
