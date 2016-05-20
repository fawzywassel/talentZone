//
//  RegisterViewController.m
//  swipProject
//
//  Created by JETS on 5/19/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;
@property (weak, nonatomic) IBOutlet UIButton *regButton;
- (IBAction)registerAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *phoneText;
@property (weak, nonatomic) IBOutlet UITextField *emailText;
@property (weak, nonatomic) IBOutlet UITextField *passwordtext;
@property (weak, nonatomic) IBOutlet UITextField *nameText;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    _regButton.layer.cornerRadius = 4; // this value vary as per your desire
    _regButton.clipsToBounds = YES;
    _signUpButton.layer.cornerRadius = 4; // this value vary as per your desire
    _signUpButton.clipsToBounds = YES;
    
    
    
    [_signUpButton setImage: [UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
    [_signUpButton setTitleEdgeInsets:UIEdgeInsetsMake(0,0,0, 0)];
    [_signUpButton setTitle:@"SignUp" forState:UIControlStateNormal];
    
    UIColor *color = [UIColor whiteColor];
    
    _phoneText.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"Phone" attributes:@{NSForegroundColorAttributeName:color}];
    _emailText.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"Email" attributes:@{NSForegroundColorAttributeName:color}];
    _nameText.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"Full Name" attributes:@{NSForegroundColorAttributeName:color}];
    _passwordtext.attributedPlaceholder =
    [[NSAttributedString alloc]initWithString:@"PassWord" attributes:@{NSForegroundColorAttributeName:color}];
//    UIImage *im =[UIImage imageNamed:@"background.jpg"];
    
    
  
   self.view.backgroundColor = [UIColor clearColor];
    UIImageView * bgImage =[[UIImageView alloc]initWithFrame:self.view.frame];
    
    bgImage.image = [UIImage imageNamed:@"bacground.png"];
    [self.view addSubview:bgImage];
    [self.view sendSubviewToBack:bgImage];
        // Do any additional setup after loading the view.
}



- (void) drawPlaceholderInRect:(CGRect)rect {
    [[UIColor whiteColor] setFill];
   // [[self.phoneText placeholder] drawInRect:rect withFont:[UIFont systemFontOfSize:16]];
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

- (IBAction)registerAction:(id)sender {
}
@end
