#!/bin/sh -x

echo no | $ANDROID_HOME/tools/bin/avdmanager create avd \
    -k "system-images;${TARGET};${TAG};${ABI}" \
    -n ${NAME} -b ${ABI} -g ${TAG} ${ANDROID_AVD_EXTRA_ARGS}

(
  # Enable keyboard support in QEMU (for VNC)
  echo 'hw.keyboard = true';
) >> ${HOME}/.android/avd/${NAME}.avd/config.ini

exec $*
