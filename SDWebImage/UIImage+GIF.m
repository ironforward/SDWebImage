/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 * (c) Laurin Brandner
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "UIImage+GIF.h"
#import "SDWebImageGIFCoder.h"

@implementation UIImage (GIF)

+ (nullable UIImage *)sd_animatedGIFWithData:(nullable NSData *)data {
    return [self sd_animatedGIFWithData:data firstFrameOnly:NO];
}

+ (nullable UIImage *)sd_animatedGIFWithData:(nullable NSData *)data firstFrameOnly:(BOOL)firstFrameOnly {
    if (!data) {
        return nil;
    }
    SDWebImageCoderOptions *options = @{SDWebImageCoderDecodeFirstFrameOnly : @(firstFrameOnly)};
    return [[SDWebImageGIFCoder sharedCoder] decodedImageWithData:data options:options];
}

@end
