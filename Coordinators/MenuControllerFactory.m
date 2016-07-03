//
//  MenuControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "MenuControllerFactory.h"

@implementation MenuControllerFactory

- (MenuViewController *)createMenuViewController
{
    return [MenuViewController controllerFromStoryboard:Main];
}

@end
