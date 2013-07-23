//
//  ViewController.m
//  OCR Sample
//
//  Created by Satraj Bambra on 2013-07-23.
//  Copyright (c) 2013 Satraj Bambra. All rights reserved.
//

#import "ViewController.h"

#import "Tesseract.h"



@interface ViewController ()

@end

@implementation ViewController

@synthesize image,label;



-(IBAction)scan:(id)sender {

    
    Tesseract* tesseract = [[Tesseract alloc] initWithDataPath:@"tessdata" language:@"eng"];
    [tesseract setVariableValue:@"0123456789." forKey:@"tessedit_char_whitelist"];
    [tesseract setImage:image.image];
    [tesseract recognize];
    
    NSLog(@"%@", [tesseract recognizedText]);
    
    label.text = [tesseract recognizedText];
    
    [tesseract clear];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
