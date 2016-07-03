//
//  NSString+Storyboard.h
//  Coordinators
//
//  Created by Brusnikin on 24.05.16.
//  Copyright © 2016 Brusnikinapps. All rights reserved.
//

@import Foundation;

typedef NS_ENUM(NSUInteger, StoryboardEnum)
{
    Main,
    Auth,
    News,
    DetailNews,
    Profile,
    Promotion
};


@interface NSString (Storyboard)

+ (NSString *)storyboardWithName:(StoryboardEnum)name;

@end
