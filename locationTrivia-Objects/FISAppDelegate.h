//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@class FISLocation;

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) NSMutableArray *locations;

@end
