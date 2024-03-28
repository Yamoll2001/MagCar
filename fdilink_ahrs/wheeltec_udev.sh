#CP2102 串口号0003 设置别名为wheeltec_FDI_IMU_GNSS
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0004", MODE:="0777", GROUP:="dialout", SYMLINK+="IMU"' >/etc/udev/rules.d/car_imu.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0008", MODE:="0777", GROUP:="dialout", SYMLINK+="MagSensor"' >/etc/udev/rules.d/car_magsensor.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="5740",ATTRS{serial}=="0007", MODE:="0777", GROUP:="dialout", SYMLINK+="STM32"' >/etc/udev/rules.d/car_stm32.rules
0483:5740
#CH9102，同时系统安装了对应驱动 串口号0003 设置别名为wheeltec_FDI_IMU_GNSS
echo  'KERNEL=="ttyCH343USB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="wheeltec_FDI_IMU_GNSS"' >/etc/udev/rules.d/wheeltec_fdi_imu_gnss2.rules

#CH9102，同时系统没有安装对应驱动 串口号0003 设置别名为wheeltec_FDI_IMU_GNSS
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="55d4",ATTRS{serial}=="0003", MODE:="0777", GROUP:="dialout", SYMLINK+="wheeltec_FDI_IMU_GNSS"' >/etc/udev/rules.d/wheeltec_fdi_imu_gnss3.rules

#CH340，直接设置别名为wheeltec_FDI_IMU_GNSS
echo 'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523", MODE:="0777", GROUP:="dialout", SYMLINK+="wheeltec_FDI_IMU_GNSS"' >/etc/udev/rules.d/wheeltec_fdcontroller_340.rules

service udev reload
sleep 2
service udev restart

