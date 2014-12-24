//
//  PlayingCardView.h
//  SuperCard
//
//  Created by Julie Huguet on 14/12/2014.
//  Copyright (c) 2014 Julie Huguet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardView : UIView

@property (nonatomic) NSUInteger rank;
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) BOOL faceUp;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
