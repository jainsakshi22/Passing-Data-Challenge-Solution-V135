//
//  CCViewController.m
//  Passing Data Challenge Solution V135
//
//  Created by Sakshi Jain on 20/09/14.
//
//

#import "CCViewController.h"
#import "CCDetailViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [sender isKindOfClass: [UIButton class]])
    {
        if([segue.destinationViewController isKindOfClass:[CCDetailViewController class]])
        {
            CCDetailViewController *nextController = segue.destinationViewController;
            nextController.information = self.textField.text;
            
            nextController.delegate = self; //To implement CCDetailViewControllerDelegate
        }
    }
    
}

#pragma mark - CCDetailViewDelegate Method

-(void)didUpdateText:(NSString *)text
{
    self.textField.text = text;
}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

@end
