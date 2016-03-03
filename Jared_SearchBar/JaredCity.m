//
//  JaredCity.m
//  Jared_SearchBar
//
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import "JaredCity.h"

@implementation JaredCity

@end

@implementation JaredCityGroup

- (NSMutableArray *)arrayCitys{
    
    if (_arrayCitys == nil) {
        _arrayCitys = [[NSMutableArray alloc] init];
    }
    
    return _arrayCitys;
}

@end