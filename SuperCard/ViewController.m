//
//  ViewController.m
//  SuperCard
//
//  Created by Julie Huguet on 14/12/2014.
//  Copyright (c) 2014 Julie Huguet. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardView.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet PlayingCardView *playingCardView;
@property (nonatomic, strong) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)drawRandomPlayingCard
{
    Card *card = [self.deck drawRandomCard];
    if ([card isKindOfClass:[PlayingCard class]]) {
        PlayingCard *playingCard = (PlayingCard *)card;
        self.playingCardView.rank = playingCard.rank;
        self.playingCardView.suit = playingCard.suit;
    }
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    self.playingCardView.faceUp = !self.playingCardView.faceUp;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     self.playingCardView.suit = @"♠️";
    self.playingCardView.rank = 13;
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]initWithTarget:self.playingCardView action:@selector(pinch:)]];
    */
    [self.playingCardView addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.playingCardView action:@selector(pinch:)]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end