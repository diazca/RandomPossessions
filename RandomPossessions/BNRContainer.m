//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer
+(id)randomItem
{
    BNRContainer *newItem = (BNRContainer *)[super randomItem];
    newItem.subItems= @[[BNRItem randomItem]];
    return newItem;
    
    
}
-(id)initWithItemName:(NSString *)name valueInDollars:(int)dollars serialNumber:(NSString *)sNumber andSubItems:(NSArray *)subItems
{
    self = [super initWithItemName:name valueInDollars:dollars serialNumber:sNumber];
    if(self){
        self.subItems = subItems;

    }
    return self;
    
}
-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@) is worth %d. It contains : %@",
                                                                    self.itemName,
                                                                    self.serialNumber,
                                                                    [self containerValue],
                                                                    [self listedItems]];
    
    return descriptionString;
}

//Calculates total value of container
-(int)containerValue
{
    int totalValue = [self valueInDollars];
    
    for(id item in self.subItems)
    {
        if([item isKindOfClass:[BNRContainer class]])
            totalValue += [item containerValue];
        else
            totalValue += [item valueInDollars];
    }
    
    return totalValue;
}

//List of items in container
-(NSString *)listedItems
{
    NSString *itemsList = @"";
    for(BNRContainer *item in self.subItems)
        itemsList = [NSString stringWithFormat:@"%@;%@", itemsList, item.description];
    
    return itemsList;
}




@end
