//
//  ViewController.m
//  Sandy's E Store
//
//  Created by sandy moon on 10/14/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "Object_Info.h"

@interface ViewController ()



    @property (nonatomic) int num_on_handLabel;
    @property (nonatomic) float costLabel ;
    @property (nonatomic) int totalObjects;
    @property (nonatomic) int index;
    @property (strong) NSMutableArray * imgArr;


    @property (weak, nonatomic) IBOutlet UITextField *productText;


    @property (weak, nonatomic) IBOutlet UITextField *descriptionText;

    @property (weak, nonatomic) IBOutlet UITextField *costText;

    @property (weak, nonatomic) IBOutlet UITextField *num_on_handText;
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;
    @property (weak, nonatomic) IBOutlet UIButton *BackwardButton;

@property (weak, nonatomic) IBOutlet UIButton *ForwardButton;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UITextField *num_on_records;
@property (weak, nonatomic) IBOutlet UITextField *num_of_inc;

@end

@implementation ViewController




- (void)viewDidLoad {
   // [super viewDidLoad];
    
 //   self.totalObjects = [];
    self.index = -1;
    [Object_Info CheckInitiated];
    self.totalObjects= [Object_Info size];
    self.imgArr= [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
    int records=[Object_Info size];
    
    self.num_on_records.text=[NSString stringWithFormat:@"%d",records];
     self.num_of_inc.text=[NSString stringWithFormat:@"%d",totInc];

    
}
-(void) setCostLabel:(float) costLabel{
   
    self.costText.text = [NSString stringWithFormat:@"%f",costLabel];
}

-(void) setNum_on_handLabel:(int)num_on_handLabel{
    self.num_on_handText.text = [NSString stringWithFormat:@"%d",num_on_handLabel];
}




- (IBAction)Forward:(id)sender {
  //  /*
    if(self.index < self.totalObjects-1){
        
        
        self.index++;
        if(self.index==self.totalObjects-1){
            [_slider setValue:1 animated:YES];
        }
        if(self.index>=0){
            [_BackwardButton setEnabled:YES];
            [_BackwardButton setBackgroundColor:[UIColor purpleColor]];
            // _BackwardButton.tintColor= [UIColor blueColor];
        }
        
        Object_Info *currObject;
        
        currObject = [Object_Info getObjective_InfoAtIndex: self.index];
        
        self.productText.text   = [NSString stringWithFormat:@"%@",currObject.Product];
        self.descriptionText.text = [NSString stringWithFormat:@"%@",currObject.Description];
        self.costText.text = [NSString stringWithFormat:@"%f",[currObject getCost]];
        self.num_on_handText.text = [NSString stringWithFormat:@"%d",[currObject getNum_On_Hand]];
        
        [self.imageView setImage: [UIImage imageNamed:currObject.Image]];
    
        if(self.index==self.totalObjects-1){
            [_ForwardButton setEnabled:NO];
            [_ForwardButton setBackgroundColor:[UIColor lightGrayColor]];
        }
       
    }
    else{
        [_ForwardButton setEnabled:NO];
        [_ForwardButton setBackgroundColor:[UIColor lightGrayColor]];
        //     [_ForwardButton setTintColor: [UIColor redColor]];
    }
    
    
  //   */
}

- (IBAction)Backward:(id)sender {
//    /*
    if(self.index > 0){
        self.index--;
        if(self.index==0){
            [_slider setValue:0 animated:YES];
        }
        if(self.index<self.totalObjects)
        { [_ForwardButton setEnabled:YES];
            [_ForwardButton setBackgroundColor:[UIColor purpleColor]];
        }
        
        Object_Info *currObject;
        
        currObject = [Object_Info getObjective_InfoAtIndex: self.index];
    
        
        self.productText.text   = [NSString stringWithFormat:@"%@",currObject.Product];
        self.descriptionText.text = [NSString stringWithFormat:@"%@",currObject.Description];
        self.costText.text = [NSString stringWithFormat:@"%f",[currObject getCost]];
        self.num_on_handText.text = [NSString stringWithFormat:@"%d",[currObject getNum_On_Hand]];
        [self.imageView setImage: [UIImage imageNamed:currObject.Image]];
        
        if(self.index==0){ [ _BackwardButton setEnabled: NO];
            [_BackwardButton setBackgroundColor:[UIColor lightGrayColor]];
        }
    }else{
        [ _BackwardButton setEnabled: NO];
            [_BackwardButton setBackgroundColor:[UIColor lightGrayColor]];
        
    }
    
  //   */
}
- (IBAction)sliderAction:(id)sender {
    Object_Info *currObject;
    if(self.slider.value==0){
        self.index=0;
        currObject= [Object_Info getObjective_InfoAtIndex:0];
        [ _BackwardButton setEnabled: NO];
        [_BackwardButton setBackgroundColor:[UIColor lightGrayColor]];
        [_ForwardButton setEnabled:YES];
        [_ForwardButton setBackgroundColor:[UIColor purpleColor]];
        
    }
    else if(self.slider.value==1){
        self.index=self.totalObjects-1;
        currObject= [Object_Info getObjective_InfoAtIndex:(self.totalObjects-1)];
        [_ForwardButton setEnabled:NO];
        [_ForwardButton setBackgroundColor:[UIColor lightGrayColor]];
        [_BackwardButton setEnabled:YES];
        [_BackwardButton setBackgroundColor:[UIColor purpleColor]];
        
    }
    
    self.productText.text   = [NSString stringWithFormat:@"%@",currObject.Product];
    self.descriptionText.text = [NSString stringWithFormat:@"%@",currObject.Description];
    self.costText.text = [NSString stringWithFormat:@"%f",[currObject getCost]];
    self.num_on_handText.text = [NSString stringWithFormat:@"%d",[currObject getNum_On_Hand]];
    [self.imageView setImage: [UIImage imageNamed:currObject.Image]];
    
    
    
    
}
- (IBAction)increment:(UIButton *)sender {
 //   /*
    if(self.index>=0){
        totInc++;
        
        Object_Info *currObject;
        currObject= [Object_Info getObjective_InfoAtIndex:self.index];
        
        [currObject Add_Stock];
        [currObject setNum_On_Hand:[currObject getNum_On_Hand]];
        
        self.num_on_handText.text= [NSString stringWithFormat:@"%d", [currObject getNum_On_Hand]];
    }
  //   */
}
- (IBAction)decrement:(UIButton *)sender {
 //   /*
    if(self.index>=0){
        Object_Info *currObject;
        currObject= [Object_Info getObjective_InfoAtIndex:self.index];
        
        [currObject Delete_Stock];
        [currObject setNum_On_Hand:[currObject getNum_On_Hand]];
        
        self.num_on_handText.text= [NSString stringWithFormat:@"%d", [currObject getNum_On_Hand]];
    }
 //    */
}
    
- (IBAction)stats_pressed:(id)sender {
    int records=[Object_Info size];
    
    self.num_on_records.text=[NSString stringWithFormat:@"%d",records];
    
     self.num_of_inc.text=[NSString stringWithFormat:@"%d",totInc];
    
}

@end
