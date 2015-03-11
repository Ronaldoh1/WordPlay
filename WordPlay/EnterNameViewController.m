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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

    if ([self.nameTextField.text isEqualToString:@""]) {
        self.nameTextField.placeholder = @"Please enter a name";

        return NO;
    } else{
        return YES;
    }

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
