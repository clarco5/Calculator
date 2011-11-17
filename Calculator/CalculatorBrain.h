//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Alexandros Bertzeletos on 13/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
{
    double operand;
    double store; 
    NSString *waitingOperation;
    double waitingOperand;
    UIAlertView *alertWithOkButton;
}

//- (void)setOperand:(double)aDouble;

@property double operand;
@property double store;

- (double)performOperation:(NSString *)operation;


@end
