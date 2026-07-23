# The Compiler for C and C++
### Please check out the latest build:
- [WinLibs on Site](https://winlibs.com/)
- [The latest WinLibs MinGW release on GitHub](https://github.com/brechtsanders/winlibs_mingw/releases)

# I. Installation Link
### [Compiler MinGW latest version](https://github.com/brechtsanders/winlibs_mingw/releases/download/15.2.0posix-13.0.0-msvcrt-r1/winlibs-x86_64-posix-seh-gcc-15.2.0-mingw-w64msvcrt-13.0.0-r1.zip) (Auto-download)
**More Information at**:
- [github.com/brechtsanders](https://github.com/brechtsanders)
- [winlibs_mingw.git](https://github.com/brechtsanders/winlibs_mingw.git)
  
**Note:** _Always check for the latest update!_

# II. Step by Step
## 1️⃣ The Path
- Extract `.zip`, create a `folder`, and copy `the folder path`.
- Example: `C:\<folder_name>`
  - (_`<folder_name>` - it means the custom folder with name you've created or choose the existing folder_).

## 2️⃣ Find on Search Bar or Control Panel
- **Search Bar**
  - Search "**Edit the system environment variables**" -> "**Open**"
- **Control Panel**
  - Search "**System**" on **Control Panel** -> "**Edit the system environment variables**"
- Add the PATH environment variable.

## 3️⃣ **System Properties**
- Go to "**Advanced**" -> "**Environment Variables"**

## 4️⃣ [-> Environment Variables]
- Look the "**System Variables**" -> Choose "**Path**" -> click
- **3 Options exist**: [New] [**-> Edit**] [Delete]

## 5️⃣ [-> Edit environment variable]
- Click "**New**" and paste the folder path where the extracted files from the ZIP are located.
- Example: `C:\<folder_name>\<extracted_folder_name>`
- **Done? All [-> OK]**

## 6️⃣ Configuration C/C++ on Visual Studio Code
- **Ctrl + Shift + P**
- Search and find "**C/C++: Edit Configurations (UI)**"
- **Enter** and **2 Options** exist:
  - **`select a detected compiler path`** from _the drop-down list_
  - **`fill the compiler path`** with _specify path_

## 7️⃣ Check the GCC (GNU Compiler Collection)
```
gcc --version
```

## 8️⃣ Create a File for #C and C++ File Extension
- Example:
  - `<file_name>.c` (**C**)
  - `<file_name>.cpp` (**C++**)

## 9️⃣ Compile and run
### C
```
gcc <file_name>.c -o <executable_file_name>
```

```
./<executable_file_name>
```

### C++
```
g++ <file_name>.cpp -o <executable_file_name>
```

```
./<executable_file_name>
```

### Note:
- `gcc` <- **Compiler for C**
- `g++` <- **Compiler for C++**
- `<file_name>.c` <- **C File Extension**
- `<file_name>.cpp` <- **C++ File Extension**
- `-o <file_name>.exe` <- **Compiled Executable File**
  - `-o` <- **Output (tells the compiler what name to give the output file)**
  - `without -o` <- **create a default name file**
    - `a.exe` <- **(Windows)**
    - `a.out` <- **(MacOS/Linux)**
   
# III. PowerShell Shortcut Functions (Optional)
### Speed up compiling without typing long commands every time.

## 1️⃣ Choose an Installation Method

### Option A: Auto-Download (Recommended)
Run this command in PowerShell to download the profile file directly to your PowerShell profile location:
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/fvcified/compile_and_run_c-cpp/main/Microsoft.PowerShell_profile.ps1" -OutFile $PROFILE
```
⚠️ **Warning:** This will overwrite your existing PowerShell profile if you already have one. If you want to keep your existing profile content, back it up first, or use **Option B** below instead.

Then reload the profile:
```powershell
. $PROFILE
```

### Option B: Manual Setup
Open your PowerShell profile:
```powershell
notepad $PROFILE
```
If the file doesn't exist yet, create it first:
```powershell
New-Item -ItemType File -Path $PROFILE -Force
```
Copy and paste the following functions into the file:
```powershell
function c {
    param([string]$file, [string]$out)
    if (-not $out) { $out = [System.IO.Path]::GetFileNameWithoutExtension($file) }
    gcc $file -o $out
}

function cpp {
    param([string]$file, [string]$out)
    if (-not $out) { $out = [System.IO.Path]::GetFileNameWithoutExtension($file) }
    g++ $file -o $out
}
```
Save the file, then reload the profile:
```powershell
. $PROFILE
```

## 2️⃣ Usage
### C
```powershell
c <file_name>.c
```
or specify a custom output name:
```powershell
c <file_name>.c <executable_file_name>
```

### C++
```powershell
cpp <file_name>.cpp
```
or specify a custom output name:
```powershell
cpp <file_name>.cpp <executable_file_name>
```

### Note:
- `<file_name>.c` / `<file_name>.cpp` <- **Source file to compile**
- `<executable_file_name>` <- **(Optional) Output file name**
  - If **not provided**, it automatically uses the source file name (without extension) as the executable name.
- These functions only work in **PowerShell**, not in other shells.

## Please check related issue
- The compiler path auto-detection issue -> [click here](https://github.com/fvcified/compile_and_run_c-cpp/issues/2)

<br />

## ⚠️ Disclaimer: _School assignment purposes only. All sources included._

---
