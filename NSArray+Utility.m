//
//  NSArray+Utility.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright В© 2016 123. All rights reserved.
//

#import "NSArray+Utility.h"
#import "YEPGroup.h"
#import "YEPArtist.h"
#import "YEPSong.h"

@implementation NSArray(Utility)
//-(NSString*)prettyViewOfElements{
-(NSString*)prettyViewOfElements: (NSString*)nameOfBand{
	/*It is used for Arrays. Output of Array by given (int)index.
	It shows: Name of the group
	List of Artists wich are in the group
	List of Songs that group maid.
	one string that consist of (string)+
	(array of strings)+
	(array of strings)
	*/
    NSMutableString *string = [[NSMutableString alloc] init];
    for(id item in self){
        
        if ([item class] == [YEPGroup class]){
            
            if ([item class] == [YEPGroup class]){
                for(YEPGroup *group in self){
                    if([group.name isEqualToString: nameOfBand]){
                    [string appendFormat:@"%@ - Group \n", group.name];
                    [string appendFormat:@"List of Artists ("];
                    int i= 0;
                    for(YEPArtist *artist in group.listOfArtists){
                        [string appendFormat:@"%@", artist.name];
                        if(i< group.listOfArtists.count-1){
                            i++;
                            [string appendString:@", "];
                        }
                    }
                    [string appendString:@") \n"];
                    [string appendString:@"List of songs ("];
                    i= 0;
                    for(YEPSong *song in group.listOfSongs){
                        [string appendFormat:@"\"%@\"", song.name];
                        if(i< group.listOfArtists.count-1){
                            i++;
                            [string appendString:@", "];
                        }
                    }
                    [string appendString:@") \n\n"];
                    }
                }
                return string;
            }
        }
    }
    return @"Error";
}

@end
