//
//  EarningsTableViewCell.h
//  OptionsTrading
//
//  Created by S on 2/21/15.
//  Copyright (c) 2015 Ryan Siska. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EarningsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tickerLabel;
@property (weak, nonatomic) IBOutlet UILabel *historicalMoveLabel;
@property (weak, nonatomic) IBOutlet UILabel *straddleMoveLabel;



@end
