//
//  JaredCityHeaderView.m
//  Jared_SearchBar
//
//  Created by Jared on 16/3/3.
//  Copyright © 2016年 Jared. All rights reserved.
//

#import "JaredCityHeaderView.h"

@implementation JaredCityHeaderView

- (id) initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self addSubview:self.titleLabel];
    }
    return self;
}
- (void) layoutSubviews
{
    [super layoutSubviews];
    [self.titleLabel setFrame:CGRectMake(10, 0, self.frame.size.width - 10, self.frame.size.height)];
}
#pragma mark - Getter
- (UILabel *) titleLabel
{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] init];
        [_titleLabel setFont:[UIFont systemFontOfSize:16.0f]];
        [_titleLabel setTextColor:[UIColor blackColor]];
    }
    return _titleLabel;
}


@end
