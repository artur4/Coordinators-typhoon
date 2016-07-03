//
//  PromotionControllerFactory.m
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "PromotionControllerFactory.h"

@implementation PromotionControllerFactory

- (PromotionViewController *)createPromotionViewController
{
    return [PromotionViewController controllerFromStoryboard:Promotion];
}

@end
