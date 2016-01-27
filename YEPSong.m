//
//  Song.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright В© 2016 123. All rights reserved.
//

#import "YEPSong.h"

@implementation YEPSong

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

-(NSString*)outPutOfSong{
    NSMutableString *string = [[NSMutableString alloc] init];
    YEPSong *song= [super init];
    [string appendFormat:@"\n%@ \n\n", song.name];
    [string appendFormat:@"\"%@\", ", song.text];
    return string;
}

@end
