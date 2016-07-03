//
//  NewsAssembly.m
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//
@import UIKit;

#import "NewsAssembly.h"
#import "NewsDataSource.h"
#import "NewsViewController.h"
#import "NewsDetailViewController.h"
#import "ServerManager.h"

@implementation NewsAssembly

- (NewsViewController *)newsViewController
{
    return [TyphoonDefinition withClass:[NewsViewController class] configuration:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(newsDataSource) with:[self newsDataSource]];
    }];
}

- (NewsDetailViewController *)newsDetailViewController
{
    return [TyphoonDefinition withClass:[NewsDetailViewController class] configuration:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(newsDataSource) with:[self newsDataSource]];
    }];
}

- (NewsDataSource *)newsDataSource
{
    return [TyphoonDefinition withClass:[NewsDataSource class] configuration:^(TyphoonDefinition *definition)
    {
        [definition injectProperty:@selector(serverManager) with:[self serverManager]];
        definition.scope = TyphoonScopeSingleton;
    }];
}

- (ServerManager *)serverManager
{
    return [TyphoonDefinition withClass:[ServerManager class]];
}

@end
