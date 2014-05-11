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
//    
//    NSMutableArray *cards = [[NSMutableArray alloc] init];
//    
//    for (int i = 0; i < 10; i++) {
//        
//        MKVenueViewController *temp = [[MKVenueViewController alloc] init];
//        temp.view.backgroundColor = [UIColor colorWithHue:arc4random()%600/600.0 saturation:0.8 brightness:1 alpha:1];
//        
//        [cards addObject: temp];
//    }
//    
//    JTCardsViewController *cardscontroller = [[JTCardsViewController alloc] initWithCards: cards];

    MKBackgroundViewController *background = [[MKBackgroundViewController alloc] init];
    
    self.window.rootViewController = background;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
