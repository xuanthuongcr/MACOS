//
//  TableViewCell.h
//  Settings
//
//  Created by Ha Xuan Thuong on 11/15/14.
//  Copyright (c) 2014 VTM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckBox.h"

@interface TableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *labelType1_Title;
@property (nonatomic, weak) IBOutlet UILabel *labelType2_Title;
@property (nonatomic, weak) IBOutlet UILabel *labelType2_Content;
@property (nonatomic, weak) IBOutlet UILabel *labelType3_Title;
@property (nonatomic, weak) IBOutlet UILabel *labelType4_Title;
@property (nonatomic, weak) IBOutlet UILabel *labelType4_Content;
@property (nonatomic, strong) IBOutlet CheckBox *buttonType3;
@property (nonatomic, weak) IBOutlet UIButton *buttonType4;
@property (nonatomic, weak) IBOutlet UIView *checkBox;
@end
