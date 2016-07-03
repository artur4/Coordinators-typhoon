//
//  PromotionControllerFactory.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "PromotionViewController.h"
#import "UIViewController+Storyboard.h"

@interface PromotionControllerFactory : NSObject

- (PromotionViewController *)createPromotionViewController;

@end
