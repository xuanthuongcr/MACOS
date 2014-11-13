//
//  ViewController.m
//  sampleDB
//
//  Created by Ha Xuan Thuong on 11/13/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic)sqlite3 *dbObject;
@end

@implementation ViewController
@synthesize dbManager = _dbManager;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"test");
    self.dbManager = [[DBManager alloc] initWithDatabaseFileName:@"sampledb.sql"];
   [self.dbManager connectDatabase:self.dbObject databaseFileName:@"sampledb.sql"];
    NSMutableDictionary *dict;
    dict = [self.dbManager loadData:@"SELECT * FROM peopleInfo"];
    NSMutableArray *arrData =[dict objectForKey:@"Data"];
    NSLog(@"%@",[arrData objectAtIndex:1]);
    NSLog(@"Models: %@", [dict allKeys]);
    [self.dbManager insertData:@"insert into peopleInfo values(NULL,'B','C',25)"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
