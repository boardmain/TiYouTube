/**
 * TiYouTube
 *
 * Created by Your Name
 * Copyright (c) 2014 Your Company. All rights reserved.
 */

#import "ItScsoftTiyoutubeModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#import "TiApp.h"
#import "HCYoutubeParser.h"
#import <QuartzCore/QuartzCore.h>
#import <MediaPlayer/MediaPlayer.h>

@implementation ItScsoftTiyoutubeModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"86d69890-d5a0-4a2e-bf4c-a9708c75e68e";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"it.scsoft.tiyoutube";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}


#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs


-(void)openVideo:(id)args
{
    ENSURE_SINGLE_ARG(args, NSDictionary);
    NSURL *urlvideo = [[NSURL alloc] initWithString:[TiUtils stringValue:@"url" properties:args]];

    [HCYoutubeParser h264videosWithYoutubeURL:urlvideo completeBlock:^(NSDictionary *videoDictionary, NSError *error) {
        
        NSDictionary *qualities = videoDictionary;
        
        NSString *URLString = nil;
        if ([qualities objectForKey:@"hd720"] != nil) {
            URLString = [qualities objectForKey:@"hd720"];
        }else if ([qualities objectForKey:@"medium"] != nil) {
            URLString = [qualities objectForKey:@"medium"];
        }else if ([qualities objectForKey:@"small"] != nil) {
            URLString = [qualities objectForKey:@"small"];
        }else if ([qualities objectForKey:@"live"] != nil) {
            URLString = [qualities objectForKey:@"live"];
        }
        else {
            return;
        }
        NSURL *_urlToLoad = [NSURL URLWithString:URLString];
        MPMoviePlayerViewController *mp = [[MPMoviePlayerViewController alloc] initWithContentURL:_urlToLoad];
        [[TiApp app] showModalController:mp animated:YES];
    }];
}

@end
