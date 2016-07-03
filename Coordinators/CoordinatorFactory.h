//
//  CoordinatorFactory.h
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import UIKit;
@import Foundation;

#import "AuthCoordinator.h"
#import "NewsCoordinator.h"
#import "DetailNewsCoordinator.h"
#import "ProfileCoordinator.h"
#import "PromotionCoordinator.h"
#import "SWRevealViewController.h"

#import "NSString+Storyboard.h"
#import "UIViewController+Storyboard.h"

@interface CoordinatorFactory : NSObject

- (AuthCoordinator *)createAuthCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController;
- (NewsCoordinator *)createNewsCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController;
- (DetailNewsCoordinator *)createDetailNewsCoordinatorWithNavigationController:(UINavigationController *)navigationController;
- (ProfileCoordinator *)createProfileCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController;
- (PromotionCoordinator *)createPromotionCoordinatorWithNavigationController:(UINavigationController *)navigationController;

@end
