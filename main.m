//
//  main.m
//  HomeTask
//
//  Created by Tony on 1/26/16.
//  Copyright (c) 2016 Tony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Utility.h"
#import "YEPArtist.h"
#import "YEPGroup.h"
#import "YEPSong.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *someSongs=[[NSMutableArray alloc] initWithObjects:
                                   [[YEPSong alloc] initWithName:@"You Dropped me"
                                                            text:@"SomeText"
                                                         artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
                                   [[YEPSong alloc] initWithName:@"Gray"
                                                            text:@"SomeText"
                                                         artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        NSMutableArray *songs=[[NSMutableArray alloc] initWithObjects:
                               [[YEPSong alloc] initWithName:@"I belive"
                                                        text:@"SomeText"
                                                     artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
                               [[YEPSong alloc] initWithName:@"Kapital"
                                                        text:@"notSomeSong"
                                                     artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        NSMutableArray *songsOfBrutto=[[NSMutableArray alloc] initWithObjects:
                                       [[YEPSong alloc] initWithName:@"Brutto"
                                                                text:@"Брутто! Брутто! Брутто! \n Скандируют Владивосток и Брест \n Брутто! Брутто! Брутто! \n Unleashed man! Fuck the rest! \n Припев \n FUCK THE REST! \n FUCK THE REST! \n Брутто, Брутто, Брутто,  \n Удар и ордер на арест.  \n Брутто, Брутто, Брутто, \n Вестерн и нуар, fuck the rest!"
                                                             artists: [[NSArray alloc] initWithObjects: @"Sergey Mihalok", nil]],
                                       [[YEPSong alloc] initWithName:@"Underdog"
                                                                text:@"Ты не выбирал \n Место для рождения \n Так карта легла \n Карма-рок \n Среди фаворитов \n Пёс-призрак, привидение \n Номер тринадцать \n Underdog \n Припев: \n На тебя никто не ставит \n На тебя никто не ставит \n На тебя никто не ставит \n Underdog"
                                                             artists: [[NSArray alloc] initWithObjects: @"Brutto", nil]], nil];
        
        NSMutableArray *noNameSongs=[[NSMutableArray alloc] initWithObjects:
                                     [[YEPSong alloc] initWithName:@"Lights"
                                                              text:@"SomeText"
                                                           artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],
                                     [[YEPSong alloc] initWithName:@"Trubetskoy arrived to us"
                                                              text:@"SomeText"
                                                           artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
    
        
        YEPArtist *notSergeyMihalok=[[YEPArtist alloc] initWithName:@"Not Sergey Mihalok"
                                                        listOfSongs:someSongs];
        YEPArtist *mihalok=[[YEPArtist alloc] initWithName:@"Mihalok"
                                               listOfSongs:songs];
        YEPArtist *sergey=[[YEPArtist alloc] initWithName:@"Sergey Mihalok"
                                              listOfSongs:songsOfBrutto];
        YEPArtist *noName=[[YEPArtist alloc] initWithName:@"Noname"
                                              listOfSongs:noNameSongs];
        
        YEPGroup *lyapisCrew=[[YEPGroup alloc] init];
            lyapisCrew.name= @"LyapisCrew";
            lyapisCrew.listOfSongs= songs;
            lyapisCrew.listOfArtists= [[NSArray alloc] initWithObjects: notSergeyMihalok, noName, nil];
        
        YEPGroup *brutto=[[YEPGroup alloc] init];
            brutto.name= @"Brutto";
            brutto.listOfSongs= songsOfBrutto;
            brutto.listOfArtists= [[NSArray alloc] initWithObjects: mihalok, sergey, nil];
        
        
        NSArray *groups= [[NSArray alloc] initWithObjects: lyapisCrew, brutto, nil];
        NSLog(@"\n%@ \n %@ \n %@",[groups prettyViewOfElements:@"Brutto"], [sergey description], [songsOfBrutto[0] outPutOfSong]);
        
    }
    return 0;
}
