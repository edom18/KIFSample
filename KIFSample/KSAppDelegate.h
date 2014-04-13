
#import <UIKit/UIKit.h>

#import "KSViewController.h"

@interface KSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) KSViewController *topViewController;
@property (strong, nonatomic) UINavigationController *navigationController;

@end
