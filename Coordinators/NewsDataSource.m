//
//  NewsDataSource.m
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NewsDataSource.h"
#import "ServerManager.h"

@interface NewsDataSource ()

@property (strong, nonatomic, readwrite) NSArray *dataArray;

@end

@implementation NewsDataSource

- (instancetype)init
{
    self = [super init];
    if (self)
    {
//        self.tableView = tableView;
//        self.tableView.dataSource = self;
        self.dataArray = @[@"s",@"2",@"3",@"a",@"1",@"d",@"q",@"z",@"t",@"0"];
        
//        NSLog(@"%@", self.tableView);
        
//        [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    }
    return self;
}

- (void)load {
    
    [self.serverManager loadDataFromServer];
    
}


- (NSString *)titleWithIndex:(NSInteger)index
{
    return self.dataArray[index];    
}

#pragma mark - UITableViewDataSource

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return self.dataArray.count;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"News # %@", self.dataArray[indexPath.row]];
//    
//    return cell;
//}

@end
