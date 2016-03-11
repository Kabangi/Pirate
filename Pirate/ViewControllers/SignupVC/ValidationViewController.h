//
//  ValidationViewController.h
//  Pirate
//
//  Created by beauty on 3/11/16.
//  Copyright © 2016 beauty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValidationViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblNavTitle;

@property (strong, nonatomic) IBOutlet UILabel *lblText1;
@property (strong, nonatomic) IBOutlet UILabel *lblText2;

@property (strong, nonatomic) IBOutlet UILabel *lblValidationCode;

@property (strong, nonatomic) IBOutlet UITextField *txtValidationCode;

@property (strong, nonatomic) IBOutlet UIButton *btnPhoto;

@property (strong, nonatomic) IBOutlet UIButton *btnChoose;

@property (strong, nonatomic) IBOutlet UIButton *btnUpload;

@property (strong, nonatomic) IBOutlet UIButton *btnConfirm;


- (IBAction)onPhoto:(id)sender;
- (IBAction)onChoose:(id)sender;
- (IBAction)onUpload:(id)sender;
- (IBAction)onConfirm:(id)sender;
- (IBAction)onBack:(id)sender;


@end
