//
//  PlayingCard.m
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/5/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}
@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if([@[@"♠",@"♣",@"♥", @"♦"] containsObject:suit])
    {
        _suit = suit;
    }
}

-(NSString *)suit
{
    return _suit ? _suit : @"?";
}

+(NSArray*)validSuits{
    return @[@"♠",@"♣",@"♥", @"♦"];
}

+(NSArray*)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger) maxRank{
    return [PlayingCard rankStrings].count - 1;
}

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}


@end
