ARG BASE_OS_IMAGE
FROM ${BASE_OS_IMAGE}
RUN zypper ar http://download.opensuse.org/distribution/leap/15.4/repo/oss leap && \
    zypper ar http://download.opensuse.org/update/leap/15.4/oss update_leap && \
    zypper ar https://download.opensuse.org/update/leap/15.4/sle update_sle && \
    zypper --gpg-auto-import-keys --non-interactive in  gawk gcc python kmod kernel-source=5.14.21-150400.24.81 make && \
    cp /boot/config-*-default /usr/src/linux/.config && \
    make -C /usr/src/linux oldconfig && \
    make -C /usr/src/linux modules_prepare && \
    zcat /boot/symvers-*.gz > /usr/src/linux/Module.symvers && \
    zypper clean -a