﻿## exe-cutie

**exe-cutie** is a utility for Windows that allows you to gain more
control over running any specified program regardless of who and how tried to
run it. You can assign one of the several standard actions for it:

 - **Ask** user to confirm program execution;
 - **Deny** program execution and notify user;
 - **Raise** an error (like "access denied" or even more weird one) when somebody tries to launch the executable;
 - Always **drop administrative privileges** of specified program;
 - Request **elevation** for the program at every launch;
 - Force system **not to sleep** / **display to be on** while the selected program works;
 - **Execute** another program instead of the specified.

![](https://user-images.githubusercontent.com/30962924/46260732-70e53780-c4f2-11e8-908c-d1c55b44aabe.png)

The latest version also contains shell extension:

![](https://user-images.githubusercontent.com/30962924/46580600-a3ca8680-ca30-11e8-953d-ddffb3cfe4dc.png)

## Downloads

See [releases](https://github.com/gyanprakashraj/exe-cutie/releases) page

 - **exe-cutie.exe** — GUI tool for configuration;
 - **emc.exe** — console tool for configuration;
 - **Actions** folder with actions executables described above.

**Note:** if you have x64 (aka 64-bit) version of Windows use x64 version of the program.
Not all actions of x86 (aka 32-bit) exe-cutie will work correctly on Windows x64.

The program was tested on Windows 7, 8 and 10. It might also work on Vista.

Key        | Value
---------- | -----
Author     | ©gyanprakashraj
Email      | anostalgicbug@gmail.com
Compiled   | Delphi XE8
Version    | 1.10.0.0
Date       | 2 June 2022 Kolkata

Apparently, you should be able to compile it without any problems starting from
Delphi XE2.

## How it works

This software uses internal Windows mechanism that is called **Image File
Execution Options** to intercept process creation and automatically launch a
debugger for the specified program. These small utilities from *Actions* folder
are designed to be set as such debuggers so they can perform some special activity
before approving the creation of the original process.

------------------------------------------------------------------------------

    Copyright (C) 2022sit gyanprakashraj

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.