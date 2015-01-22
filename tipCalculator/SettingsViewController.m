//
//  SettingsViewController.m
//  tipCalculator
//
//  Created by Biren Barodia on 1/20/15.
//  Copyright (c) 2015 Biren Barodia. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *defaultTipPercent;
- (IBAction)onTap:(id)sender;
- (void) saveValues;

@end

@implementation SettingsViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if ( self ) {
        self.title = @"Settings";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onTap:(id)sender {
    NSLog(@"tapped elsewhere");

    [self.view endEditing:YES];
    NSLog(@"tapped save");
    
    [self saveValues];
}

- (void) saveValues {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.defaultTipPercent.text forKey:@"defaultTipPercent"];
    [defaults synchronize];
}

@end
