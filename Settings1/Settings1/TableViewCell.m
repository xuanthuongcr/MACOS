//
//  TableViewCell.m
//  Settings
//
//  Created by Ha Xuan Thuong on 11/15/14.
//  Copyright (c) 2014 VTM. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize labelType1_Title = _labelType1_Title;
@synthesize labelType2_Title = _labelType2_Title;
@synthesize labelType2_Content = _labelType2_Content;
@synthesize labelType3_Title = _labelType3_Title;
@synthesize labelType4_Title = _labelType4_Title;
@synthesize labelType4_Content = _labelType4_Content;
@synthesize buttonType3 = _buttonType3;
@synthesize buttonType4 = _buttonType4;
@synthesize checkBox = _checkBox;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
