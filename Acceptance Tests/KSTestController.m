
#import "KSTestController.h"

@implementation KSTestController

- (void)beforeEach
{
    NSLog(@"Before ---------------");
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)afterEach
{
    NSLog(@"After ----------------");
}

- (void)testSample
{
    NSLog(@"Start a testSample");
    [tester waitForViewWithAccessibilityLabel:@"title"];
    [tester enterText:@"hogehoge" intoViewWithAccessibilityLabel:@"username"];
    [tester tapViewWithAccessibilityLabel:@"title"];
    [tester waitForViewWithAccessibilityLabel:@"nextViewController"];
    [tester waitForTimeInterval:3.0];
}

- (void)testSample2
{
    NSLog(@"Start a testSample2");
    [tester waitForTimeInterval:3.0];
    [tester waitForViewWithAccessibilityLabel:@"title"];
    [tester tapViewWithAccessibilityLabel:@"title"];
    [tester waitForViewWithAccessibilityLabel:@"Back"];
}

- (void)testLogin
{
    NSLog(@"Start a testLogin");
    
    // ログイン用フォームが表示されるのを待つ
    [tester waitForViewWithAccessibilityLabel:@"username"];
    [tester waitForViewWithAccessibilityLabel:@"loginButton"];
    UITextField *textField = (UITextField *)[tester waitForViewWithAccessibilityLabel:@"password"];
    
    if (![textField.text isEqualToString:@"passwordstring"]) {
        [NSException raise:@"Error!" format:nil];
    }
    
    [tester tapViewWithAccessibilityLabel:@"loginButton"];
    [tester waitForViewWithAccessibilityLabel:@"KSViewController"];
}

@end
