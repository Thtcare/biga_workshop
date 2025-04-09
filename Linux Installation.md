<img src="https://github.com/user-attachments/assets/e4d1ba58-cd90-4a95-9ed6-6ef9379fe02a" alt="Image" width="300"/>

- download 
Link for download Ubuntu 22.04 LTS (if this version does not work, you can download another version)  https://apps.microsoft.com/detail/9PN20MSR04DW?hl=en-us&gl=TH&ocid=pdpshare or https://ubuntu.com/download/desktop

## Install Ubuntu 
1. Turn windows features on or off 
    - Type “Turn windows features on or off” on search bar  
    - Select “Windows Subsystem for Linux” and click OK 

        <img src="https://github.com/user-attachments/assets/e7bca459-0b05-4cfb-92ca-964ed50b8665" alt="Image" width="300"/>

    - Windows completed the requested changes and restart windows
2. Command Prompt
    - Type Cmd in search bar

        <img src="https://github.com/user-attachments/assets/3deb63ab-cb75-4ef8-bd0f-84de57786516" alt="Image" width="350"/>

    - Open Cmd 
    - Type Bash on terminal
    - The output shows Windows Subsystem for Linux has no installed distributions.
  
       <img src="https://github.com/user-attachments/assets/bb5b39f5-0a13-41b0-ab0f-f8fbead2952a" alt="Image" width="400"/>

3. Download Ubuntu 
    - Link for download Ubuntu 24.04 LTS (if this version does not work, you can download another version)  https://apps.microsoft.com/detail/9nz3klhxdjp5?hl=en-us&gl=TH or https://ubuntu.com/download/desktop
  
      <img src="https://github.com/user-attachments/assets/53443d3f-87c2-4c53-9bac-09dbc4b4553e" alt="Image" width="650"/>
      
    - Open Ubuntu
  
      <img src="https://github.com/user-attachments/assets/eb1f1ffe-62f8-4562-8eb9-1857e93714d2" alt="Image" width="500"/>

    - From error massage, go to https://aka.ms/wsl2kernel 
    - Download Linux kernel update package

      <img src="https://github.com/user-attachments/assets/8d53784b-f55e-41f2-84f2-b3d184ec9b67" alt="Image" width="500"/>

    - Windows Subsystem for Linux Update

       <img src="https://github.com/user-attachments/assets/ea615271-d2d4-4f6a-a44a-475cd74164cd" alt="Image" width="450"/>

4. Install  
    - Open ubuntu 
    - The screen show Installing, this may take a few minutes 
    - Create username and password

      <img src="https://github.com/user-attachments/assets/a2dc5986-0410-4146-b895-f831250869a6" alt="Image" width="500"/>
---

<img src="https://github.com/user-attachments/assets/3e44e70f-d0f9-4560-b75f-5860b574935d" alt="Image" width="300"/>

Conda is a powerful command line tool for package and environment management that runs on Windows, macOS, and Linux. 

This guide to getting started with conda goes over the basics of starting up and using conda to create environments and install packages. 

## Install conda  by conda-forge/miniforge 

Unix-like platforms (macOS, Linux, & WSL) 

- gitclone
```cmd
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" 
 
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" 
```

- Run the script with: 
```bash
bash Miniforge3-$(uname)-$(uname -m).sh 
```

- Test conda
  
    <img src="https://github.com/user-attachments/assets/a94bfdbd-f082-421a-97ea-15785d593b06" alt="Image" width="550"/>

    
