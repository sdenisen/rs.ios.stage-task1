#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if ([self length] == 0)
        return false;
    
    for (int i=0; i<[self length]; i++){
        unichar a = [self characterAtIndex:i];
        if (a<=57 && a>=48)
            continue;
        return false;
    }
    return true;
}

@end
