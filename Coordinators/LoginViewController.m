//
//  LoginViewController.m
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "LoginViewController.h"
#import "AuthDataSource.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
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


- (IBAction)login:(UIButton *)sender
{
    self.completionHandler(1);
    NSLog(@"!! = %@", self.dataSource.dataArray);
}

- (IBAction)signup:(UIButton *)sender
{
    self.completionHandler(0);
}

@end
