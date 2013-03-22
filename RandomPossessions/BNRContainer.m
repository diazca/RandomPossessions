//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

-(id)initWithItemName:(NSString *)name valueInDollars:(int)dollars serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self){
        [self setItemName:name];
        [self setValueInDollars:dollars];
        [self setSerialNumber:sNumber];
        subItems = [[NSMutableArray alloc] initWithObjects:[BNRContainer randomItem],[BNRContainer randomItem],[BNRContainer randomItem], nil];

    }
    return self;
    
}
-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) is worth %d. It contains : %@",
                                                                    itemName,
                                                                    serialNumber,
                                                                    [self containerValue],
                                                                    [self listedItems]];
    
    return descriptionString;
}

//Calculates total value of container
-(int)containerValue
{
    int totalValue = [self valueInDollars];
    
    for(BNRContainer *item in subItems)
    {
        totalValue = totalValue + [item valueInDollars];
    }
    
    return totalValue;
}

//List of items in container
-(NSString *)listedItems
{
    NSString *itemsList = [[NSString alloc] init];
    for(BNRContainer *item in subItems)
        [itemsList stringByAppendingString:[item itemName]];
    
    return itemsList;
}

-(NSMutableArray *)subItems
{
    return subItems;
}



@end
