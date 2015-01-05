//
//  DBViewController.m
//  NSMutableAttributedString
//
//  Created by dengbin on 14/8/18.
//  Copyright (c) 2014年 IUAIJIA. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UILabel  *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 100)] ;
    NSString *str=@"I always think the worst is you leave me really makes me sad is you most unhappy";
    label.numberOfLines=3;
    NSMutableAttributedString *attrString=[[NSMutableAttributedString alloc]initWithString:str] ;
    
    //下划线I always
    [attrString addAttribute:NSUnderlineStyleAttributeName
                       value:(id)[NSNumber numberWithInt:NSUnderlineStyleSingle]
                       range:NSMakeRange(0, 8)];
    
    //think 设置为紫色
    [attrString addAttribute:NSForegroundColorAttributeName
                       value:[UIColor purpleColor]
                       range:NSMakeRange(9, 5)];
    //the 设置为30号字体
    [attrString addAttribute:NSFontAttributeName
                       value:[UIFont systemFontOfSize:30]
                       range:NSMakeRange(15, 4)];
    //worst 空心
    [attrString addAttribute:NSStrokeWidthAttributeName
                       value:[NSNumber numberWithInt:1]
                       range:NSMakeRange(19, 5)];
    //is you 紫色背景
    [attrString addAttribute:NSBackgroundColorAttributeName
                       value:[UIColor purpleColor]
                       range:NSMakeRange(25, 6)];
    //leave 添加删除线
    [attrString addAttribute:NSStrikethroughStyleAttributeName
                       value:[NSNumber numberWithInt:NSUnderlineStyleSingle]
                       range:NSMakeRange(32, 5)];
    
    
    //really 设置字体
    [attrString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"SnellRoundhand-Black" size:30]
                       range:NSMakeRange(40, 7)];
    //really 紫色
    [attrString addAttribute:NSForegroundColorAttributeName
                       value:[UIColor purpleColor]
                       range:NSMakeRange(40, 7 )];
    [label setAttributedText:attrString];
    [self.view addSubview:label];
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
