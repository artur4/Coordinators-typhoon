//
//  PromotionCoordinator.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "PromotionCoordinator.h"
#import "NavigationViewControllerFactory.h"
#import "CoordinatorFactory.h"
#import "PromotionControllerFactory.h"

@interface PromotionCoordinator ()

@property (nonatomic) UINavigationController *navigation;
@property (nonatomic) PromotionControllerFactory *controllerFactory;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;
@property (nonatomic) CoordinatorFactory *coordFactory;
@end

@implementation PromotionCoordinator


- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self)
    {
        self.navigation = navigationController;
        self.controllerFactory = [PromotionControllerFactory new];
        self.navigationFactory = [NavigationViewControllerFactory new];
        self.coordFactory = [CoordinatorFactory new];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-= %@ is dealloc =-", NSStringFromClass([self class]));
}

- (void)start
{
    [self showPromotionController];
}

- (void)showPromotionController
{
    PromotionViewController *promoController = [self.controllerFactory createPromotionViewController];
    [self.navigation pushViewController:promoController animated:YES];
    
    BlockWeakSelf weakSelf = self;
    promoController.completionHandler = ^(NSInteger flow)
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
