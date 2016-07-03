//
//  NewsViewController.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NewsViewController.h"
#import "SWRevealViewController.h"
#import "NewsDataSource.h"

@interface NewsViewController () <UITableViewDelegate, UITableViewDataSource>



@end

@implementation NewsViewController
@synthesize completionHandler;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.revealViewController panGestureRecognizer];
    [self.revealViewController tapGestureRecognizer];
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.newsDataSource load];
}

- (void)dealloc
{
    NSLog(@"%@ is dealloc", NSStringFromClass([self class]));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    self.completionHandler(indexPath.row);
    self.newsDataSource.dataIndex = indexPath.row;
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.newsDataSource.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"News # %@", self.newsDataSource.dataArray[indexPath.row]];
    
    return cell;
}

@end
