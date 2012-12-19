#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifneq ($(filter msm7x27,$(TARGET_BOARD_PLATFORM)),)

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils

ifneq ($(TARGET_PROVIDES_LIBLIGHTS),true)
display-hals += liblight
endif

display-hals += libtilerenderer

include $(call all-named-subdir-makefiles,$(display-hals))

endif
