//
//  SignupViewController.m
//  Pirate
//
//  Created by beauty on 3/10/16.
//  Copyright © 2016 beauty. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController ()

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillLayoutSubviews
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    
    float fontSize = 72 * screenSize.height / 1920.0f;
    UIFont *titleFont = [UIFont systemFontOfSize:fontSize weight:0.5f];
    [self.lblNavTitle setFont:titleFont];
    
    UIColor *blueColor = [UIColor colorWithRed:8/255.0f green:149/255.0f blue:218/255.0f alpha:1.0f];
    [self.txtName.layer setBorderWidth:1.0f];
    [self.txtName.layer setBorderColor:blueColor.CGColor];
    self.txtName.layer.cornerRadius = 3.0f;
    
    [self.txtEmail.layer setBorderWidth:1.0f];
    [self.txtEmail.layer setBorderColor:blueColor.CGColor];
    self.txtEmail.layer.cornerRadius = 3.0f;
    
    [self.txtPassword.layer setBorderWidth:1.0f];
    [self.txtPassword.layer setBorderColor:blueColor.CGColor];
    self.txtPassword.layer.cornerRadius = 3.0f;
    
    [self.txtConfirmPassword.layer setBorderWidth:1.0f];
    [self.txtConfirmPassword.layer setBorderColor:blueColor.CGColor];
    self.txtConfirmPassword.layer.cornerRadius = 3.0f;
    
    self.btnSignup.layer.cornerRadius = 3.0f;
    self.btnSignupWithLinkedin.layer.cornerRadius = 3.0f;
    
    fontSize = 44 * screenSize.height / 2110.0f;
    UIFont *termsOfServicesFont = [UIFont systemFontOfSize:fontSize weight:0.1f];
    [self.lblTermsOfServices setFont:termsOfServicesFont];
    
    [self registerForKeyboardNotifications];
}

- (IBAction)onBack:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)onSignup:(id)sender {
}

- (IBAction)onSignupWithLinkedin:(id)sender {
}

- (IBAction)onPirate:(id)sender {
}


#pragma mark - TextField Delegate
-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

#pragma mark - Keyboard appears and disappears notification

-(void)registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillBeHidden:) name:UIKeyboardWillHideNotification object:nil];
}

-(void)deregisterFromKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

-(void)keyboardWillShow:(NSNotification *)notification
{
    NSDictionary *info = [notification userInfo];
    CGSize keyboardSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    [UIView animateWithDuration:0.3f animations:^{
        self.bottomConstraint.constant = keyboardSize.height;
        [self.view layoutIfNeeded];
    }];

}

-(void)keyboardWillBeHidden:(NSNotification *)notification
{
    [UIView animateWithDuration:0.3f animations:^{
        self.bottomConstraint.constant = 0.0f;
        [self.view layoutIfNeeded];
    }];
}

@end
