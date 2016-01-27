//
//  YEPArtist.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright В© 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YEPArtist.h"
#import "YEPSong.h"
//this line provides to inherit class NSObject
@implementation YEPArtist : NSObject

-(instancetype) initWithName:(NSString*)name
                 listOfSongs:(NSArray*)listOfSongs{
    self= [super init];
    if(!self) return nil;
    
    _name= name;
    _listOfSongs= listOfSongs;
    
    return self;
}

-(NSString*) description{
    NSMutableString *string = [[NSMutableString alloc] init];
    
    YEPArtist *artist= [super init];
    [string appendFormat:@"\n%@ - Artist \n", artist.name];
    [string appendString:@"List of songs ("];
    int i=0;
    for(YEPSong* song in artist.listOfSongs){
        [string appendFormat:@"\"%@\"", song.name];
        if(i<artist.listOfSongs.count-1){
            [string appendString:@", "];
            i++;
        }
    }
    [string appendString:@")\n"];
    
    return string;
}

@end
