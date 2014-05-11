//
//  MKBackgroundViewController.m
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import "MKBackgroundViewController.h"

@interface MKBackgroundViewController ()

@end

@implementation MKBackgroundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backgroundImageView.image = [self.backgroundImageView.image resizableImageWithCapInsets:UIEdgeInsetsZero
                                                                                    resizingMode:UIImageResizingModeTile];
}

@end
