//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Julian Lee on 1/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self storyMaker];
    
}


- (void)storyMaker
{
    NSString *story = [NSString stringWithFormat:@"Hi my name is %@ and I'm %@. I work %@ if there is %@ in the room.", self.story.name, self.story.adjective, self.story.adverb, self.story.noun];
    
    NSRange nameRange = [story rangeOfString:self.story.name];
    NSRange adjectiveRange = [story rangeOfString:self.story.adjective];
    NSRange adverbRange = [story rangeOfString:self.story.adverb];
    NSRange nounRange = [story rangeOfString:self.story.noun];

    UIFont *fontText = [UIFont boldSystemFontOfSize:14];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];
    
    NSMutableAttributedString *mutAttrTextViewString = [[NSMutableAttributedString alloc] initWithString:story];
    [mutAttrTextViewString setAttributes:dictBoldText range:nameRange];
    [mutAttrTextViewString addAttributes:dictBoldText range:adjectiveRange];
    [mutAttrTextViewString addAttributes:dictBoldText range:adverbRange];
    [mutAttrTextViewString addAttributes:dictBoldText range:nounRange];
    
    [self.resultsTextView setAttributedText:mutAttrTextViewString];
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
