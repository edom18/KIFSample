
#import "KSViewController.h"

@interface KSViewController ()

@property (strong, nonatomic) UIViewController *vc;

@end

@implementation KSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.accessibilityLabel = @"KSViewController";

    // テキスト入力テスト用のTextViewを追加
    CGRect textViewFrame = CGRectMake(0, 90, self.view.bounds.size.width, 24);
    textViewFrame = CGRectInset(textViewFrame, 15, 0);
    UITextView *textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.backgroundColor = [UIColor lightGrayColor];
    textView.accessibilityLabel = @"username";
    [self.view addSubview:textView];
    
    // テキスト入力テスト用のTextFieldを追加
    CGRect textFieldFrame  = CGRectMake(0, 130, self.view.bounds.size.width, 24);
    textFieldFrame = CGRectInset(textFieldFrame, 15, 0);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldFrame];
    textField.accessibilityLabel = @"password";
    textField.backgroundColor    = [UIColor lightGrayColor];
    textField.text               = @"passwordstring";
    [self.view addSubview:textField];
    
    // ボタンを追加
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - 50,
                                                                  170, 100, 50)];
    [button setTitle:@"Login" forState:UIControlStateNormal];
    button.backgroundColor    = [UIColor darkGrayColor];
    button.accessibilityLabel = @"loginButton";
    [button addTarget:self
               action:@selector(login)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // NavigationBarにボタンを追加
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"title"
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:self
                                                                     action:@selector(onTap)];
    self.navigationItem.rightBarButtonItem = barButtonItem;
}

- (void)login
{
    KSViewController *vc = [[KSViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)onTap
{
    self.vc = [[UIViewController alloc] init];
    self.vc.view.accessibilityLabel = @"nextViewController";
    self.vc.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:self.vc animated:YES];
//    [self.navigationController presentViewController:self.vc
//                                            animated:YES
//                                          completion:nil];
}

@end
