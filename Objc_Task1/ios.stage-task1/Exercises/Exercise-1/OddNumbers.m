//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    if(array == nil)
        return 0;
    int count = 0;
    for (id object in array){
        int obj_int = [object intValue];
        if (obj_int % 2){
            count++;
        }
    }
    return count;
}

@end
