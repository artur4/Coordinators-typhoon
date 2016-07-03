//
//  NSString+Storyboard.m
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

#import "NSString+Storyboard.h"

@implementation NSString (Storyboard)

+ (NSString *)storyboardWithName:(StoryboardEnum)name
{
    switch (name)
    {
        case Main:
            return @"Main";
            break;
        case Auth:
            return @"Auth";
            break;
        case DetailNews:
            return @"DetailNews";
            break;
        case News:
            return @"News";
            break;
        case Profile:
            return @"Profile";
            break;
        case Promotion:
            return @"Promotion";
            break;
        default:
            break;
    }
}


@end
