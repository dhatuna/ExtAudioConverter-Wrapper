//
//  QViewController.m
//  ExtAudioConverter-Wrapper
//
//  Created by jk-gna on 05/25/2021.
//  Copyright (c) 2021 jk-gna. All rights reserved.
//

#import "QViewController.h"

#import <ExtAudioConverter_Wrapper/ExtAudioConverter-Wrapper.h>

#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface QViewController ()

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@property (weak, nonatomic) IBOutlet UIButton *convertButton;

@end

@implementation QViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.statusLabel.text = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonTapped:(id)sender {
    [self convert];
}

- (void)convert {
    NSString *inputPath = [[NSBundle mainBundle] pathForResource:@"source" ofType:@"m4a"];
    NSURL *outputURL = [[[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] firstObject] URLByAppendingPathComponent:@"output.mp3"];
    NSString *outputPath = outputURL.path;

    NSLog(@"Input Path: %@", inputPath);
    NSLog(@"Output Path: %@", outputPath);

    ExtAudioConverter *converter = [[ExtAudioConverter alloc] init];
    converter.inputFilePath = inputPath;
    converter.outputFilePath = outputPath;
    converter.outputFormatID = kAudioFormatMPEGLayer3;
    if ([converter convert]) {
        self.statusLabel.text = @"It worked!";
        AVPlayer *player = [AVPlayer playerWithURL:outputURL];
        AVPlayerViewController *vc = [[AVPlayerViewController alloc] init];
        vc.player = player;
        [self presentViewController:vc animated:YES completion:^{
            [player play];
        }];
    }
    else {
        self.statusLabel.text = @"It failed!";
    }
}


@end
