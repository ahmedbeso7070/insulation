#import <rootless.h>
#import <spawn.h>
#import <Foundation/Foundation.h>

static NSString *_Nonnull rootlessPath(NSString* _Nonnull path) {
  return ROOT_PATH_NS(path);
}
