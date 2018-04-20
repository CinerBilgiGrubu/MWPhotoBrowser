//
//  MWPhotoHeaderView.h
//  Pods
//
//  Created by Önder ÖZCAN on 04/04/16.
//
//

#import "MWCaptionView.h"

@interface MWPhotoHeaderView : MWCaptionView

- (void)setupCaption;

// Override -sizeThatFits: and return a CGSize specifying the height of your
// custom caption view. With width property is ignored and the caption is displayed
// the full width of the screen
-(id)initWithLabel:(NSString *)title;

- (CGSize)sizeThatFits:(CGSize)size;

@property (strong) UILabel *titleHeader;

@end