//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "EnterAdjectiveViewController.h"

#import "VerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;


@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        self.adjectiveTextField.placeholder = @"Please enter an adjective";

        return NO;
    } else{
        return YES;
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender{
    VerbViewController *viewController = segue.destinationViewController;

    viewController.adjective = self.adjectiveTextField.text;
    viewController.name = self.name;


}
@end
