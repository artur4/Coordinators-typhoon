//
//  DetailNewsCoordinator.m
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "DetailNewsCoordinator.h"
#import "DetailNewsControllerFactory.h"
#import "NavigationViewControllerFactory.h"
#import "CoordinatorFactory.h"

@interface DetailNewsCoordinator ()

@property (nonatomic) DetailNewsControllerFactory *controllerFactory;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;
@property (nonatomic) UINavigationController *navigation;
@property (nonatomic) CoordinatorFactory *coordFactory;
@end

@implementation DetailNewsCoordinator

- (instancetype)initWithNavigationViewController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self)
    {
        self.controllerFactory = [DetailNewsControllerFactory new];
        self.navigationFactory = [NavigationViewControllerFactory new];
        self.coordFactory = [CoordinatorFactory new];
        self.navigation = navigationController;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-= %@ is dealloc =-", NSStringFromClass([self class]));
}

- (void)start
{
    [self showDetailNewsController];
}


#pragma mark - Run controllers flow


- (void)showDetailNewsController
{
    NewsDetailViewController *detailNews = [self.controllerFactory createNewsDetailViewController];
    [self.navigation pushViewController:detailNews animated:YES];
    
    BlockWeakSelf weakSelf = self;
    detailNews.completionHandler = ^(NSInteger flow)
    {
        [weakSelf runPromotionCoordinator];
    };
}


#pragma mark - Run coordinators flow


- (void)runPromotionCoordinator
{
    PromotionCoordinator *promoCoord = [self.coordFactory createPromotionCoordinatorWithNavigationController:self.navigation];
    [self addDependancy:promoCoord];
    [promoCoord start];
}

@end
