//
//  M3U8ExtXStreamInfList.h
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

#import "M3U8ExtXStreamInf.h"
#import <Foundation/Foundation.h>

@interface M3U8ExtXStreamInfList : NSObject

@property(nonatomic, assign, readonly) NSUInteger count;

- (void)addExtXStreamInf:(M3U8ExtXStreamInf*)extStreamInf;
- (M3U8ExtXStreamInf*)xStreamInfAtIndex:(NSUInteger)index;
- (M3U8ExtXStreamInf*)firstStreamInf;
- (M3U8ExtXStreamInf*)lastXStreamInf;

- (void)sortByBandwidthInOrder:(NSComparisonResult)order;

@end
