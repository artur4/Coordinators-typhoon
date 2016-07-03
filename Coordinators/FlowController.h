//
//  FlowController.h
//  Coordinators
//
//  Created by Brusnikin on 26.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import UIKit;
@import Foundation;

typedef void(^CompletionHandler)(NSInteger);

@protocol FlowController <NSObject>

@property (copy, nonatomic) CompletionHandler completionHandler;

@end
