//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Alexandros Bertzeletos on 13/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

@synthesize store;
@synthesize operand;

/*
- (void)setOperand:(double)aDouble
{
    operand = aDouble;
}*/

- (void)performWaitingOperation
{
    if ([@"+" isEqual:waitingOperation]) 
    {
        operand = waitingOperand + operand; 
    }
    else if ([@"*" isEqual:waitingOperation]) 
    {
        operand = waitingOperand * operand; 
    }
    else if ([@"-" isEqual:waitingOperation]) 
    {
         operand = waitingOperand - operand; 
    }
    else if ([@"/" isEqual:waitingOperation]) 
	{
		if (operand) 
		{
			operand = waitingOperand / operand;
		}
		else
		{
			alertWithOkButton = [[UIAlertView alloc] 
								 initWithTitle:@"Error!"
								 message:@"Numbers can't be divided by zero (0)"
								 delegate:self 
								 cancelButtonTitle:@"OK" 
								 otherButtonTitles:nil];
			
			[alertWithOkButton show];
			[alertWithOkButton release];
		}
	}
}


- (double)performOperation:(NSString *)operation
{
    if ([operation isEqual:@"sqrt"])
        {
            operand = sqrt(operand); 
        }
    else if ([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }
    else if ([@"sin" isEqual:operation])
    {
        operand = sin(operand);
    }
    else if ([@"cos" isEqual:operation])
    {
        operand = cos(operand);
    }
    else if ([@"C" isEqual:operation])
    {
        operand = 0;
        store = 0;
    }
    else if ([@"Store" isEqual:operation])
    {
        operand = operand;
        store = operand;
    }
    else if ([@"Recall" isEqual:operation])
    {
        operand = store;
    }
    else if ([@"Mem+" isEqual:operation])
    {
        operand = operand;
        store = store + operand;
    }
    else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}

@end
