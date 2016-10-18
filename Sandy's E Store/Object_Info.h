
#import <Foundation/Foundation.h>

static int totInc=0;
static NSMutableArray *stock;

@interface Object_Info : NSObject
{
    int Num_On_Hand;
    float Cost;
}
@property NSString *Description, *Product, *Image;



+(BOOL) initArray;
+(BOOL) CheckInitiated;
+(Object_Info*) objectInfoWithProduct: (NSString *) Product
                          withDescription: (NSString*) Description
                                 withCost: (float) Cost
                         withNum_One_Hand: (int) Num_On_Hand
                            withImage: (NSString *) Image;


-(Object_Info*) initWithProduct: (NSString*) Product
                    withDescription: (NSString*) Description
                            withCost: (float) Cost
                    withNum_One_Hand: (int) Num_On_Hand
                      withImage:(NSString*) Image;
    


+(int) size;
 
-(void) setNum_On_Hand: (int) num;

-(int) getNum_On_Hand;

-(void) setCost: (float) cost;

-(float) getCost;
    
+(Object_Info *) getObjective_InfoAtIndex: (int) index;
    
+(id) getArray;
    
+(BOOL) Add_Item: (Object_Info*) value;
    
-(void) Add_Stock;

-(void) Delete_Stock;

/*

-(BOOL) Add_Item: (NSString *) item
 withDescription: (NSString *) Description
        withCost: (float) Cost;

+(BOOL) Delete_Item: (NSString *) item;

+(BOOL)Add_Stock: (NSString *) item
    withNewStock: (int) num;


+(BOOL)Sell_Item:(NSString *) item;
+(id) getItem;
*/
@end
