//
//  FISTrivium.m
//  locationTrivia-Objects
//
//  Created by Ken M. Haggerty on 1/28/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTrivium.h"

@implementation FISTrivium

- (instancetype)init {
    
    self = [self initWithContent:@"" likes:0];
    return self;
}

- (instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes {
    
    self = [super init];
    if (self) {
        _content = content;
        _likes = likes;
    }
    return self;
}

@end
