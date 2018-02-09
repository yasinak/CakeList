//
//  Cakes.h
//  Cake List
//
//  Created by yas on 08/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cake.h"

@interface Cakes : NSMutableArray<Cake*>

- (instancetype)initWithArray:(NSArray *)array;

@end
