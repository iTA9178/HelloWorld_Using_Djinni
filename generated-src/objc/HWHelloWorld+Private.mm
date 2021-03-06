// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

#import "HWHelloWorld+Private.h"
#import "HWHelloWorld.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "HWHelloWorld+Private.h"
#import "HWSandboxManager+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface HWHelloWorld ()

- (id)initWithCpp:(const std::shared_ptr<::helloworld::HelloWorld>&)cppRef;

@end

@implementation HWHelloWorld {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::helloworld::HelloWorld>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::helloworld::HelloWorld>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nullable HWHelloWorld *)create {
    try {
        auto r = ::helloworld::HelloWorld::create();
        return ::djinni_generated::HelloWorld::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nullable HWHelloWorld *)createWithSandboxManager:(nullable id<HWSandboxManager>)sandboxManager {
    try {
        auto r = ::helloworld::HelloWorld::createWithSandboxManager(::djinni_generated::SandboxManager::toCpp(sandboxManager));
        return ::djinni_generated::HelloWorld::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getHelloWorld {
    try {
        auto r = _cppRefHandle.get()->get_hello_world();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSString *)getSandboxPath {
    try {
        auto r = _cppRefHandle.get()->get_sandbox_path();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto HelloWorld::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto HelloWorld::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<HWHelloWorld>(cpp);
}

}  // namespace djinni_generated

@end
