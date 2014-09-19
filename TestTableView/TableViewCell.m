//
//  TableViewCell.m
//  TestTableView
//
//  Created by Philip Blackwell on 19/09/2014.
//  Copyright (c) 2014 Philip Blackwell. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *anotherLabel;

@property (nonatomic) BOOL hasBeenReused;

@end

@implementation TableViewCell

- (void)prepareForReuse {
    [super prepareForReuse];
    self.hasBeenReused = YES;
}

- (void)setNumberOfWordsForFirstLabel:(NSUInteger)firstLabelWordCount secondLabel:(NSUInteger)secondLabel {
    NSString *loremIpsum = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sapien tellus, venenatis eget finibus vitae, aliquet eget lectus. Phasellus pharetra enim ante, ut rutrum ipsum gravida vitae. Ut a cursus nisi. Phasellus rutrum venenatis scelerisque. Etiam fermentum in tellus quis tincidunt. Etiam sit amet orci cursus, fermentum dolor vitae, maximus dolor. Aliquam dapibus posuere velit, eget eleifend leo convallis et. In vel imperdiet velit.";
    
    NSArray *words = [loremIpsum componentsSeparatedByString:@" "];
    
    self.label.text = [[words subarrayWithRange:NSMakeRange(0, firstLabelWordCount)] componentsJoinedByString:@" "];
    self.anotherLabel.text = [[words subarrayWithRange:NSMakeRange(0, secondLabel)] componentsJoinedByString:@" "];
    
    if (self.hasBeenReused) {
        self.label.backgroundColor = [UIColor greenColor];
    }
}

@end
