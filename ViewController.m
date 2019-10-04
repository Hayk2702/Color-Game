//
//  ViewController.m
//  myColor
//
//  Created by Qocharyan on 10/2/18.
//  Copyright © 2018 Qocharyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    n=0;
    [self disabledButton];
}


- (IBAction)start:(id)sender {
    
    if(n==0){

    timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(updateColor) userInfo:nil repeats:YES];
     
    }
    else if(n==3){
        n=0;
        [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
        
    }
}

- (IBAction)color:(id)sender {
    [self enableButton];
    if(n<3){
    UIButton *button=(UIButton*)sender;
    NSInteger btag=button.tag;
        y[n]=btag;
        NSLog(@"y=%i",y[n]);
        n++;
        [self enableButton];
    }
    if(n==3){
        boolColor=YES;
        for(int j=0;j<3;j++){
            if(x[j]!=y[j]){
                boolColor=NO;
            }
        }
        if(boolColor){
            self.label.text=@"YES";
            NSLog(@"YES");
        }
        else{
            self.label.text=@"NO";
            NSLog(@"NO");
        }
        [self disabledButton];

        self.startButton.enabled=YES;
        self.startButton.alpha=1.0;
    }
    
}


-(void)updateColor{
    int i;
    colors=@[@"Red",
             @"Blue",
             @"Green",
             @"Yellow",
             @"Gray",
             @"White",
             @"Brown",
             @"Orange",
             @"Purple"];
    self.startButton.enabled=NO;
    self.startButton.alpha=0.5;
    i=arc4random()%9;
    NSLog(@"i=%i",i);
    self.label.text=colors[i];
    x[n]=i;
    n++;
    if(n==3){
        self.label.text=@"Sequentially specify the colors";
        n=0;
        [self enableButton];
        [timer invalidate];
        [self.startButton setTitle:@"RESTART" forState:UIControlStateNormal];
        
    }
    
}
-(void)disabledButton{
    self.color0.enabled=NO;
    self.color0.alpha=0.5;
    self.color1.enabled=NO;
    self.color1.alpha=0.5;
    self.color2.enabled=NO;
    self.color2.alpha=0.5;
    self.color3.enabled=NO;
    self.color3.alpha=0.5;
    self.color4.enabled=NO;
    self.color4.alpha=0.5;
    self.color5.enabled=NO;
    self.color5.alpha=0.5;
    self.color6.enabled=NO;
    self.color6.alpha=0.5;
    self.color7.enabled=NO;
    self.color7.alpha=0.5;
    self.color8.enabled=NO;
    self.color8.alpha=0.5;

}
-(void)enableButton{
    self.color0.enabled=YES;
    self.color0.alpha=1;
    self.color1.enabled=YES;
    self.color1.alpha=1;
    self.color2.enabled=YES;
    self.color2.alpha=1;
    self.color3.enabled=YES;
    self.color3.alpha=1;
    self.color4.enabled=YES;
    self.color4.alpha=1;
    self.color5.enabled=YES;
    self.color5.alpha=1;
    self.color6.enabled=YES;
    self.color6.alpha=1;
    self.color7.enabled=YES;
    self.color7.alpha=1;
    self.color8.enabled=YES;
    self.color8.alpha=1;
    
}
@end
