//
//  NewsDataSource.h
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;
@import UIKit;
@class ServerManager;


@interface NewsDataSource : NSObject 

- (instancetype)init;

@property (strong, nonatomic) ServerManager *serverManager;

@property (strong, nonatomic) UITableView *tableView;

@property (strong, nonatomic, readonly) NSArray *dataArray;

@property (assign, nonatomic) NSInteger dataIndex;

- (NSString *)titleWithIndex:(NSInteger)index;

- (void)load;

@end
