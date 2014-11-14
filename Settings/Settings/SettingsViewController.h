//
//  SettingsViewController.h
//  Settings
//
//  Created by VTM on 11/14/14.
//  Copyright (c) 2014 VTM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, weak) NSMutableArray *arrData;
@end
