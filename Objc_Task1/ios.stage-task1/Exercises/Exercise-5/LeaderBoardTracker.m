#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    
    NSOrderedSet *mySet = [[NSOrderedSet alloc] initWithArray:rankedArray];
    NSMutableArray *a = [[NSMutableArray alloc] initWithArray:[mySet array]];
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    int k = 0;
    for (int i=0; i<[playerArray count]; i++){
        int prev_k = k;
        for(int j=0; j<[a count]; j++){
            if([a[j] intValue]<[playerArray[i] intValue]){
                [a insertObject:playerArray[i] atIndex:j];
                [result addObject:@(j+1)];
                k++;
                break;
            }
            if([a[j] intValue]==[playerArray[i] intValue]){
                [result addObject:@(j+1)];
                k++;
                break;
            }
        }
        if (prev_k == k){
            [a addObject:playerArray[i]];
            [result addObject:@([a count])];
            k++;
        }
    }
//    NSArray <NSNumber *> *rr = [[NSArray alloc] initWithArray:result];
    
    return [result copy];
}

@end
