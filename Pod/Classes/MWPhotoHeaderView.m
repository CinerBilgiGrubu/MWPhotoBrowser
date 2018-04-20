//
//  MWPhotoHeaderView.m
//  Pods
//
//  Created by Önder ÖZCAN on 04/04/16.
//
//

#import "MWPhotoHeaderView.h"

static const CGFloat labelPadding = 10;


@implementation MWPhotoHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithLabel:(NSString *)title{
    
    [self setupCaption];
    return self;
}

- (void)setupCaption{
    self.titleHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width, 44)];
    self.titleHeader.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.titleHeader.opaque = NO;
    self.titleHeader.backgroundColor = [UIColor redColor];
    self.titleHeader.text = @"BASLIK";
    [self addSubview:self.titleHeader];
    
}

// Override -sizeThatFits: and return a CGSize specifying the height of your
// custom caption view. With width property is ignored and the caption is displayed
// the full width of the screen
- (CGSize)sizeThatFits:(CGSize)size{
    
    CGFloat maxHeight = 9999;
    
    if (self.titleHeader.numberOfLines > 0) maxHeight = self.titleHeader.font.leading*self.titleHeader.numberOfLines;
    
    CGSize textSize = [self.titleHeader.text boundingRectWithSize:CGSizeMake(size.width - labelPadding*2, maxHeight)
                                                options:NSStringDrawingUsesLineFragmentOrigin
                                             attributes:@{NSFontAttributeName:self.titleHeader.font}
                                                context:nil].size;
    
    return CGSizeMake(size.width, textSize.height + labelPadding * 2);    
    
}


@end
