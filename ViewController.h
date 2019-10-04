//
//  ViewController.h
//  myColor
//
//  Created by Qocharyan on 10/2/18.
//  Copyright © 2018 Qocharyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer* timer;
    NSArray *colors;
    int n;
    int x[3];
    int y[3];
    BOOL boolColor;
}
@property (strong, nonatomic) IBOutlet UIButton *color0;
@property (strong, nonatomic) IBOutlet UIButton *color1;
@property (strong, nonatomic) IBOutlet UIButton *color2;
@property (strong, nonatomic) IBOutlet UIButton *color3;
@property (strong, nonatomic) IBOutlet UIButton *color4;
@property (strong, nonatomic) IBOutlet UIButton *color5;
@property (strong, nonatomic) IBOutlet UIButton *color6;
@property (strong, nonatomic) IBOutlet UIButton *color7;
@property (strong, nonatomic) IBOutlet UIButton *color8;



@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *startButton;
- (IBAction)start:(id)sender;
- (IBAction)color:(id)sender;


@end

