//
//  AuthAssembly.m
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "AuthAssembly.h"
#import "AuthDataSource.h"
#import "LoginViewController.h"
#import "SignupViewController.h"

@implementation AuthAssembly


- (LoginViewController *)loginViewController
{
    return [TyphoonDefinition withClass:[LoginViewController class] configuration:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(dataSource)]; //with:[self dataSource]];
    }];
}

- (SignupViewController *)signupViewController
{
    return [TyphoonDefinition withClass:[SignupViewController class] configuration:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(dataSource)]; //with:[self dataSource]];
    }];
}

- (AuthDataSource *)dataSource
{
    return [TyphoonDefinition withClass:[AuthDataSource class] configuration:^(TyphoonDefinition *definition)
    {
        definition.scope = TyphoonScopeSingleton;
    }];
}

@end
