//
//  OCMapperConfig.m
//  CM-JsonObject
//
//  Created by Walter Gonzalez Domenzain on 18/07/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//
#import "OCMapperConfig.h"
#import "OCMapper.h"
#import <UIKit/UIKit.h>


@implementation OCMapperConfig
+ (void)configure
{
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Any custom mapping would go here **********************/
    
    // Map from key 'posTables' to property 'posTables' of type 'LeagueTable' which is a property of 'LeagueTables' class
    [inCodeMappingProvider mapFromDictionaryKey:@"coord"
                                  toPropertyKey:@"coord"
                                 withObjectType:[Coord class]
                                       forClass:[WeatherObject class]];
    


}
@end
