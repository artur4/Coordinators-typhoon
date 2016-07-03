//
//  NavigationViewControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NavigationViewControllerFactory.h"

@implementation NavigationViewControllerFactory


- (UINavigationController *)createNavigationControllerFromStoryboard:(StoryboardEnum)storyboard
{
    return [UINavigationController controllerFromStoryboard:storyboard];
}

@end
