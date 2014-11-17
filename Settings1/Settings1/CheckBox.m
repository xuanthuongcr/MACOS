//
//  CheckBox.m
//  Settings1
//
//  Created by VTM on 11/17/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import "CheckBox.h"

@implementation CheckBox

@synthesize isChecked;
@synthesize checkBoxBT = _checkBoxBT;

-(IBAction)checkBoxClicked
{
    if (self.isChecked==NO)
    {
        self.isChecked = YES;
        [_checkBoxBT setImage:[UIImage imageNamed:@"cb_mono_on.png"] forState:UIControlStateNormal];
    }
    else
    {
        self.isChecked = NO;
        [_checkBoxBT setImage:[UIImage imageNamed:@"cb_mono_off.png"] forState:UIControlStateNormal];
    }
}
- (void)dealloc
{
   // [super dealloc];
}
@end
