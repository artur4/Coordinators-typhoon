//
//  AuthControllersFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "AuthControllersFactory.h"

@implementation AuthControllersFactory

- (LoginViewController *)createLoginViewController
{
    return [LoginViewController controllerFromStoryboard:Auth];
}

- (SignupViewController *)createSignupViewController
{
    return [SignupViewController controllerFromStoryboard:Auth];
}

@end
