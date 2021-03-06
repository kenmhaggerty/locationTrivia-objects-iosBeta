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
    
    for (FISLocation *location in self.locations) {
        if ([location.name isEqualToString:name]) {
            return location;
        }
    }
    
    return nil;
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    
    NSMutableArray *locations = [NSMutableArray array];
    for (FISLocation *location in self.locations) {
        if ((fabs(location.latitude-latitude) <= margin) && (fabs(location.longitude-longitude) <= margin)) {
            [locations addObject:location];
        }
    }
    return locations;
}

@end
