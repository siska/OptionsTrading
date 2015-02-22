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

@property NSArray *options;
@property NSArray *historical;
@property NSArray *straddle;
@property NSArray *date;
@property NSArray *time;


@end

@implementation EarningsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.options = [[NSArray alloc] init];
    self.historical = [NSArray array];
    self.straddle = [NSArray array];
    self.time = [NSArray array];

    [self setvaluesForOptions];
}

-(void)setvaluesForOptions
{
    // only here for placeholder data until we get access to an options api
    self.options = @[@"LOW", @"HPQ", @"HD", @"M", @"ODP", @"PZZA", @"AXL", @"CRM", @"ESRX"];
    self.historical =   @[[NSNumber numberWithFloat:4.07],
                          [NSNumber numberWithFloat:2.46],
                          [NSNumber numberWithFloat:9.42],
                          [NSNumber numberWithFloat:3.65],
                          [NSNumber numberWithFloat:8.43],
                          [NSNumber numberWithFloat:4.68],
                          [NSNumber numberWithFloat:3.12],
                          [NSNumber numberWithFloat:4.94],
                          [NSNumber numberWithFloat:4.04]];
    self.straddle =     @[[NSNumber numberWithFloat:3.65],
                          [NSNumber numberWithFloat:4.43],
                          [NSNumber numberWithFloat:4.68],
                          [NSNumber numberWithFloat:3.12],
                          [NSNumber numberWithFloat:4.07],
                          [NSNumber numberWithFloat:5.46],
                          [NSNumber numberWithFloat:9.42],
                          [NSNumber numberWithFloat:2.04],
                          [NSNumber numberWithFloat:3.90]];
    self.date = @[@"Feb 25", @"Feb 25", @"Feb 25", @"Feb 25", @"Feb 25", @"Feb 24", @"Feb 24", @"Feb 23", @"Feb 27"];
    self.time = @[@"After", @"After", @"After", @"After", @"After", @"After", @"After", @"After", @"After"];

//    NSLog(@"options: %@", self.options);
//    NSLog(@"historical: %@", self.historical);
//    NSLog(@"straddle: %@", self.straddle);
//    NSLog(@"date: %@", self.date);
//    NSLog(@"options: %@", self.options);

}

#pragma mark - UITableViewDataSource/Delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.options.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EarningsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EarningsCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"EarningsTableCell" bundle:nil] forCellReuseIdentifier:@"EarningsCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"EarningsCell"];
    }

    cell.dateLabel.text = [self.date objectAtIndex:indexPath.row];
    cell.timeLabel.text = [self.time objectAtIndex:indexPath.row];
    cell.tickerLabel.text = [self.options objectAtIndex:indexPath.row];
    cell.historicalMoveLabel.text = [[self.historical objectAtIndex:indexPath.row] stringValue];
    cell.straddleMoveLabel.text = [[self.straddle objectAtIndex:indexPath.row] stringValue];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"ESRXSegue" sender:nil];
}


@end
