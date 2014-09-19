//
//  ViewController.m
//  TestTableView
//
//  Created by Philip Blackwell on 19/09/2014.
//  Copyright (c) 2014 Philip Blackwell. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

#define NUMBER_OF_CELLS 200

@implementation ViewController {
    NSUInteger firstLabelWordCount[NUMBER_OF_CELLS];
    NSUInteger secondLabelWordCount[NUMBER_OF_CELLS];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44;
    
    for (NSUInteger i = 0; i < NUMBER_OF_CELLS; i += 1) {
        firstLabelWordCount[i] = (arc4random() % 50) + 3;
        secondLabelWordCount[i] = (arc4random() % 50) + 3;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return NUMBER_OF_CELLS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TestCell"];
    NSUInteger n1 = firstLabelWordCount[indexPath.row];
    NSUInteger n2 = secondLabelWordCount[indexPath.row];
    [cell setNumberOfWordsForFirstLabel:n1 secondLabel:n2];
    return cell;
}

@end
