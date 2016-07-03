//
//  MenuCoordinator.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "BaseCoordinator.h"

@interface MenuCoordinator : BaseCoordinator

@property (nonatomic) SWRevealViewController *swRevealViewController;

- (instancetype)initWithSWRevealViewController:(SWRevealViewController *)swRevealViewController;

@end
