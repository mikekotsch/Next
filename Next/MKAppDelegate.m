//
//  MKAppDelegate.m
//  Next
//
//  Created by Mike Kotsch on 11/05/14.
//  Copyright (c) 2014 Mike Kotsch. All rights reserved.
//

#import <JTCardsViewController.h>
#import "MKVenueViewController.h"
#import "MKBackgroundViewController.h"

#import "MKAppDelegate.h"

@implementation MKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    MKBackgroundViewController *background = [[MKBackgroundViewController alloc] init];
    
    background.image = [[UIImage imageNamed:@"back"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeStretch];
    background.contentController = [self cardsControllerWithCardCount:4];
    
    self.window.rootViewController = background;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (JTCardsViewController*)cardsControllerWithCardCount:(NSInteger)cardCount
{
    NSMutableArray *cards = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < cardCount; i++) {
        
        MKVenueViewController *temp = [[MKVenueViewController alloc] init];
        
        // temp.view.backgroundColor = [UIColor colorWithHue:arc4random()%600/600.0 saturation:0.8 brightness:1 alpha:1];
        temp.venueImage = [[UIImage imageNamed:@"back"] resizableImageWithCapInsets:UIEdgeInsetsZero resizingMode:UIImageResizingModeStretch];
        
        [cards addObject: temp];
    }
    
    return [[JTCardsViewController alloc] initWithCards: cards];
}

@end