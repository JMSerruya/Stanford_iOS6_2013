//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/4/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayingCardDeck.h"

@interface CardGameViewController : UIViewController
@property(strong, nonatomic)PlayingCardDeck* deck;
@end
