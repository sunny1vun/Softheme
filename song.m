//
//  Song.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "Song.h"

@implementation Song

-(instancetype)initWithName:(NSString*)name
                       text:(NSString*)text
                     artists:(NSArray*)artists{
    self=[super init];
    if(!self) return nil;
    
    _name= name;
    _text= text;
    _artists= artists;
    
    return self;
}

-(void)outPutOfSong:(Song*)anotherSong{
    
}


@end
