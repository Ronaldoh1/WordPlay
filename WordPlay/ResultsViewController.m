//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Ronald Hernandez on 3/10/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;
@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.resultsTextView.text = [NSString stringWithFormat:@"%@ likes to wear %@ pants", self.resultName, self.resultAdjective];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
