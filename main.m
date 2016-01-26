//
//  main.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright В© 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YEPArtist.h"
#import "YEPGroup.h"
#import "YEPSong.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *someSongs=[[NSMutableArray alloc] initWithObjects:
		[[YEPSong alloc] initWithName:@"РўС‹ РљРёРЅСѓР»Р°" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
		[[YEPSong alloc] initWithName:@"Р“СЂР°Р№" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], 
		nil];
        NSMutableArray *songs=[[NSMutableArray alloc] initWithObjects:
		[[YEPSong alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
		[[YEPSong alloc] initWithName:@"someSong" text:@"notSomeSong" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], 
		nil];
        NSMutableArray *songsOfBrutto=[[NSMutableArray alloc] initWithObjects:
		[[YEPSong alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
		[[YEPSong alloc] initWithName:@"Underdog" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], 
		nil];
        NSMutableArray *noNameSongs=[[NSMutableArray alloc] initWithObjects:
		[[YEPSong alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
		[[YEPSong alloc] initWithName:@"Underdog" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], 
		nil];
        
        YEPArtist *notSergeyMihalok=[[YEPArtist alloc] initWithName:@"РќРµ РЎРµСЂРіРµР№ РњРёС…Р°Р»РѕРє" listOfSongs:someSongs];
        YEPArtist *mihalok=[[YEPArtist alloc] initWithName:@"РњРёС…Р°Р»РѕРє" listOfSongs:songs];
        YEPArtist *sergey=[[YEPArtist alloc] initWithName:@"РЎРµСЂРіРµР№" listOfSongs:songsOfBrutto];
        YEPArtist *noName=[[YEPArtist alloc] initWithName:@"Noname" listOfSongs:noNameSongs];
         
		YEPGroup *lyapisCrew=[[YEPGroup alloc] init];
        lyapisCrew.name= @"LyapisCrew";
        lyapisCrew.listOfSongs= songs;
        lyapisCrew.listOfArtists= [[NSArray alloc] initWithObjects:notSergeyMihalok, noName, nil];
        
        YEPGroup *brutto=[[YEPGroup alloc] init];
        brutto.name= @"Brutto";
        brutto.listOfSongs= songsOfBrutto;
        brutto.listOfArtists= [[NSArray alloc] initWithObjects:mihalok, sergey, nil];
        
        
        NSArray *groups= [[NSArray alloc] initWithObjects: lyapisCrew, brutto];
		NSLog([groups prettyViewOfElements]);
        
    }
    return 0;
}
