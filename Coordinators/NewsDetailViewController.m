//
//  NewsDetailViewController.m
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NewsDetailViewController.h"
#import "NewsDataSource.h"

@interface NewsDetailViewController ()

@end

@implementation NewsDetailViewController
@synthesize completionHandler;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = [self.newsDataSource titleWithIndex:self.newsDataSource.dataIndex];
    
    self.view.backgroundColor = [UIColor orangeColor];
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

- (IBAction)showTipsterProfile:(UIButton *)sender
{
    self.completionHandler(0);
}


@end
