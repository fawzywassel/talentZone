//
//  ViewController.m
//  swipProject
//
//  Created by JETS on 5/17/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int i ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addGes];
    
   
// Do any additional setup after loading the view, typically from a nib.
}


-(void) addGes
{
    UISwipeGestureRecognizer * recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(myRightAction)];
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    [self.view addGestureRecognizer:recognizer];



//The setup code (in viewDidLoad in your view controller)
//UITapGestureRecognizer *singleFingerTap =
//[[UITapGestureRecognizer alloc] initWithTarget:self
//                                        action:@selector(handleSingleTap:)];
//[self.view addGestureRecognizer:singleFingerTap];


}



////The event handling method
//- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
//    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
//    
//    //Do stuff here...
//}

-(void) myRightAction
{
  //  [self performSegueWithIdentifier: @"seg" sender: self];
    NSLog(@"Tapped");
    i++;
     NSLog(@"%d",i);
    
    
  //ViewController *v = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.75;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromLeft;
    transition.delegate = self;
    [self.view.layer addAnimation:transition forKey:nil];
  //  [self.view addSubview:PadViewController.view];
 
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
