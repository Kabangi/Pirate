//
//  SignupPremiumSecondVC.m
//  Pirate
//
//  Created by beauty on 3/14/16.
//  Copyright © 2016 beauty. All rights reserved.
//

#import "SignupPremiumSecondVC.h"

@interface SignupPremiumSecondVC ()

@end

@implementation SignupPremiumSecondVC

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
    UIFont *titleFont = [UIFont systemFontOfSize:fontSize weight:0.3f];
    [self.lblNavTitle setFont:titleFont];
    
    
    UIColor *blueColor = [UIColor colorWithRed:8/255.0f green:149/255.0f blue:218/255.0f alpha:1.0f];
    [self.viewDateofBirth.layer setBorderWidth:1.0f];
    [self.viewDateofBirth.layer setBorderColor:blueColor.CGColor];
    self.viewDateofBirth.layer.cornerRadius = 3.0f;
    
    [self.viewCity.layer setBorderWidth:1.0f];
    [self.viewCity.layer setBorderColor:blueColor.CGColor];
    self.viewCity.layer.cornerRadius = 3.0f;
    
    [self.viewPostalCode.layer setBorderWidth:1.0f];
    [self.viewPostalCode.layer setBorderColor:blueColor.CGColor];
    self.viewPostalCode.layer.cornerRadius = 3.0f;
    
    [self.viewStatus.layer setBorderWidth:1.0f];
    [self.viewStatus.layer setBorderColor:blueColor.CGColor];
    self.viewStatus.layer.cornerRadius = 3.0f;
    
    self.btnSignup.layer.cornerRadius = 3.0f;
    self.btnLinkedin.layer.cornerRadius = 3.0f;
    
    
    
    [self registerForKeyboardNotifications];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onBirth:(id)sender {
}

- (IBAction)btnCity:(id)sender {
}

- (IBAction)onSignup:(id)sender {
}

- (IBAction)onLinkedin:(id)sender {
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
