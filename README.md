# Custom_IP
## Generating a Custom IP Core using Xilinx Vivado
---

___This is my second repository in github, so any suggestions and feedbacks are welcomed ! 
For connecting with me for future projects, you can connect with [me](https://www.linkedin.com/in/aswinsilicon/)___


---
This project has only one motive. It is to experiment with Custom IP Generation, and thereby try to design an IP for controlling any design switches. I will try to design registers into an IP and will connect them to the pins (external interface) of the IP. This will be subsequently connected to the LEDs on the pole, so that if we want to LED, we just need to write it to the register. Here, we are going to use two registers- one for controlling LEDs and the other for the Switches. This project is a primary resource for me to practice, with the open source toolchain and definitely to keep a documentation that is easily understandable by anyone who later tries to practice it the same way. I will keep on updating this repository whenever it is required.

Let's Start

---

### NOTE: This repository follows Linux based Operating System. I have used [Ubuntu 24.04.1 LTS](https://ubuntu.com/download/desktop).
#### Make sure all the libraries that are necessary for all these below software are installed in your system. Also this would cost a lot of space as well so I suggest to get atleast 250GB of storage and atleast 8GB RAM.
---

## Contents
- [1. Ubuntu Setup](#1-Ubuntu-Setup)
- [2. Necessary Libraries Installation](#2-Necessary-Libraries-Installation)
- [3. Xilinx Unified Software Setup](#3-Xilinx-Unified-Software-Setup)
- [4. Visual Studio Code Setup](#4-Visual-Studio-Code-Setup)
  - [4.1. Install Serial Monitor](#41-Install-Serial-Monitor)
 
## 1. Ubuntu Setup
### I would strongly suggest to Dual Boot your system rather than only keeping Ubuntu 24.04.1 LTS on your system.
  - You can follow the procedure shown in this [video](https://www.youtube.com/watch?v=XjQGGLa_Dic).
  - Make sure you have a minimum 16GB Pendrive available with you.

## 2. Necessary Libraries Installation
- Run the following commands one by one after proper installation of Ubuntu 24.04.1 LTS
```
$ sudo apt update
$ sudo apt upgrade-y
$ sudo apt install build-essential
$ sudo apt install libtinfo-dev
$ sudo apt-get install libtinfo5
$ sudo apt install libncurses5
$ sudo ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5
$ sudo apt-get install putty
```
## 3. Xilinx Unified Software Setup
### I have used 2023.2 version of the Xilinx Unified Software.
### NOTE: Before going for the installation, make sure all the libraries mentioned above (Section 2) are installed properly on your system, else there is a chance that the installer may get hang at the final processing part.
- You can download the Linux Self Extracting Web Installer from this [site](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/2023-2.html)
- I would suggest installing the Vitis Core Development Kit - 2023.2, which is under the section Vitis (SW Developer) tab.
- Once downloaded, note down the name of the installed 'bin' file name. You will need to remember this in order to open the installer through the Ubuntu Terminal.
- In my case, it is 'FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin'.
- Now, open the Ubuntu Terminal and type the following commands to open Linux Self Extracting Web Installer by Xilinx.
```
$ cd $HOME/Downloads
$ chmod u+x FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin
$ sudo ./FPGAs_AdaptiveSoCs_Unified_2023.2_1013_2256_Lin64.bin
```
- ### Note that you need to replace the file name according to your version in order to open the installer.
 - Login with your credentials.
 - Select Vitis among the different options.
 - Click on next.
 - Choose the installation directory where you want to store the files. I would suggest to store in '/tools/Xilinx'.
 - Install.
 - Once installation is complete, we must ensure all our necessary softwares are properly loading. To check, proceed with the following commands on the Ubuntu Terminal:
 - ### Vivado-
   ```
   $ /tools/Xilinx/Vivado/2023.2/bin/vivado
   ```

