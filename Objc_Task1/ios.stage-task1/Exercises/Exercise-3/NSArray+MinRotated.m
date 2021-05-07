#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if([self count] == 0)
        return nil;
        
    unsigned long length = [self count];
    if (length == 1)
        return self[0];
    
    if ([self[0] intValue] < [self[length-1] intValue])
        return [self objectAtIndex:0];

    
    unsigned long f_index = 0;
    unsigned long e_index = length - 1;
    unsigned long m_index = (f_index + e_index)/2;
    
    NSNumber *min_value = nil;
    if ([self[f_index] intValue] < [self[e_index] intValue])
        min_value = self[f_index];
    else
        min_value = self[e_index];

    while (f_index != e_index) {
        m_index = (f_index + e_index)/2;
        
        if ([min_value intValue] > [self[m_index] intValue]){
            min_value = [self objectAtIndex:m_index];
            e_index = m_index;
        }
        else{
            f_index = m_index+1;
        }
        
    }
    return min_value;
}

@end
