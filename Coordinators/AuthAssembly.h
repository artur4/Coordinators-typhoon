//
//  AuthAssembly.h
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/Typhoon.h>

@class LoginViewController;
@class SignupViewController;

@interface AuthAssembly : TyphoonAssembly

- (LoginViewController *)loginViewController;
- (SignupViewController *)signupViewController;

@end
