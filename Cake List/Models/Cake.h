//
//  Cake.h
//  Cake List
//
//  Created by yas on 08/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cake : NSObject

@property (nonatomic) NSString *desc;
@property (nonatomic) NSString *image;
@property (nonatomic) NSString *title;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
    
@end
