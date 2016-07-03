//
//  AuthCoordinator.h
//  Coordinator
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "BaseCoordinator.h"


typedef NS_ENUM(NSUInteger, AuthActions)
{
    SignUp,
    Login,
    Hide,
};

@interface AuthCoordinator : BaseCoordinator


- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController;

@end

