//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
   
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)dollars serialNumber:(NSString *)sNumber andSubItems:(NSArray *)subItems;

@property (nonatomic,retain) NSArray *subItems;

-(NSString *)listedItems;

@end
