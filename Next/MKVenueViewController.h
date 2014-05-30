//
//  MKVenueViewController.h
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MKVenueViewControllerDelegate;

@interface MKVenueViewController : UIViewController

@property (nonatomic, strong) UIImage *venueImage;
@property (nonatomic, strong) id<MKVenueViewControllerDelegate> delegate;

@end


@protocol MKVenueViewControllerDelegate <NSObject>
- (void)venueViewControllerShouldDismiss;
@end