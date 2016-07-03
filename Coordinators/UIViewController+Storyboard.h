//
//  UIViewController+Storyboard.h
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import UIKit;

#import "NSString+Storyboard.h"

@interface UIViewController (Storyboard)

+ (instancetype)controllerFromStoryboard:(StoryboardEnum)storyboardName;

@end
