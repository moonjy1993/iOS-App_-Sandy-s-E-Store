//
//  AddRecord.m
//  Sandy's E Store
//
//  Created by sandy moon on 10/17/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "AddRecord.h"
#import "ViewController.h"
#import "Object_Info.h"

@interface AddRecord ()
@property (weak, nonatomic) IBOutlet UITextField *productText;
@property (weak, nonatomic) IBOutlet UITextField *descriptionText;
@property (weak, nonatomic) IBOutlet UITextField *costText;
@property (weak, nonatomic) IBOutlet UITextField *num_on_handText;

@end

@implementation AddRecord


- (IBAction)EnterButton:(id)sender {
    [Object_Info Add_Item: [Object_Info objectInfoWithProduct:self.productText.text withDescription:self.descriptionText.text withCost:[self.costText.text floatValue] withNum_One_Hand:[self.num_on_handText.text intValue] withImage:@"black.png"]];
    
    
    
}



/*

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
