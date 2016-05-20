//
//  FirstViewController.h
//  swipProject
//
//  Created by JETS on 5/19/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *regAction;
@property (weak, nonatomic) IBOutlet UIButton *regButton;
- (IBAction)loginAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end
