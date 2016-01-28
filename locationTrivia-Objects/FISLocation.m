//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Ken M. Haggerty on 1/28/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)init {
    
    self = [self initWithName:@"" latitude:0 longitude:0];
    return self;
}

- (instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [NSMutableArray array];
    }
    return self;
}

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    
    return [self.name substringToIndex:MIN(length, self.name.length)];
}

- (BOOL)hasValidData {
    
    return (self.name && self.name.length && (fabs(self.latitude) <= 90.0) && (fabs(self.longitude) <= 180) && (self.longitude != -180));
}

- (FISTrivium *)triviumWithMostLikes {
    
    if (!self.trivia.count) return nil;
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:NSStringFromSelector(@selector(likes)) ascending:NO];
    return [[self.trivia sortedArrayUsingDescriptors:@[sortDescriptor]] firstObject];
}

@end
