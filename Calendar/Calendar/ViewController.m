//
//  ViewController.m
//  Calendar
//
//  Created by test on 16/8/5.
//  Copyright © 2016年 test. All rights reserved.
//

#import "ViewController.h"
#import "CalendarView.h"

@interface ViewController ()
@property(nonatomic,strong) CalendarView *calendarView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self selectc];
}
- (IBAction)clock:(id)sender {
    self.calendarView.frame=CGRectMake(0, 100, self.view.frame.size.width, 300);
}

-(void)selectc{
    //    日历 view
    self.calendarView=[[[NSBundle mainBundle]loadNibNamed:@"CalendarView" owner:self options:nil] lastObject];
    //reloadWithDate参数传3和5 其中3是年月日 5代表年月日时分
    [self.calendarView reloadWithDate:3];
    //    self.calendarView.frame=CGRectMake(0, 100, self.view.frame.size.width, 200);
    self.calendarView.ClockDate=^(NSString * dateStr){
        NSLog(@"时间戳%@",dateStr);
        
        
    };
    [self.view addSubview:self.calendarView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
