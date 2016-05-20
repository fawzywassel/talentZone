//
//  LoginViewController.m
//  swipProject
//
//  Created by JETS on 5/19/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
- (IBAction)signUpAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *signupButton;
- (IBAction)loginAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *passwordLabl;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _loginButton.layer.cornerRadius = 4; // this value vary as per your desire
    _loginButton.clipsToBounds = YES;
    
    _signupButton.layer.cornerRadius = 4; // this value vary as per your desire
    _signupButton.clipsToBounds = YES;
    
    
    [_signupButton setImage: [UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
    [_signupButton setTitleEdgeInsets:UIEdgeInsetsMake(0,0,0, 0)];
    [_signupButton setTitle:@"SignIn" forState:UIControlStateNormal];
    
      UIColor *color = [UIColor whiteColor];
    
    _passwordLabl.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"PassWord" attributes:@{NSForegroundColorAttributeName:color}];
    
    _phoneText.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"Phone" attributes:@{NSForegroundColorAttributeName:color}];
    
    self.view.backgroundColor = [UIColor clearColor];
    UIImageView * bgImage =[[UIImageView alloc]initWithFrame:self.view.frame];
    
    bgImage.image = [UIImage imageNamed:@"bacground.png"];
    [self.view addSubview:bgImage];
    [self.view sendSubviewToBack:bgImage];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginAction:(id)sender {
}
- (IBAction)loginaction:(id)sender {
}
- (IBAction)signUpAction:(id)sender {
}
@end
