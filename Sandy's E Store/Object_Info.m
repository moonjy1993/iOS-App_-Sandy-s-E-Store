//
//  Object_Info.m
//  Moon_ios_lab1
//
//  Created by sandy moon on 9/29/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "Object_Info.h"

@implementation Object_Info
@synthesize Description, Product, Image;

//contructor and initalize object
    
+(BOOL) initArray{
    
    [Object_Info Add_Item:[Object_Info objectInfoWithProduct: @"iPhone6"
                                             withDescription:@"Apple's iPhone 6 minus plug"
                                             withCost:769.00
                                     withNum_One_Hand:0
                                     withImage: @"iphone6.png"]];
    
    
    [Object_Info Add_Item:[Object_Info objectInfoWithProduct: @"GalaxyNote7"
                                             withDescription:@"Samsung's Exploding Phone"
                                                    withCost:850.00
                                            withNum_One_Hand:0
                                                   withImage:@"galaxy7.png"]];
    
    [Object_Info Add_Item:[Object_Info objectInfoWithProduct: @"TV"
                                             withDescription:@"Sony's LED TV"
                                                    withCost:298.00
                                            withNum_One_Hand:0
                                                   withImage:@"sony.png"]];
    
    [Object_Info Add_Item:[Object_Info objectInfoWithProduct: @"KindleReader"
                                             withDescription:@"Amazon's E-Reader"
                                                    withCost:79.99
                                            withNum_One_Hand:0
                                                   withImage:@"kindle.png"]];
    
    [Object_Info Add_Item:[Object_Info objectInfoWithProduct: @"AppleWatch"
                                             withDescription:@"Series 2 - Aluminum Case"
                                                    withCost:299.00
                                            withNum_One_Hand:0
                                                   withImage:@"iwatch.png"]];
    return YES;
}
+(BOOL) CheckInitiated{
    if(!stock){
        [Object_Info getArray];
    }
    return YES;
}

+(Object_Info*) objectInfoWithProduct:(NSString *)Product
                      withDescription:(NSString *)Description
                                  withCost:(float)Cost
                          withNum_One_Hand:(int)Num_On_Hand
                            withImage:(NSString*)Image;
{
    Object_Info *Value= [[Object_Info alloc] initWithProduct:Product withDescription:Description withCost: Cost withNum_One_Hand:Num_On_Hand withImage:Image];
    return Value;
}

-(Object_Info*) initWithProduct:(NSString*) product
                    withDescription:(NSString *)description
                            withCost:(float)cost
                    withNum_One_Hand:(int)num_On_Hand
                      withImage:(NSString*) image;
{
    self=[super init];
    
    if(self){
        [self setCost:cost ];
        [self setNum_On_Hand:num_On_Hand];
        self.Description= description;
        self.Product=product;
        self.Image= image;
    }
    return self;
}

//setteer and getter
+(int) size;{
    return [[Object_Info getArray] count];
}

-(void) setNum_On_Hand:(int)num;
{
    Num_On_Hand= num;
}
-(int) getNum_On_Hand;
{
    return Num_On_Hand;
}
-(void)  setCost: (float) num;
{
    Cost= num;
}
-(float) getCost;
{
    return Cost;
}

+(NSMutableArray*) getArray;
{
    if(!stock){
        stock=[[NSMutableArray alloc] init];
        [Object_Info initArray];
    }
    return stock;
}


+(BOOL) Add_Item:(Object_Info *) value;
{
    NSMutableArray *_stock;
    _stock= [Object_Info getArray];
    [_stock addObject:value];
    
    return YES;
    
}

+(Object_Info *) getObjective_InfoAtIndex:(int)index;
{
    return [[Object_Info getArray] objectAtIndex:index];
}

//add stock by increasing Num_On_Hand

-(void) Add_Stock;
{
    Num_On_Hand++;

}

-(void) Delete_Stock;
{
    if(Num_On_Hand==0) return;
    else Num_On_Hand--;
}





@end
