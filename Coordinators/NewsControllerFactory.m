//
//  NewsControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NewsControllerFactory.h"

@implementation NewsControllerFactory


- (NewsViewController *)createNewsViewController;
{
    return [NewsViewController controllerFromStoryboard:News];
}

@end
