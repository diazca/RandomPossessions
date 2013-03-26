//
//  main.m
//  RandomPossessions
//
//  Created by CLOS on 3/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        for(int i=0;i<5;i++)
        {

            [array addObject:[BNRContainer randomItem]];
        }
        
        for(BNRContainer *item in array)
        {
            NSLog(@"%@",item);
        }
        
        //Chapter 2: Bronze Solution
       // NSLog(@"%@",[array objectAtIndex:11]);
        array = nil;
    }
    return 0;
}

