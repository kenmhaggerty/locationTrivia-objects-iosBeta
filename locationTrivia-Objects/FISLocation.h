//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Ken M. Haggerty on 1/28/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISLocation : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) CGFloat latitude;
@property (nonatomic) CGFloat longitude;
@property (nonatomic, strong) NSMutableArray *trivia;
@end
