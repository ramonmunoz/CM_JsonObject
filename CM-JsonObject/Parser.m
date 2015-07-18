//
//  Parser.m
//  CM-JsonObject
//
//  Created by Walter Gonzalez Domenzain on 18/07/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Parser.h"

@implementation Parser
+ (WeatherObject *)parseWeatherObject {
    //check for valid value
    if(mjsonWeather!=nil){
        // Using ObjectMapper Directly
        WeatherObject *weatherObject         = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeather toInstanceOfClass:[WeatherObject class]];
        return weatherObject;
    }
    return nil;
}
@end
