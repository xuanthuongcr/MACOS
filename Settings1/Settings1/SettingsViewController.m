//
//  SettingsViewController.m
//  Settings
//
//  Created by VTM on 11/14/14.
//  Copyright (c) 2014 VTM. All rights reserved.
//

#import "SettingsViewController.h"
#import "TableViewCell.h"

@implementation SettingsViewController
{
    NSMutableArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    tableData = [NSMutableArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(IBAction)selector:(id)sender
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return  8;
    //return [tableData count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        switch (indexPath.row) {
            case 0:
                {
                   TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellType1" forIndexPath:indexPath];
                    
                    return cell;
                }
            case 1:
                {
                  TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellType2" forIndexPath:indexPath];
                    return cell;
                }
            case 2:
                {
                   TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellType3" forIndexPath:indexPath];
                    return cell;
                }
            case 3:
            {
                TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellType4" forIndexPath:indexPath];
                cell.labelType4_Title.text  = [NSString stringWithFormat:@"%@ /n%@", cell.labelType4_Content.text, cell.labelType4_Content.text];
                return cell;
            }
            default:
                {
                   TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellType2" forIndexPath:indexPath];
                    return cell;
                }
                break;
        }
    
    // return cell;
}

 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0: case 2:
        {
            return  64;
        }
      
        default:
        {
            return 95;
        }
            break;
    }
}
/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
 
 // Configure the cell...
 
 return cell;
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
