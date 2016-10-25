//
//  jxIconLabelView.m
//  aaa
//
//  Created by ikuan on 16/8/4.
//  Copyright © 2016年 ikuan. All rights reserved.
//

#import "jxIconLabelView.h"

#define myfontSize  14.0  //设置字体大小
#define padingX    5.0  //设置图片与文字的距离
#define imgPadingX 4.0 //设置图片的内边距，即设置图片大小

@implementation jxIconLabelView

+(instancetype)jxIconLabelView:(CGRect)frame andImageName:(NSString *)img
{
    jxIconLabelView *iclabel=[[jxIconLabelView alloc]initWithFrame:frame withimgName:img];

    return iclabel;
    
}

-(instancetype)initWithFrame:(CGRect)frame withimgName:(NSString *)img
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView * iconView=[[UIImageView alloc]initWithFrame:CGRectMake(0,imgPadingX, frame.size.height-imgPadingX*2, frame.size.height-imgPadingX*2)];
        iconView.image=[UIImage imageNamed:img];
        [self addSubview:iconView];
        self.iconView=iconView;
        
        UILabel *messagelabel=[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(iconView.frame)+padingX, 0,frame.size.width-iconView.frame.size.height-padingX, frame.size.height)];
        messagelabel.textColor=[UIColor blackColor];
        self.messagelabel=messagelabel;
        [self addSubview:messagelabel];
        
    }
    return self;
}


-(void)autoMessageFrameWith:(NSString *)message
{
    CGSize size=[self sizeWithFontSize:myfontSize width:self.frame.size.width-self.frame.size.height withMessage:message];
     self.messagelabel.font=[UIFont systemFontOfSize:myfontSize];
     self.messagelabel.text=message;
    
    CGFloat padX=self.frame.size.width-self.iconView.frame.size.height-padingX-size.width;
    self.iconView.frame=CGRectMake(padX*0.5, imgPadingX, self.frame.size.height-imgPadingX*2, self.frame.size.height-imgPadingX*2);
    
    self.messagelabel.frame=CGRectMake(CGRectGetMaxX(self.iconView.frame)+padingX, 0,size.width, self.frame.size.height);   
}

- (CGSize )sizeWithFontSize:(CGFloat)fontsize width:(CGFloat )stringWidth withMessage:(NSString *)message;
{
    UIFont *font = [UIFont systemFontOfSize:fontsize];
    NSDictionary * attrs = @{NSFontAttributeName : font};
    return [message boundingRectWithSize:CGSizeMake(stringWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


@end
