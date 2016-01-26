//
//  NSArray+Utility.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "NSArray+Utility.h"
#import "YOGroup.h"

@implementation NSArray(Utility)
-(void)PrettyViewOfAllElements:(int)index{
    NSLog(self[index].group);
}

@end
