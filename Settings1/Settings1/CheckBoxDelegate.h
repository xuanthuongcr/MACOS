//
//  CheckBoxDelegate.h
//  Settings1
//
//  Created by VTM on 11/17/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CheckBoxDelegate : NSObject<UITableViewDelegate>
{
    UITableViewCell *cell;
}
@property (nonatomic, weak) IBOutlet UITableViewCell *cell;
@end
