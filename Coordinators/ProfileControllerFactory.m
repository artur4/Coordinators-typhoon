//
//  ProfileControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "ProfileControllerFactory.h"

@implementation ProfileControllerFactory

- (ProfileTableViewController *)createProfileTableViewController
{
    return [ProfileTableViewController controllerFromStoryboard:Profile];
}

@end
