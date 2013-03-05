//
//  PlayingCard.h
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/5/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString* suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
