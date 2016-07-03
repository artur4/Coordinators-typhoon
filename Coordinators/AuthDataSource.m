//
//  AuthDataSource.m
//  Coordinators
//
//  Created by Brusnikin on 27.06.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "AuthDataSource.h"

@interface AuthDataSource ()

@property (strong, nonatomic, readwrite) NSArray *dataArray;

@end


@implementation AuthDataSource


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataArray = @[@"s",@"2",@"3",@"a",@"1",@"d",@"q",@"z",@"t",@"0"];
    }
    return self;
}

- (void)sortedArray {
    
    self.dataArray = [self.dataArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}

- (void)dealloc
{
    NSLog(@"DataSource %@ is dealloc", NSStringFromClass([self class]));
}

@end
