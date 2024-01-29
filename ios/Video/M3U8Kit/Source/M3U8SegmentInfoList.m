//
//  M3U8SegmentInfoList.m
//  M3U8Kit
//
//  Created by Oneday on 13-1-11.
//  Copyright (c) 2013年 0day. All rights reserved.
//
//The MIT License (MIT)
//
//Copyright (c) 2015 Sun Jin <jeansunvf@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

#import "M3U8SegmentInfoList.h"

@interface M3U8SegmentInfoList ()

@property (nonatomic, strong) NSMutableArray *segmentInfoList;

@end

@implementation M3U8SegmentInfoList

- (id)init {
    if (self = [super init]) {
        self.segmentInfoList = [NSMutableArray array];
    }
    return self;
}

#pragma mark - Getter && Setter
- (NSUInteger)count {
    return [self.segmentInfoList count];
}

#pragma mark - Public
- (void)addSegementInfo:(M3U8SegmentInfo *)segment {
    if (segment) {
        [self.segmentInfoList addObject:segment];
    }
}

- (M3U8SegmentInfo *)segmentInfoAtIndex:(NSUInteger)index {
    return [self.segmentInfoList objectAtIndex:index];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", self.segmentInfoList];
}

@end