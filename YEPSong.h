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
-(NSString*)outPutOfSong;

@end

@interface YEPSong : NSObject <YEPSongProtocol>

@property NSString *name;
@property NSString *text;
@property NSArray *artists;

-(instancetype)initWithName:(NSString*)name
                       text:(NSString*)text
                     artists:(NSArray*)artists;

@end
