//
//  AuthControllersFactory.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "LoginViewController.h"
#import "SignupViewController.h"
#import "UIViewController+Storyboard.h"

@interface AuthControllersFactory : NSObject


- (LoginViewController *)createLoginViewController;
- (SignupViewController *)createSignupViewController;

@end
