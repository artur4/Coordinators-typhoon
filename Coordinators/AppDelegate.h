//
//  AppDelegate.h
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AppCoordinator;
@class SWRevealViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) AppCoordinator *appCoordinator;

@property (nonatomic) SWRevealViewController *swRevealViewController;


@end

