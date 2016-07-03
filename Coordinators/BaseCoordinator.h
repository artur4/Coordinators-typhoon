//
//  BaseCoordinator.h
//  Coordinator
//
//  Created by Brusnikin on 21.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import UIKit;
@import Foundation;

#import "Coordinator.h"
#import "SWRevealViewController.h"

#define BlockWeakObject(o) __typeof(o) __weak
#define BlockWeakSelf BlockWeakObject(self)

@interface BaseCoordinator : NSObject <Coordinator>

@property (copy, nonatomic) CoordinatorHandler flowCompletionHandler;
@property (nonatomic) NSMutableArray <Coordinator> *childCoordinators;

- (void)addDependancy:(id <Coordinator>)coordinator;
- (void)removeDependancy:(id <Coordinator>)coordinator;

@end
