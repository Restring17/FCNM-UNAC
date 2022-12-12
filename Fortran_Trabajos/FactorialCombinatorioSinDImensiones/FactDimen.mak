# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=FactDimen - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to FactDimen - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "FactDimen - Win32 Release" && "$(CFG)" !=\
 "FactDimen - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "FactDimen.mak" CFG="FactDimen - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FactDimen - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "FactDimen - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
RSC=rc.exe
F90=fl32.exe

!IF  "$(CFG)" == "FactDimen - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\FactDimen.exe"

CLEAN : 
	-@erase ".\FactDimen.exe"
	-@erase ".\FactDimen.obj"
	-@erase ".\Modulo.obj"
	-@erase ".\Modulo1.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x280a /d "NDEBUG"
# ADD RSC /l 0x280a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/FactDimen.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/FactDimen.pdb" /machine:I386 /out:"$(OUTDIR)/FactDimen.exe" 
LINK32_OBJS= \
	"$(INTDIR)/FactDimen.obj" \
	"$(INTDIR)/Modulo.obj" \
	"$(INTDIR)/Modulo1.obj"

"$(OUTDIR)\FactDimen.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "FactDimen - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\FactDimen.exe"

CLEAN : 
	-@erase ".\FactDimen.exe"
	-@erase ".\FactDimen.obj"
	-@erase ".\Modulo.obj"
	-@erase ".\Modulo1.obj"
	-@erase ".\FactDimen.ilk"
	-@erase ".\FactDimen.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"FactDimen.pdb" 
# ADD BASE RSC /l 0x280a /d "_DEBUG"
# ADD RSC /l 0x280a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/FactDimen.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/FactDimen.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/FactDimen.exe" 
LINK32_OBJS= \
	"$(INTDIR)/FactDimen.obj" \
	"$(INTDIR)/Modulo.obj" \
	"$(INTDIR)/Modulo1.obj"

"$(OUTDIR)\FactDimen.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "FactDimen - Win32 Release"
# Name "FactDimen - Win32 Debug"

!IF  "$(CFG)" == "FactDimen - Win32 Release"

!ELSEIF  "$(CFG)" == "FactDimen - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\FactDimen.f90

!IF  "$(CFG)" == "FactDimen - Win32 Release"

F90_MODOUT=\
	"Bucle" \
	"Operacion"


"$(INTDIR)\FactDimen.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "FactDimen - Win32 Debug"

F90_MODOUT=\
	"Bucle" \
	"Operacion"


"$(INTDIR)\FactDimen.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo.f90

!IF  "$(CFG)" == "FactDimen - Win32 Release"

F90_MODOUT=\
	"Bucle"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "FactDimen - Win32 Debug"

F90_MODOUT=\
	"Bucle"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo1.f90

!IF  "$(CFG)" == "FactDimen - Win32 Release"

F90_MODOUT=\
	"Operacion"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "FactDimen - Win32 Debug"

F90_MODOUT=\
	"Operacion"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
