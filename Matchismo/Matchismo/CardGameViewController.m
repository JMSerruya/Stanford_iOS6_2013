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

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.countLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.flipCount++;
}

@end
