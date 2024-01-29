//
//  M3U8ExtXByteRange.h
//  M3U8Kit
//
//  Created by Frank on 2020/10/1.
//  Copyright © 2020 M3U8Kit. All rights reserved.
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

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface M3U8ExtXByteRange : NSObject

- (instancetype)initWithAtString:(NSString *)atString;
- (instancetype)initWithLength:(NSInteger)length offset:(NSInteger)offset;

@property (nonatomic, assign, readonly) NSInteger length;
@property (nonatomic, assign, readonly) NSInteger offset;

@end

NS_ASSUME_NONNULL_END