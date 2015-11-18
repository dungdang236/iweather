//
//  ViewController.m
//  example2-iweather
//
//  Created by student on 11/17/15.
//  Copyright © 2015 dungdang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temp;
@property (weak, nonatomic) IBOutlet UIImageView *weather;
@property (weak, nonatomic) IBOutlet UILabel *comment;
@property (weak, nonatomic) IBOutlet UIButton *upload;

@end

@implementation ViewController
{   NSArray* comments;
    NSArray* locations;
    NSArray* weathers;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    comments = @[ @"Work hard, play hard",@"Just for fun",@"Learn from losing",@"Never give up"];
    locations = @[@"Cau Giay, Hanoi",@"Pham Van Dong, Hanoi",@"Lang, Hanoi",@"Quan 1, TP.HCM"];
    weathers = @[@"sunny",@"rain",@"storm",@"windy"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (IBAction)updateweather:(id)sender {
    int commentsIndex =
    arc4random_uniform(comments.count);

    NSLog(@"%d",commentsIndex);
    self.comment.text = comments[commentsIndex];
    
    int locationIndex = arc4random_uniform(locations.count);
    self.location.text =locations[locationIndex];
    int weatherIndex = arc4random_uniform(weathers.count);
    self.weather.image = [UIImage imageNamed:weathers[weatherIndex]];
    NSString* string = [NSString stringWithFormat:@"%2.1f",[self getTemperature]];
    [self.temp setTitle:string forState:UIControlStateNormal];
}


- (float) getTemperature {
    return 14.0 + arc4random_uniform(18) + (float)arc4random() / (float)  INT32_MAX;
}
@end
