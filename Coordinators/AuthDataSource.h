//
//  AuthDataSource.h
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AuthDataSource : NSObject

@property (strong, nonatomic, readonly) NSArray *dataArray;

- (void)sortedArray;

@end
