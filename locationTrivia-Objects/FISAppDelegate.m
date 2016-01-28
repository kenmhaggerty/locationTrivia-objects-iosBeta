//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames {
    
    NSMutableArray *locationNames = [NSMutableArray arrayWithCapacity:self.locations.count];
    for (NSUInteger i = 0; i < self.locations.count; i++) {
        [locationNames addObject:((FISLocation *)[self.locations objectAtIndex:i]).name];
    }
    return locationNames;
}

- (FISLocation *)locationNamed:(NSString *)name {
    
    return nil;
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    
    return nil;
}

@end
