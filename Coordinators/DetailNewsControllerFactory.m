//
//  DetailNewsControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "DetailNewsControllerFactory.h"

@implementation DetailNewsControllerFactory

- (NewsDetailViewController *)createNewsDetailViewController
{
    return [NewsDetailViewController controllerFromStoryboard:DetailNews];
}

@end
