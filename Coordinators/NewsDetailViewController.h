//
//  NewsDetailViewController.h
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "FlowController.h"
#import "NewsDataSource.h"

@interface NewsDetailViewController : UIViewController <FlowController>

@property(nonatomic, strong) NewsDataSource *newsDataSource;

@end
