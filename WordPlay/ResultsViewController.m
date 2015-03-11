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






    NSString *someString = [NSString stringWithFormat:@"%@ likes to wear %@ pants and likes to %@ %@",self.name, self.adjective, self.verb, self.adverb];

    NSString *firstString = [NSString stringWithFormat:@"%@", self.name];
    //myLabel.text=[NSString stringWithFormat:@"%@: 2012/10/14 %@",@"Updated:",@"21:59 PM"];



    NSRange range1 = [someString rangeOfString:firstString];
   // NSRange range2 = [myLabel.text rangeOfString:@"21:59 PM"];
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:someString];

    [attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]} range:range1];
    //[attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]} range:range2];



    self.resultsTextView.attributedText = attributedText;



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
