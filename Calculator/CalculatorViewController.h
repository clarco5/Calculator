//
//  ViewController.h
//  Calculator
//
//  Created by Alexandros Bertzeletos on 13/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CalculatorBrain.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *display;
    CalculatorBrain *brain; 
    BOOL userIsInTheMiddleOfTypingANumber;
}
    - (IBAction)digitPressed:(UIButton *)sender;
    - (IBAction)operationPressed:(UIButton *)sender;

@end
