# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Seleccionando - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Seleccionando - Win32\
 Debug.
!ENDIF 

!IF "$(CFG)" != "Seleccionando - Win32 Release" && "$(CFG)" !=\
 "Seleccionando - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Seleccionando.mak" CFG="Seleccionando - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Seleccionando - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Seleccionando - Win32 Debug" (based on\
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
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "Seleccionando - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Seleccionando.exe"

CLEAN : 
	-@erase ".\Seleccionando.exe"
	-@erase ".\Seleccionando.obj"
	-@erase ".\Modulo.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x280a /d "NDEBUG"
# ADD RSC /l 0x280a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Seleccionando.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Seleccionando.pdb" /machine:I386\
 /out:"$(OUTDIR)/Seleccionando.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Seleccionando.obj" \
	"$(INTDIR)/Modulo.obj"

"$(OUTDIR)\Seleccionando.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Seleccionando - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Seleccionando.exe"

CLEAN : 
	-@erase ".\Seleccionando.exe"
	-@erase ".\Seleccionando.obj"
	-@erase ".\Modulo.obj"
	-@erase ".\Seleccionando.ilk"
	-@erase ".\Seleccionando.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"Seleccionando.pdb" 
# ADD BASE RSC /l 0x280a /d "_DEBUG"
# ADD RSC /l 0x280a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Seleccionando.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Seleccionando.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/Seleccionando.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Seleccionando.obj" \
	"$(INTDIR)/Modulo.obj"

"$(OUTDIR)\Seleccionando.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Seleccionando - Win32 Release"
# Name "Seleccionando - Win32 Debug"

!IF  "$(CFG)" == "Seleccionando - Win32 Release"

!ELSEIF  "$(CFG)" == "Seleccionando - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Seleccionando.f90
DEP_F90_SELEC=\
	".\Operaciones.mod"\
	

"$(INTDIR)\Seleccionando.obj" : $(SOURCE) $(DEP_F90_SELEC) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo.f90

!IF  "$(CFG)" == "Seleccionando - Win32 Release"

F90_MODOUT=\
	"Operaciones"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Seleccionando - Win32 Debug"

F90_MODOUT=\
	"Operaciones"


"$(INTDIR)\Modulo.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
