//
//  Song.h
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Song;

@protocol SongProtocol <NSObject>
@required
-(void)outPutOfSong:(Song*)anotherSong;

@end

@interface Song : NSObject <SongProtocol>

@property NSString *name;
@property NSString *text;
@property NSArray *artists;

-(instancetype)initWithName:(NSString*)name
                       text:(NSString*)text
                     artists:(NSArray*)artists;

@end
