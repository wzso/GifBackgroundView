//
//  ViewController.m
//  GifBackgroundViewDemo
//
//  Created by Vincent on 4/25/17.
//  Copyright © 2017 zssr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadHTML];
}

- (void)loadHTML {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"background" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSURL *baseURL = [url URLByDeletingLastPathComponent];
    [self.webView loadData:data MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:baseURL];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
@end
