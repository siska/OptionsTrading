//
//  EarningsViewController.m
//  OptionsTrading
//
//  Created by S on 2/21/15.
//  Copyright (c) 2015 Ryan Siska. All rights reserved.
//

#import "EarningsViewController.h"
#import "EarningsTableViewCell.h"

@interface EarningsViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation EarningsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDataSource/Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1; //return self.sections.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EarningsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EarningsCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"EarningsTableCell" bundle:nil] forCellReuseIdentifier:@"EarningsCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"EarningsCell"];
    }

    cell.dateLabel.text = @"Mar 1";
    cell.timeLabel.text = @"8 AM";
    cell.tickerLabel.text = @"AAPL";
    cell.historicalMoveLabel.text = @"3.12%";
    cell.straddleMoveLabel.text = @"0.42%";

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    self.pickedSection =[self.sections objectAtIndex:indexPath.row];
}


@end
