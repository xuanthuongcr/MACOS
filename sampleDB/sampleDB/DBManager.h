//
//  DBManager.h
//  sampleDB
//
//  Created by Ha Xuan Thuong on 11/13/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject
@property (nonatomic) sqlite3 *sqlite3Database;
@property (nonatomic, strong) NSString *dbFileName;
@property (nonatomic, strong) NSMutableArray *arrDataResults;
-(instancetype)initWithDatabaseFileName:(NSString *)dbFileName;
-(void) connectDatabase:(sqlite3 *)dbOject databaseFileName:(NSString *)dbFileName;
-(NSMutableDictionary *) loadData:(NSString *)querySelect;
-(BOOL) insertData:(NSString *)queryInsert;
-(BOOL) updateDate:(sqlite3 *)dbObject sqliteUpdateCommand:(NSString *)queryUpdate;
@end
