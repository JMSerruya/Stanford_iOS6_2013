//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/4/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import "CardGameViewController.h"
#import "Card.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    _deck = [[PlayingCardDeck alloc] init];
    return self;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.countLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
    
    if(sender.selected == true){
        self.flipCount++;
       
        Card* card = [_deck drawRandomCard];
        [sender setTitle:card.contents forState:UIControlStateSelected];
    }
    sender.selected = !sender.selected;
    
    
}

@end
