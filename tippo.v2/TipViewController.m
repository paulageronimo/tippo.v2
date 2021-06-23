//
//  TipViewController.m
//  tippo.v2
//
//  Created by Paula Leticia Geronimo on 6/23/21.
//

#import "TipViewController.h"

@interface TipViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billFields;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentageControl;
@property (weak, nonatomic) IBOutlet UIView *labelsContainerView;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    
    [self.view endEditing:true]; // why the [] ??
    
    
}
- (IBAction)updateLabels:(id)sender {
//    if (self.billFields.text.length == 0) {
//        [self hideLabels];
//        [self unhideLabels];
//    }
    
    double tipPercentages[] = {0.15, 0.2, 0.25};
    double tipPercentage = tipPercentages[self.tipPercentageControl.selectedSegmentIndex];
    
    double bill = [self.billFields.text
                    doubleValue];
    double tip = bill * tipPercentage;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

//- (void)hideLabels {
//    [UIView animateWithDuration:0.5 animations:^{
//        CGRect billFrame = self.billFields.frame;
//        billFrame.origin.y += 100;
//
//        self.billFields.frame = billFrame;
//
//        CGRect labelsFrame = self.labelsContainerView.frame;
//        labelsFrame.origin.y += 100;
//
//        self.labelsContainerView.frame = labelsFrame;
//
//        self.labelsContainerView.alpha = 0;
//    }];
//}
//- (void)unhideLabels {
//    [UIView animateWithDuration:0.5 animations:^{
//        CGRect billFrame = self.billFields.frame;
//        billFrame.origin.y -= 100;
//
//        self.billFields.frame = billFrame;
//
//        CGRect labelsFrame = self.labelsContainerView.frame;
//        labelsFrame.origin.y -= 100;
//
//        self.labelsContainerView.frame = labelsFrame;
//
//        self.labelsContainerView.alpha = 0;
//    }];
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
