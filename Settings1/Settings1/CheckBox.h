//
//  CheckBox.h
//  Settings1
//
//  Created by VTM on 11/17/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckBox : UIView
{
    BOOL isChecked;
}

@property (nonatomic,assign) BOOL isChecked;
@property (nonatomic, strong) IBOutlet UIButton *checkBoxBT;
-(IBAction) checkBoxClicked;
@end
