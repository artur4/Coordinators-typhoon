//
//  BaseCoordinator.m
//  Coordinator
//
//  Created by Brusnikin on 21.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "BaseCoordinator.h"

@implementation BaseCoordinator

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self childCoordinators];
    }
    return self;
}

- (void)start
{
    NSAssert(nil, @"must be overriden");
}

- (void)addDependancy:(id<Coordinator>)coordinator
{
    [self.childCoordinators addObject:coordinator];
}

- (void)removeDependancy:(id<Coordinator>)coordinator
{
    if ([self.childCoordinators containsObject:coordinator])
    {
        [self.childCoordinators removeObject:coordinator];
    }
}

- (NSMutableArray <Coordinator> *)childCoordinators
{
    if (!_childCoordinators)
    {
        _childCoordinators = (NSMutableArray <Coordinator> *)[NSMutableArray new];
    }
    return _childCoordinators;
}

@end
