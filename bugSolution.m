```objectivec
#import <Foundation/Foundation.h>

@interface MyClass : NSObject
@property (nonatomic, retain) NSString *myString;
@end

@implementation MyClass
- (void)dealloc {
    [myString release];
    [super dealloc];
}
- (id)init {
    if (self = [super init]) {
        self.myString = [[NSString alloc] initWithString: "Hello"];
    }
    return self;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyClass *obj = [[MyClass alloc] init];
        [obj release];
    }
    return 0;
}
```

**Explanation of Solution:** The `retain` property in the `MyClass` retains a reference to the `NSString` object. When the `MyClass` object is released, this reference to `NSString` must be released as well. The solution correctly calls `[myString release]` in the `dealloc` method to handle this.  In modern Objective-C (using Automatic Reference Counting or ARC), this type of manual memory management is unnecessary and this kind of bug is avoided.