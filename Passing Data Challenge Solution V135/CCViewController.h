//
//  CCViewController.h
//  Passing Data Challenge Solution V135
//
//  Created by Sakshi Jain on 20/09/14.
//
//

#import <UIKit/UIKit.h>
#import "CCDetailViewController.h"

@interface CCViewController : UIViewController <CCDetailViewControllerDelegate,UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;


@end
