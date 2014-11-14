//
//  SettingsViewController.m
//  Settings
//
//  Created by VTM on 11/14/14.
//  Copyright (c) 2014 VTM. All rights reserved.
//

#import "SettingsViewController.h"

@implementation SettingsViewController
@synthesize tableView = _tableView;
@synthesize arrData = _arrData;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource + UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewAutomaticDimension;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_arrData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *settingsTableIdentifier = @"Settings";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:settingsTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:settingsTableIdentifier];
    }
    
    cell.textLabel.text = [_arrData objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
@end
