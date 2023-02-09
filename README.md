# Simple Scripting in Assembly Language

## Contributors:
---
Author: Masood Ahmed <br>
Email: masood20@connect.hku.hk <br>
Alternative-Email: mangimasood2000@gmail.com

---

## Descriptions:
In this code within the repository, I have written some code to run some simple Assembly language instructions. An assembly language is a type of low-level programming language that is intended to communicate directly with a computer’s hardware. Unlike machine language, which consists of binary and hexadecimal characters, assembly languages are designed to be readable by humans.
<br><br>
Low-level programming languages such as assembly language are a necessary bridge between the underlying hardware of a computer and the higher-level programming languages—such as Python or JavaScript—in which modern software programs are written.
<br><br>
Assembly is widely used in operating system development. In the late ’90s, 90% of operating systems are developed using assembly, Ex:- MS-DOS (1.25 and 2.0) are written in x86 assembly. Later versions (4.0) were shifted to C. Bulk of Windows is written in C and C++ with a slight combination of Assembly.

## Assembly Language
The assembly language that is being used is based on the x86 instruction set architecture.

# Setup X86 Assembly Language Environment:

I will use x86 Assembly language that uses the instruction set architecture that is being adopted by all Intel and AMD processors. Those who have M1 macs might face some issues but there are plenty of solutions and workarounds online. The easiest thing that you can do is to use a Windows-based virtual machine.
I used parallax virtual machine to run widnows on MAC M1. 
<br><br>
I will use a library called Irvine32 that was developed by Kip R. Irvine. The library offers multiple useful procedures like reading/writing integers and strings from and to the console’s screen.
 <br><br>
 To setup the environment you will need:
  <br><br>
 - A Windows-based machine or a Windows-based virtual machine.
 - Linux/Unix-based machines, can be referred to [this link](https://satharus.me/tech/2019/10/06/masm_linux.html).
 - Visual studio community edition. You can download VS Community Edition 2022 from [this link](https://visualstudio.microsoft.com/vs/community/).
 - Download Irvine32 library from [this link](https://github.com/surferkip/asmbook/raw/main/Irvine.zip) and then extract the contents at your “C:\\” drive directly. The extracted “Irvine” folder should be placed at C:\\Irvine.
 - If you have any trouble compiling the code, try to disable your antivirus and then try again.
 - To run the program, open the project in using the Project.sln file and run the code in main.asm.
  <br><br>
# Feedback

Pull requests are welcome. For feedback and suggestions, please reach out to  @Masood-Ahmed271 on Github.

Thank you for reading. Enjoy the app! Stay happy and stay safe :)
