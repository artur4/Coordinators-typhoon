//
//  NavigationViewControllerFactory.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "UIViewController+Storyboard.h"

@interface NavigationViewControllerFactory : NSObject


- (UINavigationController *)createNavigationControllerFromStoryboard:(StoryboardEnum)storyboard;

@end
