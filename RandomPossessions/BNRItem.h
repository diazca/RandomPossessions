//
//  BNRItem.h
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+(id)randomItem;

-(id)initWithItemName:(NSString *)name
       valueInDollars:(int)dollars
         serialNumber:(NSString *)sNumber;

//Chapter 2: Silver Solution
-(id)initWithItemName:(NSString *)name
         serialNumber:(NSString *)sNumber;

-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)i;
-(int)valueInDollars;

-(NSDate *)dateCreated;


@end
