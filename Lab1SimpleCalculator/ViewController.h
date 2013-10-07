//
//  ViewController.h
//  Lab1SimpleCalculator
//
//  Created by Lamar on 7/14/13.
//  Copyright (c) 2013 Lamar. All rights reserved.
//

#import <UIKit/UIKit.h>
int storage=0;
BOOL equaled=NO;
BOOL isNewNum=YES;

typedef enum{Plus, Subtract, Multiply, Divide, Summed} CalcOperation;

@interface ViewController : UIViewController {
    CalcOperation operation;
}

@property (strong, nonatomic) IBOutlet UILabel *lblResult;


- (IBAction)append:(id)sender;


- (IBAction)append0;
- (IBAction)equal;

- (IBAction)makeSummed;


-(IBAction)resultAdd;
-(IBAction)resultSubtract;
-(IBAction)resultMultiply;
-(IBAction)resultDivide;
-(IBAction)clearVar;


@end
