# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Anothermain - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Anothermain - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Anothermain - Win32 Release" && "$(CFG)" !=\
 "Anothermain - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Anothermain.mak" CFG="Anothermain - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Anothermain - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Anothermain - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "Anothermain - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Anothermain.exe"

CLEAN : 
	-@erase ".\Anothermain.exe"
	-@erase ".\Anothermain.obj"
	-@erase ".\Modulo1.obj"
	-@erase ".\Modulo.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x280a /d "NDEBUG"
# ADD RSC /l 0x280a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Anothermain.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Anothermain.pdb" /machine:I386 /out:"$(OUTDIR)/Anothermain.exe"\
 
LINK32_OBJS= \
	"$(INTDIR)/Anothermain.obj" \
	"$(INTDIR)/Modulo1.obj" \
	"$(INTDIR)/Modulo.obj"

"$(OUTDIR)\Anothermain.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Anothermain - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Anothermain.exe"

CLEAN : 
	-@erase ".\Anothermain.exe"
	-@erase ".\Anothermain.obj"
	-@erase ".\Modulo1.obj"
	-@erase ".\Modulo.obj"
	-@erase ".\Anothermain.ilk"
	-@erase ".\Anothermain.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"Anothermain.pdb" 
# ADD BASE RSC /l 0x280a /d "_DEBUG"
# ADD RSC /l 0x280a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Anothermain.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Anothermain.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/Anothermain.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Anothermain.obj" \
	"$(INTDIR)/Modulo1.obj" \
	"$(INTDIR)/Modulo.obj"

"$(OUTDIR)\Anothermain.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Anothermain - Win32 Release"
# Name "Anothermain - Win32 Debug"

!IF  "$(CFG)" == "Anothermain - Win32 Release"

!ELSEIF  "$(CFG)" == "Anothermain - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Anothermain.f90
DEP_F90_ANOTH=\
	".\Operaciones.mod"\
	".\variables.mod"\
	

"$(INTDIR)\Anothermain.obj" : $(SOURCE) $(DEP_F90_ANOTH) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo1.f90

!IF  "$(CFG)" == "Anothermain - Win32 Release"

F90_MODOUT=\
	"Operaciones"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Anothermain - Win32 Debug"

F90_MODOUT=\
	"Operaciones"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo.f90

!IF  "$(CFG)" == "Anothermain - Win32 Release"

F90_MODOUT=\
	"variables"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Anothermain - Win32 Debug"

F90_MODOUT=\
	"variables"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
