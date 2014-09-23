//
//  CCDetailViewController.h
//  Passing Data Challenge Solution V135
//
//  Created by Sakshi Jain on 20/09/14.
//
//

#import <UIKit/UIKit.h>

@protocol CCDetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText :(NSString *)text;

@end

@interface CCDetailViewController : UIViewController

@property (weak,nonatomic) id <CCDetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong,nonatomic) NSString *information;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)updateButtonPressed:(id)sender;

@end
