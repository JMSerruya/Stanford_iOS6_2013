//
//  Card.h
//  Matchismo
//
//  Created by Juan Manuel Serruya on 3/5/13.
//  Copyright (c) 2013 Juan Manuel Serruya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString* contents;
@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL unplayable;

- (int)match:(NSArray *) otherCards;

@end
