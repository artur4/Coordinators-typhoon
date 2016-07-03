//
//  MenuControllerFactory.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "MenuViewController.h"
#import "UIViewController+Storyboard.h"

@interface MenuControllerFactory : NSObject

- (MenuViewController *)createMenuViewController;

@end
