// Copyright 2017 Jenghis
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import <Foundation/Foundation.h>
#import "CBBlueLightClient.h"

int main(int argc, const char * argv[]) {
    if (argc == 1) {
        return 0;
    }

    CBBlueLightClient *client = [CBBlueLightClient new];

    NSString *argument = [NSString stringWithUTF8String:argv[1]];

    if ([@[@"--help", @"-h"] containsObject:argument]) {
        NSArray *usageLines = @[@"Usage: nshift <0-100> to set strength",
                                @"       nshift on      to turn NightShift on",
                                @"       nshift off     to turn NightShift off",
                                @"       nshift reset   to cycle NightShift (turn it off and on) to help with some external displays",
                                @""];

        printf([usageLines componentsJoinedByString:@"\n"].UTF8String);
    }
    if ([argument isEqualToString:@"off"]) {
        [client setEnabled:NO];
    }
    else if ([argument isEqualToString:@"on"]) {
        [client setEnabled:YES];
    }
    else if ([argument isEqualToString:@"reset"]) {
        [client setEnabled:YES];
        [client setEnabled:NO];
    }
    else {
        float strength = [[NSString stringWithUTF8String:argv[1]] floatValue] / 100;

        if (strength != 0.0) {
            [client setStrength:strength commit:true];
            [client setEnabled:YES];
        }
        else {
            [client setEnabled:NO];
        }
    }

    return 0;
}

