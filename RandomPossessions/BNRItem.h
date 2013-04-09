//
//  BNRItem.h
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject


@property (nonatomic,copy)NSString *itemName;
@property (nonatomic, readonly,strong)NSString *description;
@property (nonatomic,copy) NSString *serialNumber;
@property (nonatomic,readonly,strong) NSDate *dateCreated;
@property (nonatomic) int valueInDollars;
@property (nonatomic,strong) BNRItem *containedItem;
@property (nonatomic,weak) BNRItem *container;

+(id)randomItem;

-(id)initWithItemName:(NSString *)name
       valueInDollars:(int)dollars
         serialNumber:(NSString *)sNumber;

//Chapter 2: Silver Solution
-(id)initWithItemName:(NSString *)name
         serialNumber:(NSString *)sNumber;



@end
