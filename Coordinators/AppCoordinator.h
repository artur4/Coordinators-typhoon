//
//  AppCoordinator.h
//  Coordinator
//
//  Created by Brusnikin on 20.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "BaseCoordinator.h"
@class MenuCoordinator;

@interface AppCoordinator : BaseCoordinator 

- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealController;

@property (nonatomic) MenuCoordinator *menuCoordinator;

@end
