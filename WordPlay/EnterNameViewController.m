//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    EnterAdjectiveViewController *viewController = segue.destinationViewController;
    
    viewController.name = self.nameTextField.text;
    
    
}
- (IBAction)unwindToRoot:(UIStoryboardSegue *)sender{
    ResultsViewController *resultViewController = sender.sourceViewController;
    NSLog(@"itworked");



}


@end
