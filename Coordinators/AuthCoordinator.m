//
//  AuthCoordinator.m
//  Coordinator
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "AuthCoordinator.h"
#import "SWRevealViewController.h"
#import "AuthControllersFactory.h"
#import "NavigationViewControllerFactory.h"
#import "CoordinatorFactory.h"

@interface AuthCoordinator ()

@property (nonatomic) UINavigationController *authNavigation;
@property (nonatomic) SWRevealViewController *swRevealViewController;
@property (nonatomic) AuthControllersFactory *controllerFactory;
@property (nonatomic) NavigationViewControllerFactory *navigationFactory;
@property (nonatomic) CoordinatorFactory * coordFactory;
@property (nonatomic) UINavigationController *navigationController;

@end

@implementation AuthCoordinator


- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController
{
    self = [super init];
    if (self)
    {
        self.coordFactory = [CoordinatorFactory new];
        self.controllerFactory = [AuthControllersFactory new];
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
    [self showLoginController];
}


#pragma mark - Run controllers flow


- (void)showLoginController
{
    LoginViewController *loginController = [self.controllerFactory createLoginViewController];
    self.navigationController = [self.navigationFactory createNavigationControllerFromStoryboard:Auth];
    [self.navigationController pushViewController:loginController animated:NO];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.swRevealViewController presentViewController:self.navigationController animated:YES completion:nil];
    });
    
    BlockWeakSelf weakSelf = self;
    loginController.completionHandler = ^(NSInteger result)
    {
        switch (result)
        {
            case SignUp:
                [weakSelf showSignupController];
                break;
            case Login:
                [weakSelf.navigationController dismissViewControllerAnimated:YES completion:nil];
            case Hide:
                NSLog(@"Hide");
                break;
            default:
                break;
        }
    };
}

- (void)showSignupController
{
    BlockWeakSelf weakSelf = self;
    
    SignupViewController *signupController = [self.controllerFactory createSignupViewController];
    [self.navigationController pushViewController:signupController animated:YES];
    
    signupController.completionHandler = ^(NSInteger result)
    {
        switch (result)
        {
            case SignUp:
                weakSelf.flowCompletionHandler();
                    NSLog(@"SignUp");
                break;
            case Login:
                NSLog(@"Login");
            case Hide:
                NSLog(@"Hide");
                break;
            default:
                break;
        }
    };
}

@end
