
LOCAL_MODULE := libjnlua
LOCAL_C_INCLUDES += $(NDK_APP_PROJECT_PATH)/jni/lua-5.2.3/src
LOCAL_SRC_FILES := jnlua/src/jnlua.c lua-5.2.3/src/lapi.c lua-5.2.3/src/lauxlib.c lua-5.2.3/src/lbaselib.c lua-5.2.3/src/lbitlib.c lua-5.2.3/src/lcode.c lua-5.2.3/src/lcorolib.c lua-5.2.3/src/lctype.c lua-5.2.3/src/ldblib.c lua-5.2.3/src/ldebug.c lua-5.2.3/src/ldo.c lua-5.2.3/src/ldump.c lua-5.2.3/src/lfunc.c lua-5.2.3/src/lgc.c lua-5.2.3/src/linit.c lua-5.2.3/src/liolib.c lua-5.2.3/src/llex.c lua-5.2.3/src/lmathlib.c lua-5.2.3/src/lmem.c lua-5.2.3/src/loadlib.c lua-5.2.3/src/lobject.c lua-5.2.3/src/lopcodes.c lua-5.2.3/src/loslib.c lua-5.2.3/src/lparser.c lua-5.2.3/src/lstate.c lua-5.2.3/src/lstring.c lua-5.2.3/src/lstrlib.c lua-5.2.3/src/ltable.c lua-5.2.3/src/ltablib.c lua-5.2.3/src/ltm.c lua-5.2.3/src/lua.c lua-5.2.3/src/lundump.c lua-5.2.3/src/lvm.c lua-5.2.3/src/lzio.c
LOCAL_LDLIBS := -llog

# POSIX as we're on linux, and compatibility mode in case you'll be running scripts written for LUA <5.2
LOCAL_CFLAGS += -DLUA_USE_POSIX 

include $(BUILD_SHARED_LIBRARY)

 