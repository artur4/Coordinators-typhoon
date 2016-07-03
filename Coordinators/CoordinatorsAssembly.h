//
//  CoordinatorsAssembly.h
//  Coordinators
//
//  Created by Brusnikin on 28.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/Typhoon.h>

@class AppDelegate;
@class SWRevealViewController;

@interface CoordinatorsAssembly : TyphoonAssembly

- (AppDelegate *)appDelegate;
- (SWRevealViewController *)swRevealViewController;

@end
