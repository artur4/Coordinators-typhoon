//
//  Coordinator.h
//  Coordinator
//
//  Created by Brusnikin on 21.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;

typedef void(^CoordinatorHandler)();

@protocol Coordinator <NSObject>

@property (copy, nonatomic) CoordinatorHandler flowCompletionHandler;

- (void)start;

@end
