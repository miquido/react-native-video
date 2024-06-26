//
//  M3U8ExtXStreamInfList.m
//  ILSLoader
//
//  Created by Jin Sun on 13-4-15.
//  Copyright (c) 2013年 iLegendSoft. All rights reserved.
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Sun Jin <jeansunvf@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
#import "M3U8ExtXStreamInfList.h"

@interface M3U8ExtXStreamInfList ()

@property(nonatomic, strong) NSMutableArray* m3u8InfoList;

@end

@implementation M3U8ExtXStreamInfList

- (id)init {
  self = [super init];
  if (self) {
    self.m3u8InfoList = [NSMutableArray array];
  }

  return self;
}

#pragma mark - Getter && Setter
- (NSUInteger)count {
  return [self.m3u8InfoList count];
}

#pragma mark - Public
- (void)addExtXStreamInf:(M3U8ExtXStreamInf*)extStreamInf {
  [self.m3u8InfoList addObject:extStreamInf];
}

- (M3U8ExtXStreamInf*)xStreamInfAtIndex:(NSUInteger)index {
  if (index >= self.count) {
    return nil;
  }
  return [self.m3u8InfoList objectAtIndex:index];
}

- (M3U8ExtXStreamInf*)firstStreamInf {
  return [self.m3u8InfoList firstObject];
}

- (M3U8ExtXStreamInf*)lastXStreamInf {
  return [self.m3u8InfoList lastObject];
}

- (void)sortByBandwidthInOrder:(NSComparisonResult)order {

  NSArray* array = [self.m3u8InfoList sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
    NSInteger bandwidth1 = ((M3U8ExtXStreamInf*)obj1).bandwidth;
    NSInteger bandwidth2 = ((M3U8ExtXStreamInf*)obj2).bandwidth;
    if (bandwidth1 == bandwidth2) {
      return NSOrderedSame;
    } else if (bandwidth1 < bandwidth2) {
      return order;
    } else {
      return order * (-1);
    }
  }];

  self.m3u8InfoList = [array mutableCopy];
}

- (NSString*)description {
  return [NSString stringWithFormat:@"%@", self.m3u8InfoList];
}

@end
