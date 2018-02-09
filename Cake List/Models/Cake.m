//
//  Cake.m
//  Cake List
//
//  Created by yas on 08/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import "Cake.h"

@implementation Cake

- (instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if (self) {
        self.title = [dictionary objectForKey:@"title"];
        self.desc = [dictionary objectForKey:@"desc"];
        self.image = [dictionary objectForKey:@"image"];
    }
    return self;
}

@end
