//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/4/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.countLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.flipCount++;
}

@end
