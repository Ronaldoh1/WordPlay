//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

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
    
    viewController.title = self.nameTextField.text;
    
    
}


@end
