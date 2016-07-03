//
//  CoordinatorFactory.m
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "CoordinatorFactory.h"


@implementation CoordinatorFactory


- (AuthCoordinator *)createAuthCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController
{
    return [[AuthCoordinator alloc]initWithSWRevealViewController:swRevealController];
}

- (NewsCoordinator *)createNewsCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController
{
    return [[NewsCoordinator alloc]initWithSWRevealViewController:swRevealController];
}

- (DetailNewsCoordinator *)createDetailNewsCoordinatorWithNavigationController:(UINavigationController *)navigationController;
{
    return [[DetailNewsCoordinator alloc]initWithNavigationViewController:navigationController];
}

- (ProfileCoordinator *)createProfileCoordinatorWithSWRevealViewController:(SWRevealViewController *)swRevealController
{
    return [[ProfileCoordinator alloc]initWithSWRevealViewController:swRevealController];
}

- (PromotionCoordinator *)createPromotionCoordinatorWithNavigationController:(UINavigationController *)navigationController
{
    return [[PromotionCoordinator alloc]initWithNavigationController:navigationController];
}


@end
