//
//  Cakes.m
//  Cake List
//
//  Created by yas on 08/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import "Cakes.h"

@implementation Cakes

- (instancetype)initWithArray:(NSArray *)array{
    self = [super init];
    if (self) {

        self = (Cakes*)[NSMutableArray arrayWithCapacity:array.count];
        
        for (NSDictionary*cake in array) {
            Cake*c = [[Cake alloc] initWithDictionary:cake];
            [self addObject: c];
        }
    }
    return self;
}

@end
