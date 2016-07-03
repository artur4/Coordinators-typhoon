//
//  ProfileTableViewController.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "ProfileTableViewController.h"
#import "SWRevealViewController.h"

@interface ProfileTableViewController ()

@end

@implementation ProfileTableViewController
@synthesize completionHandler;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.revealViewController panGestureRecognizer];
    [self.revealViewController tapGestureRecognizer];
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


@end
