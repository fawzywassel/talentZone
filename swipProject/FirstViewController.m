//
//  FirstViewController.m
//  swipProject
//
//  Created by JETS on 5/19/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _loginButton.layer.cornerRadius = 4; // this value vary as per your desire
    _loginButton.clipsToBounds = YES;
    
    
    _regButton.layer.cornerRadius = 4; // this value vary as per your desire
    _regButton.clipsToBounds = YES;
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
@end
