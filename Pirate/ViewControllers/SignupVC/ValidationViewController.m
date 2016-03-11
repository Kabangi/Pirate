//
//  ValidationViewController.m
//  Pirate
//
//  Created by beauty on 3/11/16.
//  Copyright © 2016 beauty. All rights reserved.
//

#import "ValidationViewController.h"

@interface ValidationViewController ()

@end

@implementation ValidationViewController

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
    
    float titlefontSize = 72 * screenSize.height / 1920.0f;
    UIFont *titleFont = [UIFont systemFontOfSize:titlefontSize weight:0.3f];
    [self.lblNavTitle setFont:titleFont];
    
    float textFontSize = 36 * screenSize.height / 1920.0f;
    [self.lblText1 setFont:[UIFont systemFontOfSize:textFontSize weight:0.1f]];
    [self.lblText2 setFont:[UIFont systemFontOfSize:textFontSize weight:0.1f]];
    
    float validationCodeLabelFontSize = 42 * screenSize.height / 1920.0f;
    [self.lblValidationCode setFont:[UIFont systemFontOfSize:validationCodeLabelFontSize weight:0.3f]];
    
    [self.txtValidationCode.layer setBorderWidth:1.0f];
    UIColor *borderColor = [UIColor colorWithRed:8/255.0f green:149/255.0f blue:218/255.0f alpha:1.0f];
    [self.txtValidationCode.layer setBorderColor:borderColor.CGColor];
    self.txtValidationCode.layer.cornerRadius = 3.0f;
    
    [self.btnChoose.layer setBorderWidth:2.0f];
    [self.btnChoose.layer setBorderColor:borderColor.CGColor];
    self.btnChoose.layer.cornerRadius = 2.0f;
    
    [self.btnUpload.layer setBorderWidth:2.0f];
    [self.btnUpload.layer setBorderColor:borderColor.CGColor];
    self.btnUpload.layer.cornerRadius = 2.0f;
    
    self.btnConfirm.layer.cornerRadius = 3.0f;

}


#pragma mark - actions

- (IBAction)onPhoto:(id)sender {
}

- (IBAction)onChoose:(id)sender {
}

- (IBAction)onUpload:(id)sender {
}

- (IBAction)onConfirm:(id)sender {
}

- (IBAction)onBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
