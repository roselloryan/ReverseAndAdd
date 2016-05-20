//
//  main.m
//  ReverseAndAdd


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"195";
        
        NSInteger additions = 0;
        
        BOOL isPalidrome = NO;
        
        NSString *numStringOne = line;
        
        while (isPalidrome == NO) {
            
            NSMutableString *numStringTwo = [[NSMutableString alloc]init];
            
            NSInteger i = 0;
            for (i = 0; i < numStringOne.length; i++) {
                
                NSString *numStringAtIndex = [NSString stringWithFormat:@"%c", [numStringOne characterAtIndex:numStringOne.length - 1 - i]];
                [numStringTwo appendString:numStringAtIndex];
                NSLog(@"numStringOne: %@", numStringOne);
                NSLog(@"numStringTwo : %@", numStringTwo);
            }
            if ([numStringOne isEqualToString:numStringTwo]) {
                isPalidrome = YES;
                NSString *solutionString = [NSString stringWithFormat:@"%ld %@", additions, numStringOne];
                NSLog(@"%@", solutionString);
                break;
                
            }
            else {
                NSInteger newOne = [numStringOne integerValue] + [numStringTwo integerValue];
                numStringOne = [NSString stringWithFormat:@"%ld", newOne];
                additions ++;
            }
        }
    
            
    }
    return 0;
}
