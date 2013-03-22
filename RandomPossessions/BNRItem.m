//
//  BNRItem.m
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(id)randomItem
{
    //Create an array of three adjectives
    NSArray *randomAdjectivesList = [NSArray arrayWithObjects:@"Fluffy",
                                                                @"Rusty",
                                                                @"Shiny",nil];
    //Create an array of three nouns
    NSArray *randomNounsList = [NSArray arrayWithObjects:@"Bear",
                                                            @"Spork",
                                                            @"Mac",nil];
    NSInteger adjectiveIndex = rand() % [randomAdjectivesList count];
    NSInteger nounIndex = rand() % [randomNounsList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            [randomAdjectivesList objectAtIndex:adjectiveIndex],
                            [randomNounsList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc]initWithItemName:randomName
                                      valueInDollars:randomValue
                                        serialNumber:randomSerialNumber];
    return newItem;
    
    
}
-(id)init
{
    return [self initWithItemName:@"itemName" valueInDollars:0 serialNumber:@""];
}

//Chapter 2: Silver Solution
-(id)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
}

//Designated initializer
-(id)initWithItemName:(NSString *)name
       valueInDollars:(int)dollars
         serialNumber:(NSString *)sNumber
{
    self = [super init];
    
    if(self){
        [self setItemName:name];
        [self setValueInDollars:dollars];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}
-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on  %@", itemName,serialNumber,valueInDollars,dateCreated];
    return descriptionString;
}
-(void)setItemName:(NSString *)str
{
    itemName = str;
}

-(NSString *)itemName
{
    return itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

@end
