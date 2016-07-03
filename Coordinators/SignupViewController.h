//
//  SignupViewController.h
//  Coordinators
//
//  Created by Brusnikin on 22.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AuthDataSource;

typedef void(^CompletionHandler)(NSInteger);

@interface SignupViewController : UIViewController

@property (copy, nonatomic) CompletionHandler completionHandler;

@property(nonatomic, strong) AuthDataSource *dataSource;

@end
