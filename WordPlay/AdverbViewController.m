//
//  AdverbViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "AdverbViewController.h"
#import "ResultsViewController.h"

@interface AdverbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adverbText;

@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

    if ([self.adverbText.text isEqualToString:@""]) {
        self.adverbText.placeholder = @"Please enter a adverb";

        return NO;
    } else{
        return YES;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender{
    ResultsViewController *viewController = segue.destinationViewController;

    viewController.adjective = self.adjective;
    viewController.name = self.name;
    viewController.verb = self.verb;
    viewController.adverb = self.adverbText.text;
    
    
}

@end
