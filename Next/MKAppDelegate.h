//
//  MKAppDelegate.h
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import "MKVenueViewController.h"

#import <UIKit/UIKit.h>

@interface MKAppDelegate : UIResponder <UIApplicationDelegate, MKVenueViewControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
