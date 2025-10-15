//
//  ViewController.m
//  AppSonidos
//
//  Created by Guest User on 15/10/25.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h> // Import para el audio

@interface ViewController ()
@property(strong, nonatomic)AVAudioPlayer *audioPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)playSoundDog:(id)sender {
    [self playSoundNamed:@"perro"];
}

- (IBAction)playSoundCriCri:(id)sender {
    [self playSoundNamed:@"grillos"];
}

- (IBAction)playSoundCat:(id)sender {
    [self playSoundNamed:@"gato"];
}

-(void)playSoundNamed:(NSString *)soundName{
    NSString *path = [[NSBundle mainBundle]pathForResource:soundName ofType:@"mp3"];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSError *error;
    
    self.audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    
    [self.audioPlayer prepareToPlay];
    [self.audioPlayer play];
}
@end
