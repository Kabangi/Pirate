//
//  SignupPremiumSecondVC.h
//  Pirate
//
//  Created by beauty on 3/14/16.
//  Copyright © 2016 beauty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupPremiumSecondVC : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *lblNavTitle;

@property (strong, nonatomic) IBOutlet UIView *viewDateofBirth;
@property (strong, nonatomic) IBOutlet UITextField *txtDateofbirth;

@property (strong, nonatomic) IBOutlet UIView *viewCity;
@property (strong, nonatomic) IBOutlet UITextField *txtCity;

@property (strong, nonatomic) IBOutlet UIView *viewPostalCode;
@property (strong, nonatomic) IBOutlet UITextField *txtPostalCode;

@property (strong, nonatomic) IBOutlet UIView *viewStatus;


@property (strong, nonatomic) IBOutlet UIButton *btnSignup;
@property (strong, nonatomic) IBOutlet UIButton *btnLinkedin;

@property (strong, nonatomic) IBOutlet UILabel *lblTermsofServices1;
@property (strong, nonatomic) IBOutlet UILabel *lblTermsofServices2;

@property (strong, nonatomic) IBOutlet UIButton *btnPirate;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;

- (IBAction)onBirth:(id)sender;
- (IBAction)btnCity:(id)sender;

- (IBAction)onSignup:(id)sender;
- (IBAction)onLinkedin:(id)sender;

- (IBAction)onPirate:(id)sender;



@end
