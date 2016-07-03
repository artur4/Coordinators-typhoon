//
//  ProfileCoordinator.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "ProfileCoordinator.h"
#import "ProfileControllerFactory.h"
#import "NavigationViewControllerFactory.h"

@interface ProfileCoordinator ()

@property (nonatomic) SWRevealViewController *swRevealViewController;
@property (nonatomic) ProfileControllerFactory *controllerFactory;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;

@end

@implementation ProfileCoordinator

- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController
{
    self = [super init];
    if (self)
    {
        self.swRevealViewController = swRevealViewController;
        self.controllerFactory = [ProfileControllerFactory new];
        self.navigationFactory = [NavigationViewControllerFactory new];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-= %@ is dealloc =-", NSStringFromClass([self class]));
}

- (void)start
{
    [self showProfileController];
}

- (void)showProfileController
{
    ProfileTableViewController *profileController = [self.controllerFactory createProfileTableViewController];
    UINavigationController *profileNavigation = [self.navigationFactory createNavigationControllerFromStoryboard:Profile];
    [profileNavigation pushViewController:profileController animated:NO];
    [self.swRevealViewController setFrontViewController:profileNavigation];
}

@end
