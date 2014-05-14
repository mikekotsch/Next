//
//  MKVenueViewController.m
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <GPUImage.h>

#import "MKVenueViewController.h"

@interface MKVenueViewController ()
@property (nonatomic, strong) UIImageView *venueImageView;
@end

@implementation MKVenueViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.venueImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.venueImageView.image = self.venueImage;
    [self.view addSubview:self.venueImageView];
    
    [self.view sendSubviewToBack:self.venueImageView];
    
    self.view.layer.cornerRadius = 20;
}

- (void)setVenueImage:(UIImage *)venueImage {
    
    GPUImageiOSBlurFilter *blur = [[GPUImageiOSBlurFilter alloc] init];
    blur.blurRadiusInPixels = 3;
    UIImage *blurredImage = [blur imageByFilteringImage:venueImage];
    
    _venueImage = blurredImage;
    self.venueImageView.image = blurredImage;
}

@end
