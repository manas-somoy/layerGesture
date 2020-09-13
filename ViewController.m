//
//  ViewController.m
//  layerGesture
//
//  Created by Somoy Das Gupta on 8/6/20.
//  Copyright © 2020 Somoy Das Gupta. All rights reserved.
//

#import "ViewController.h"
#import "ResizeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    ResizeView * view = [[ResizeView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    view.backgroundColor = UIColor.systemTealColor;
//    view.image = [UIImage imageNamed:@"sc"];
//    view.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:view];
    
    NSLog(@"%f", view.transform.a);
    
    view.transform = CGAffineTransformScale(view.transform, -1, 1);
    view.transform = CGAffineTransformRotate(view.transform, M_PI_4);
    
    NSLog(@"%f", view.transform.a);

//    NSLog(@"%f", view.transform.d);
//
//    view.transform = CGAffineTransformScale(view.transform, 1, -1);
//
//    NSLog(@"%f", view.transform.d);
    
//
//    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPressed:)];
//    gesture.numberOfTapsRequired = 1;
//    view.userInteractionEnabled = true;
//    [view addGestureRecognizer:gesture];
    
//    CALayer *overLayer = [CALayer layer];
//    overLayer.frame = CGRectMake(100, 200, 200, 200);
//    overLayer.backgroundColor = UIColor.brownColor.CGColor;
//    [self.view.layer addSublayer:overLayer];
}

- (void)tapPressed:(UITapGestureRecognizer*)gesture {
    NSLog(@"tap");
}
@end
