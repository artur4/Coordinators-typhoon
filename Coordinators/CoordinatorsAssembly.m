//
//  CoordinatorsAssembly.m
//  Coordinators
//
//  Created by Brusnikin on 28.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "CoordinatorsAssembly.h"
#import "AppDelegate.h"
#import "AppCoordinator.h"
#import "MenuCoordinator.h"

@implementation CoordinatorsAssembly

- (AppDelegate *)appDelegate
{
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition)
            {
                [definition injectProperty:@selector(swRevealViewController) with:[self swRevealViewController]];
                [definition injectProperty:@selector(appCoordinator) with:[self appCoordinator]];
            }];
}

- (SWRevealViewController *)swRevealViewController
{
    return [TyphoonDefinition withClass:[SWRevealViewController class]];
}

- (AppCoordinator *)appCoordinator
{
    return [TyphoonDefinition withClass:[AppCoordinator class] configuration:^(TyphoonDefinition *definition)
            {
                [definition useInitializer:@selector(initWithSWRevealViewController:) parameters:^(TyphoonMethod *initializer)
                {
                    [initializer injectParameterWith:[self swRevealViewController]];
                }];
                
                [definition injectProperty:@selector(menuCoordinator) with:[self menuCoordinator]];
            }];
}

- (MenuCoordinator *)menuCoordinator
{
    return [TyphoonDefinition withClass:[MenuCoordinator class] configuration:^(TyphoonDefinition *definition)
    {
        [definition useInitializer:@selector(initWithSWRevealViewController:) parameters:^(TyphoonMethod *initializer)
        {
            [initializer injectParameterWith:[self swRevealViewController]];
        }];
    }];
}

@end
