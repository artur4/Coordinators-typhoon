//
//  NewsViewController.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//


#import "FlowController.h"
#import "NewsDataSource.h"

@interface NewsViewController : UIViewController <FlowController>

@property(nonatomic, strong) NewsDataSource *newsDataSource;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
