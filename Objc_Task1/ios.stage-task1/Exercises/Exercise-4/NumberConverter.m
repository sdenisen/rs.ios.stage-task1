#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil)
        return [[NSArray alloc] init];
    
    int tmp = abs([number intValue]);
    NSMutableArray *result = [[NSMutableArray alloc] init];
    while (tmp!=0){
        int r = tmp%10;
        NSString *t = [[NSString alloc] initWithFormat:@"%d", r];
        [result addObject: t];
        tmp /= 10;
    }
    
    return [result copy];
}

@end
