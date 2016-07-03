//
//  NewsCoordinator.m
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NewsCoordinator.h"
#import "CoordinatorFactory.h"
#import "NavigationViewControllerFactory.h"
#import "NewsControllerFactory.h"

@interface NewsCoordinator ()

@property (nonatomic) CoordinatorFactory *coordFactory;
@property (nonatomic) SWRevealViewController *swRevealViewController;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;
@property (nonatomic) NewsControllerFactory *controllerFactory;
@property (nonatomic) UINavigationController *navigation;
@end

@implementation NewsCoordinator


- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController
{
    self = [super init];
    if (self)
    {
        self.coordFactory = [CoordinatorFactory new];
        self.controllerFactory = [NewsControllerFactory new];
        self.navigationFactory = [NavigationViewControllerFactory new];
        
        self.swRevealViewController = swRevealViewController;
        self.navigation = [self.navigationFactory createNavigationControllerFromStoryboard:Main];
        
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-= %@ is dealloc =-", NSStringFromClass([self class]));
}

- (void)start
{
    [self showNewsController];
}


#pragma mark - Run controllers flow


- (void)showNewsController
{
    NewsViewController *newsController = [self.controllerFactory createNewsViewController];
    [self.navigation pushViewController:newsController animated:NO];
    [self.swRevealViewController setFrontViewController:self.navigation];
    
    BlockWeakSelf weakSelf = self;
    newsController.completionHandler = ^(NSInteger flow)
    {
        [weakSelf runDetailNewsCoordinator];
    };
}


#pragma mark - Run coordinators flow


- (void)runDetailNewsCoordinator
{
    DetailNewsCoordinator *detailCoord = [self.coordFactory createDetailNewsCoordinatorWithNavigationController:self.navigation];
    [self addDependancy:detailCoord];
    [detailCoord start];
}

@end
