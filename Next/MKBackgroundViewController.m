//
//  MKBackgroundViewController.m
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import "MKBackgroundViewController.h"

const CGFloat MKBackgroundViewControllerTopOffset = 20.0;

@interface MKBackgroundViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation MKBackgroundViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // create & add image view
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.imageView.image = self.image;
    [self.view addSubview:self.imageView];
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageView.image = image;
}

- (void)setContentController:(UIViewController *)contentController
{
    if (_contentController == contentController) return;
    UIViewController *previous = _contentController;
    _contentController = contentController;
    
    // remove previous controller
    [previous willMoveToParentViewController:nil];
    [previous.view removeFromSuperview];
    [previous removeFromParentViewController];
    
    // add new controller
    [self addChildViewController:contentController];
    [self.view addSubview:self.contentController.view];
    [contentController didMoveToParentViewController:self];
    
    // update layout
    [self.view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    // layout content controller
    CGRect rect = self.view.bounds;
    rect.origin.y = MKBackgroundViewControllerTopOffset;
    rect.size.height -= MKBackgroundViewControllerTopOffset;
    self.contentController.view.frame = rect;
}

@end
