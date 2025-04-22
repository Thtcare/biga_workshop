
# 🐧 Install Ubuntu on Windows using WSL

This guide walks you through installing **Ubuntu (24.04 LTS or other versions)** on Windows using **Windows Subsystem for Linux (WSL)**.

<div align="center">
  <img src="https://github.com/user-attachments/assets/e4d1ba58-cd90-4a95-9ed6-6ef9379fe02a" alt="Ubuntu WSL Screenshot" width="300"/>
</div>

---

## Install Ubuntu 
### Step 1: Enable Windows Subsystem for Linux
   1. In the Windows Search bar, type: **Turn Windows features on or off**
   2. Open the menu
   3. Scroll down and check:
      ✅ Windows Subsystem for Linux
   4. Click OK, then Restart your computer when prompted.

      <div align="center">
       <img src="https://github.com/user-attachments/assets/e7bca459-0b05-4cfb-92ca-964ed50b8665" alt="Image" width="300"/>
       </div>
   5. Windows completed the requested changes and restart windows
        

### Step 2: Open Command Prompt
1. Open the **Start menu**, and search for:
   ```
   cmd
   ```
   
   <div align="center">
   <img src="https://github.com/user-attachments/assets/3deb63ab-cb75-4ef8-bd0f-84de57786516" alt="Image" width="350"/>
   </div>
   
2. Right-click **Command Prompt**
3. Type the following in the terminal:
      ```bash
        bash
      ```
   If WSL is installed but no Linux distributions are present, you'll see:
   > Windows Subsystem for Linux has no installed distributions.

<div align="center">
<img src="https://github.com/user-attachments/assets/bb5b39f5-0a13-41b0-ab0f-f8fbead2952a" alt="Image" width="400"/>
</div>


### Step 3: Download Ubuntu
   1. For Download Ubuntu, You can choose one of the following methods:
   #### Option A: Microsoft Store (Recommended)

- [Download Ubuntu 24.04 LTS from Microsoft Store](https://apps.microsoft.com/detail/9nz3klhxdjp5?hl=en-us&gl=TH)

    #### Option B: Download from Ubuntu Official Website

- [Download Ubuntu from ubuntu.com](https://ubuntu.com/download/desktop)
2. Open Ubuntu
### Step 4: Install WSL2 Kernel Update (If Needed)
If launching Ubuntu shows an error about the kernel:

<div align="center">
      <img src="https://github.com/user-attachments/assets/eb1f1ffe-62f8-4562-8eb9-1857e93714d2" alt="Image" width="500"/>
</div>

1. Go to: [https://aka.ms/wsl2kernel](https://aka.ms/wsl2kernel)
2. Download and run the **Linux kernel update package**.
3. Windows Subsystem for Linux Update

<div align="center">
<img src="https://github.com/user-attachments/assets/ea615271-d2d4-4f6a-a44a-475cd74164cd" alt="Image" width="450"/>
</div>

4. Reboot if necessary.

### Step 5: Launch Ubuntu
1. Open **Ubuntu** from the Start menu.
    - It will display:
      > Installing, this may take a few minutes...
2. Create username and password
    - You'll be prompted to set:
      - A **username**
      - A **password**
   <div align="center">        
       <img src="https://github.com/user-attachments/assets/a2dc5986-0410-4146-b895-f831250869a6" alt="Image" width="500"/>
       </div>
---

<div align="center">
<img src="https://github.com/user-attachments/assets/3e44e70f-d0f9-4560-b75f-5860b574935d" alt="Image" width="300"/>
</div>

Conda is a powerful command line tool for package and environment management that runs on Windows, macOS, and Linux. 

This guide to getting started with conda goes over the basics of starting up and using conda to create environments and install packages. 

## Install conda  by conda-forge/miniforge 
- gitclone
```cmd
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" 
```
```cmd 
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh" 
```

- Run the script with: 
```bash
bash Miniforge3-$(uname)-$(uname -m).sh 
```
- Source .bashrc
```bash
source ~/.bashrc
```

- Test conda

If everything is working, you'll see output similar to:
  <div align="center">
    <img src="https://github.com/user-attachments/assets/a94bfdbd-f082-421a-97ea-15785d593b06" alt="Image" width="550"/>
</div>
    
