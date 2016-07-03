//
//  MenuCoordinator.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "MenuCoordinator.h"
#import "CoordinatorFactory.h"
#import "MenuControllerFactory.h"
#import "NavigationViewControllerFactory.h"

@interface MenuCoordinator ()

@property (nonatomic) CoordinatorFactory *coordFactory;
@property (nonatomic) MenuControllerFactory *controllerFactory;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;

@property (assign, nonatomic) BOOL isUserAuth;

@end

@implementation MenuCoordinator


- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController
{
    self = [super init];
    if (self)
    {
        self.coordFactory = [CoordinatorFactory new];
        self.controllerFactory = [MenuControllerFactory new];
        self.navigationFactory = [NavigationViewControllerFactory new];
        self.swRevealViewController = swRevealViewController;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"-= %@ is dealloc =-", NSStringFromClass([self class]));
}

- (void)start
{
    [self showMenuController];
    
    //_isUserAuth ? [self showMenuController] : [self runAuthCoordinator];
}


#pragma mark - Run controllers flow


- (void)showMenuController
{
    // Для работы бокового меню необходимо иметь rear controller
    MenuViewController *menuController = [self.controllerFactory createMenuViewController];
    [self.swRevealViewController setRearViewController:menuController];
    
    // Запускаем координатор, чтобы установить front controller
    [self runNewsCoordinator];
    
    BlockWeakSelf weakSelf = self;
    menuController.completionHandler = ^(NSInteger flow)
    {
        // Cначала мы должны удалить предыдущий координатор
        if (weakSelf.childCoordinators.lastObject)
        {
            [weakSelf.childCoordinators.lastObject flowCompletionHandler]();
        }
        
        switch (flow)
        {
            case 0:
                [weakSelf runProfileCoordinator];
                break;
            case 1:
                [weakSelf runNewsCoordinator];
                break;
            case 2:
                [weakSelf runAuthCoordinator];
                break;
            default:
                break;
        }
        
        [self.swRevealViewController setFrontViewPosition:FrontViewPositionLeft animated:YES];
    };
}


#pragma mark - Run coordinators flow


- (void)runAuthCoordinator
{
    AuthCoordinator *authCoord = [self.coordFactory createAuthCoordinatorWithSWRevealViewController:self.swRevealViewController];
    [self addDependancy:authCoord];
    [authCoord start];
    
    BlockWeakSelf weakSelf = self;
    __weak AuthCoordinator *weakAuthCoord = authCoord;
    
    authCoord.flowCompletionHandler = ^{
        
        weakSelf.isUserAuth = YES;
        [weakSelf start];
        [weakSelf removeDependancy:weakAuthCoord];
    };
}

- (void)runNewsCoordinator
{
    NewsCoordinator *newsCoord = [self.coordFactory createNewsCoordinatorWithSWRevealViewController:self.swRevealViewController];
    [self addDependancy:newsCoord];
    [newsCoord start];
    
    __weak NewsCoordinator *weakNewsCoord = newsCoord;
    BlockWeakSelf weakSelf = self;
    
    newsCoord.flowCompletionHandler = ^{
        [weakSelf removeDependancy:weakNewsCoord];
    };
}

- (void)runProfileCoordinator
{
    ProfileCoordinator *profileCoord = [self.coordFactory createProfileCoordinatorWithSWRevealViewController:self.swRevealViewController];
    [self addDependancy:profileCoord];
    [profileCoord start];
    
    __weak ProfileCoordinator *weakProfileCoord = profileCoord;
    BlockWeakSelf weakSelf = self;
    
    profileCoord.flowCompletionHandler = ^{
        [weakSelf removeDependancy:weakProfileCoord];
    };
}

@end
