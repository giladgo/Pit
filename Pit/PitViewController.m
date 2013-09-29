//
//  PitViewController.m
//  Pit
//
//  Created by Gilad Goldberg on 9/29/13.
//  Copyright (c) 2013 Gilad Goldberg. All rights reserved.
//

#import "PitViewController.h"

@interface PitViewController ()
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipText;
@property (weak, nonatomic) IBOutlet UITextField *mealText;
@end

@implementation PitViewController

- (UILabel *)totalLabel
{
    return _totalLabel;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updatePrice];
}
- (IBAction)updatePrice {
    float mealPrice = [self.mealText.text floatValue];
    float tipAmount = [self.tipText.text floatValue];
    
    float total = mealPrice * ((tipAmount / 100.0) + 1);
    
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f", total];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
