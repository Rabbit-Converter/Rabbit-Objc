//
//  ViewController.m
//  Rabbit
//
//  Created by Htain Lin Shwe on 18/4/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import "ViewController.h"
#import "Rabbit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  NSLog(@"%@",[Rabbit zg2uni:@"သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝဍ္ဎနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘးဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။"]);
  
  NSLog(@"%@",[Rabbit uni2zg:@"သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ်ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေးဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။"]);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
