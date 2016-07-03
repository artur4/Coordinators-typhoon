//
//  AppCoordinator.m
//  Coordinator
//
//  Created by Brusnikin on 20.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "AppCoordinator.h"
#import "MenuCoordinator.h"

@interface AppCoordinator ()
{
    SWRevealViewController *_swRevealController;
}


@end

@implementation AppCoordinator


- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealController
{
    self = [super init];
    if (self)
    {
        _swRevealController = swRevealController;
    }
    return self;
}

- (void)start
{    
    [self.menuCoordinator start];
    [self addDependancy:self.menuCoordinator];
    
}


@end
