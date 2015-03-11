//
//  VerbViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "VerbViewController.h"
#import "AdverbViewController.h"

@interface VerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbText;

@end

@implementation VerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

    if ([self.verbText.text isEqualToString:@""]) {
        self.verbText.placeholder = @"Please enter a verb";

        return NO;
    } else{
        return YES;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender{
    AdverbViewController *viewController = segue.destinationViewController;

    viewController.adjective = self.adjective;
    viewController.name = self.name;
    viewController.verb = self.verbText.text;
    
    
}



@end
