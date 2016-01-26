//
//  Artist.h
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>

//this line provides to inherit class NSObject
@interface Artist : NSObject

@property NSString *name;
@property NSArray *listOfSongs;

-(instancetype) initWithName:(NSString*)name
                 listOfSongs:(NSArray*)listOfSongs;

-(NSString*) descriprtion;

@end
