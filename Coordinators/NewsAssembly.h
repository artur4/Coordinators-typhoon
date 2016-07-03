//
//  NewsAssembly.h
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
#import <Typhoon/Typhoon.h>

@class NewsViewController;
@class NewsDetailViewController;
@class ServerManager;

@interface NewsAssembly : TyphoonAssembly

- (NewsViewController *)newsViewController;
- (NewsDetailViewController *)newsDetailViewController;
- (ServerManager *)serverManager;


@end
