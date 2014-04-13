
#import "KSAppDelegate.h"

@implementation KSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.topViewController = [[KSViewController alloc] init];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.topViewController];
    
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)onTap
{
    NSLog(@"tap!");
}
							

@end
