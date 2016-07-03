//
//  UIViewController+Storyboard.m
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "UIViewController+Storyboard.h"

@implementation UIViewController (Storyboard)


+ (instancetype)controllerFromStoryboard:(StoryboardEnum)storyboardName
{
    UIStoryboard *storyboard =
    [UIStoryboard storyboardWithName:[NSString storyboardWithName:storyboardName] bundle:nil];

    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

@end
