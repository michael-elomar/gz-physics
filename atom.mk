LOCAL_PATH := $(call my-dir)

################################################################################
# gz-common
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-physics
LOCAL_DESCRIPTION := Physics engine abstraction

LOCAL_LIBRARIES := \
	gz-common \
	gz-math \
	gz-plugin \
	gz-utils \
	sdformat

LOCAL_CMAKE_CONFIGURE_ARGS := \
	-DBUILD_TESTING:BOOL=False \
	-DFREEIMAGE_RUNS=1 \
	-DFREEIMAGE_RUNS__TRYRUN_OUTPUT=""

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/physics9

LOCAL_CXXFLAGS := -std=c++17
LOCAL_EXPORT_LDLIBS := -lgz-physics

include $(BUILD_CMAKE)

