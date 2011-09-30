/*
 Copyright 2010 Microsoft Corp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */
#import "WABlob.h"
#import "WABlobContainer.h"

@implementation WABlob

@synthesize name = _name;
@synthesize URL = _URL;
@synthesize container = _container;

- (id)initBlobWithName:(NSString *)name URL:(NSString *)URL container:(WABlobContainer*)container 
{	
    if ((self = [super init])) {
        _name = [name retain];
        _URL = [[NSURL URLWithString:URL] retain];
        _container = [container retain];
    }    
 
    return self;	
}

- (id)initBlobWithName:(NSString *)name URL:(NSString *)URL 
{	
    if ((self = [super init])) {
        _name = [name retain];
        _URL = [[NSURL URLWithString:URL] retain];
    }    
    
    return self;	
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Blob { name = %@, url = %@, container = %@ }", _name, _URL, _container];
}

- (void) dealloc 
{
    [_name release];
    [_URL release];
    [_container release];
    [super dealloc];
}

@end
