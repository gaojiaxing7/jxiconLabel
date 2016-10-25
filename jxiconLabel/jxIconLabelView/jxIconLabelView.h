//
//  jxIconLabelView.h
//  aaa
//
//  Created by ikuan on 16/8/4.
//  Copyright © 2016年 ikuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jxIconLabelView : UIView
@property(nonatomic,weak)UIImageView *iconView;
@property(nonatomic,weak)UILabel *messagelabel;

+(instancetype)jxIconLabelView:(CGRect)frame andImageName:(NSString *)img;

-(void)autoMessageFrameWith:(NSString *)message;
@end
