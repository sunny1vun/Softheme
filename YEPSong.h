//
//  YEPSong.h
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>

@class YEPSong;

@protocol YEPSongProtocol <NSObject>
@required
-(void)outPutOfSong:(YEPSong*)anotherSong;

@end

@interface YEPSong : NSObject <SongProtocol>

@property NSString *name;
@property NSString *text;
@property NSArray *artists;

-(instancetype)initWithName:(NSString*)name
                       text:(NSString*)text
                     artists:(NSArray*)artists;

@end
