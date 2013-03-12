//
//  main.m
//  ConvertNSStringAndNSData
//
//  Created by Chalermchon Samana on 3/12/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Convert NSString to NSData
        NSString *myFavorite = @"www.appcodev.com";
        NSLog(@"string %@",myFavorite);
        //output string www.appcodev.com
        
        NSData *data = [myFavorite dataUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"convert to data : %@",data);
        //output convert to data : <7777772e 61707063 6f646576 2e636f6d>
        
        //Convert NSData to NSString
        NSString *myString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"myString : %@",myString);
        //output myString : www.appcodev.com
        
    }
    return 0;
}

