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
    NSMutableArray *subItems;
}
-(NSMutableArray *)subItems;
-(int)containerValue;
-(NSString *)listedItems;

@end
