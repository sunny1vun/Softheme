//
//  NSArray+Utility.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright В© 2016 123. All rights reserved.
//

#import "NSArray+Utility.h"
#import "YOGroup.h"

@implementation NSArray(Utility)
-(NSString*)prettyViewOfElements:(int)index
			nameOfGroup:(NSString*)name;
{
	/*It is used for Arrays. Output of Array by given (int)index.
	It shows: Name of the group
	List of Artists wich are in the group
	List of Songs that group maid.
	one string that consist of (string)+
	(array of strings)+
	(array of strings)
	*/
	self=[super init];
		if(!self) return nil;
    for(int i=0; i<self.count; i++){
		if(i== index){
			if([[self[index] class] isEqualToString: @"") 
		}
	}   
		return self;
}

@end
