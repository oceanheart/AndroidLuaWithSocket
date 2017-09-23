LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/../lua
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../luasocket

LOCAL_MODULE     := luajava
LOCAL_SRC_FILES  := luajava.c
LOCAL_STATIC_LIBRARIES := liblua libsocket

LOCAL_LDLIBS     := -ldl -lm



include $(BUILD_SHARED_LIBRARY)