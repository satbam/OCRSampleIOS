//
//  ViewController.h
//  OCR Sample
//
//  Created by Satraj Bambra on 2013-07-23.
//  Copyright (c) 2013 Satraj Bambra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView * image;
@property (strong, nonatomic) IBOutlet UILabel * label;

-(IBAction)scan:(id)sender;
@end
