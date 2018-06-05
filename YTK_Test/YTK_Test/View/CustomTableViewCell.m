//
//  CustomTableViewCell.m
//  YTK_Test
//
//  Created by 王勇 on 2018/5/3.
//  Copyright © 2018年 Xi'an Shouhushen Network Technology. All rights reserved.
//

#import "CustomTableViewCell.h"
#define Width [[UIScreen mainScreen] bounds].size.height
@implementation CustomTableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _titleLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, Width, 50)];
        _titleLab.backgroundColor = [UIColor whiteColor];
        _titleLab.font = [UIFont systemFontOfSize:14];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
