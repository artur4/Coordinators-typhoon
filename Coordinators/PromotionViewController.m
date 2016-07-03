//
//  PromotionViewController.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "PromotionViewController.h"

@interface PromotionViewController ()

@end

@implementation PromotionViewController
@synthesize completionHandler;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)showDetailNews:(UIButton *)sender
{
    completionHandler(0);
}

@end
