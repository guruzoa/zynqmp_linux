dirs755 += "/media/card"

do_install_append () {
        echo "LABEL=card /media/card auto defaults,sync  0  0" >> ${D}${sysconfdir}/fstab
        echo "export PS1='\u@\h:\w\$ '" >> ${D}${sysconfdir}/profile
        echo "export PATH=\$HOME/bin:\$PATH" >> ${D}${sysconfdir}/profile
        echo "export LD_LIBRARY_PATH=\$HOME/lib:\$LD_LIBRARY_PATH" >> ${D}${sysconfdir}/profile
        echo "alias ls='ls --color=auto'" >> ${D}${sysconfdir}/profile
        echo "alias ll='ls --color=auto -l'" >> ${D}${sysconfdir}/profile
        echo "alias la='ls --color=auto -la'" >> ${D}${sysconfdir}/profile
        echo "alias rm='rm -i'" >> ${D}${sysconfdir}/profile
        echo "alias cp='cp -i'" >> ${D}${sysconfdir}/profile
        echo "alias mv='mv -i'" >> ${D}${sysconfdir}/profile
		echo "alias modetest='modetest -M xlnx'" >> ${D}${sysconfdir}/profile
		echo "alias modetest-dp='modetest -D fd4a0000.zynqmp-display'" >> ${D}${sysconfdir}/profile
		echo "export PATH=/media/card:/media/card/bin:\$PATH" >> ${D}${sysconfdir}/profile
		echo "export QT_QPA_PLATFORM=eglfs" >> ${D}${sysconfdir}/profile
		echo "export QT_QPA_GENERIC_PLUGINS=libinput" >> ${D}${sysconfdir}/profile
		echo "export QT_QPA_ENABLE_TERMINAL_KEYBOARD=1" >> ${D}${sysconfdir}/profile
		echo "export QT_QPA_EGLFS_INTEGRATION=eglfs_x11" >> ${D}${sysconfdir}/profile
		echo "export G_SLICE=always-malloc">> ${D}${sysconfdir}/profile
		echo "export GST_PLUGIN_PATH_1_0=/media/card" >> ${D}${sysconfdir}/profile
		echo "export XILINX_XRT=/usr" >> ${D}${sysconfdir}/profile
		echo "export XCL_BINDIR=/media/card" >> ${D}${sysconfdir}/profile
}

