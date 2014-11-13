//
//  DBManager.m
//  sampleDB
//
//  Created by Ha Xuan Thuong on 11/13/14.
//  Copyright (c) 2014 Ha Xuan Thuong. All rights reserved.
//

#import "DBManager.h"

@interface DBManager()
@property (nonatomic, strong) NSString *documentsDirectory;

-(void)copyDatabaseIntoDocumentsDirectory;
@end

@implementation DBManager
@synthesize sqlite3Database = _sqlite3Database;
@synthesize dbFileName = _dbFileName;
@synthesize arrDataResults = _arrDataResults;

-(instancetype)initWithDatabaseFileName:(NSString *)dbFileName
{
    self = [super init];
    if (self) {
        // Set the documents directory path to the documentsDirectory property.
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        self.documentsDirectory = [paths objectAtIndex:0];
        
        // Keep the database filename.
        self.dbFileName = dbFileName;
        
        // Copy the database file into the documents directory if necessary.
        [self copyDatabaseIntoDocumentsDirectory];
    }
    return self;
}

-(void)copyDatabaseIntoDocumentsDirectory{
    // Check if the database file exists in the documents directory.
    NSString *destinationPath = [self.documentsDirectory stringByAppendingPathComponent:self.dbFileName];
    if (![[NSFileManager defaultManager] fileExistsAtPath:destinationPath]) {
        // The database file does not exist in the documents directory, so copy it from the main bundle now.
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:self.dbFileName];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];
        
        // Check if any error occurred during copying and display it.
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}

-(void) connectDatabase:(sqlite3 *)dbOject databaseFileName:(NSString *)dbFileName;
{   // Open the Database. if open is failed then will raise error.
    NSString *dataBasePath = [self.documentsDirectory stringByAppendingPathComponent:dbFileName];
    BOOL checkOpenDatabaseResult = sqlite3_open([dataBasePath UTF8String], &dbOject);
    self.sqlite3Database =dbOject;
    if (checkOpenDatabaseResult != SQLITE_OK)
    {
        NSLog(@"faile %s", sqlite3_errmsg(dbOject));
    }
}

-(NSMutableDictionary *) loadData:(NSString *)querySelect
{
    sqlite3_stmt *compiledStatement;
    NSMutableDictionary *resultData;
    NSMutableArray *arrDatarow;
    NSMutableArray *arrColumnNames;
    // load all data from the database on the memory.
    BOOL prepareStatementResult = sqlite3_prepare_v2(self.sqlite3Database,[querySelect UTF8String], -1, &compiledStatement, nil);
    // Check status loaded data on the memory. If loaded failed then will raise error.
    if (prepareStatementResult==SQLITE_OK){
        resultData = [[NSMutableDictionary alloc] init];
        // Loop through each row of data and add data to the arrays.
        while (sqlite3_step(compiledStatement)==SQLITE_ROW)
        {
            // Initialize the arrDatarow with type is NSMutableArray.
            // arrDatarow will contain the data to be queried.
            arrDatarow = [[NSMutableArray alloc] init];
            // Initialize the arrColumnNames with type is NSMutableArray.
            // arrColumnNames will contain name of the columns.
            arrColumnNames = [[NSMutableArray alloc] init];
            int totalColumns = sqlite3_column_count(compiledStatement);

            for (int i =0; i< totalColumns; i++)
            {
                char *dbDataAsChars = (char *)sqlite3_column_text(compiledStatement, i);

                if (dbDataAsChars != NULL)
                {
                    [arrDatarow addObject:[NSString stringWithUTF8String:dbDataAsChars]];
                }
                if (arrColumnNames.count != totalColumns)
                {
                    dbDataAsChars = (char *)sqlite3_column_name(compiledStatement, i);
                    [arrColumnNames addObject:[NSString stringWithUTF8String:dbDataAsChars]];
                }
            }
        }
    }
    else
    {
        NSLog(@"Raise error :%s", sqlite3_errmsg(self.sqlite3Database));
    }
    resultData[@"Data"]=arrDatarow;
    resultData[@"ColumnName"]=arrColumnNames;
    return resultData;
}

-(BOOL) insertData:(NSString *)queryInsert
{
    sqlite3_stmt *compiledStatement;
    BOOL prepareStatementResult = sqlite3_prepare_v2(self.sqlite3Database,[queryInsert UTF8String], -1, &compiledStatement, nil);
    // Check status loaded data on the memory. If loaded failed then will raise error.
    if (prepareStatementResult==SQLITE_OK)
    {
        sqlite3_changes(self.sqlite3Database);
        sqlite3_last_insert_rowid(self.sqlite3Database);
    }
    return true;
}
@end
