//
//  ViewController.m
//  Lab1SimpleCalculator
//
//  Created by Lamar on 7/14/13.
//  Copyright (c) 2013 Lamar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _lblResult.text=@"0";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


-(IBAction)resultAdd{
    if (storage==0) {
        storage=[_lblResult.text integerValue];
        _lblResult.text=[NSString stringWithFormat:@"%d", storage];

    }else {
        [self equal];
    }
    operation=Plus;
    isNewNum=YES;
    return;
}


-(IBAction)resultSubtract{
    if (storage==0) {
        storage=[_lblResult.text integerValue];
        _lblResult.text=[NSString stringWithFormat:@"%d", storage];
        
    }else {
        [self equal];
    }
    operation=Subtract;
    isNewNum=YES;
    return;
}


-(IBAction)resultMultiply{
    if (storage==0) {
        storage=[_lblResult.text integerValue];
        _lblResult.text=[NSString stringWithFormat:@"%d", storage];
        
    }else {
        [self equal];
    }
    operation=Multiply;
    isNewNum=YES;
    return;
}


-(IBAction)resultDivide{
    if (storage==0) {
        storage=[_lblResult.text integerValue];
        _lblResult.text=[NSString stringWithFormat:@"%d", storage];
        
    }else {
        [self equal];
    }
    operation=Divide;
    isNewNum=YES;
    return;
}



//  Captures value of button for number

- (IBAction)append:(id)sender {
    if (isNewNum==YES || equaled==YES) {
        NSString *btnValue = [(UIButton *)sender currentTitle];
        _lblResult.text=[NSString stringWithFormat:@"%@", btnValue];
        isNewNum=NO;
    }else {
        NSString *btnValue = [(UIButton *)sender currentTitle];
        _lblResult.text=[NSString stringWithFormat:@"%@%@",_lblResult.text, btnValue];
    }
}



- (IBAction)append0 {
    if (isNewNum==YES || equaled==YES) {
        _lblResult.text=[NSString stringWithFormat:@"0"];
    }else {
        _lblResult.text=[NSString stringWithFormat:@"%@0", _lblResult.text];
    }
}


- (IBAction)equal {
        switch (operation) {
            case Plus:
                equaled=YES;
                storage=storage + [_lblResult.text intValue];
                _lblResult.text=[NSString stringWithFormat:@"%d", storage];
                isNewNum=YES;
                break;
                
            case Subtract:
                equaled=YES;
                storage=storage - [_lblResult.text intValue];
                _lblResult.text=[NSString stringWithFormat:@"%d", storage];
                isNewNum=YES;
                break;
                
            case Multiply:
                equaled=YES;
                storage=storage * [_lblResult.text intValue];
                _lblResult.text=[NSString stringWithFormat:@"%d", storage];
                isNewNum=YES;
                break;
                
            case Divide:
                equaled=YES;
                storage=storage / [_lblResult.text intValue];
                _lblResult.text=[NSString stringWithFormat:@"%d", storage];
                isNewNum=YES;
                break;
                
            case Summed:
                _lblResult.text=_lblResult.text;
                equaled=YES;
                isNewNum=YES;
                break;
    }    
}

- (IBAction)makeSummed {
    operation = Summed;
    [self equal];
}


- (IBAction)clearVar {
    _lblResult.text=@"0";
    storage=0;
    equaled=NO;
    isNewNum=YES;
}

@end
