//
//  NSArray+Utility.h
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YOGroup.h"

@interface NSArray(Utility)

@property YEPGroup* group;
-(NSString*)prettyViewOfElements:(int)index;

@end
