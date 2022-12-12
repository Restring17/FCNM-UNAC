# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=Principal - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Principal - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Principal - Win32 Release" && "$(CFG)" !=\
 "Principal - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Principal.mak" CFG="Principal - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Principal - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "Principal - Win32 Debug" (based on "Win32 (x86) Console Application")
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

!IF  "$(CFG)" == "Principal - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Principal.exe"

CLEAN : 
	-@erase ".\Principal.exe"
	-@erase ".\Principal.obj"
	-@erase ".\Modulo1.obj"
	-@erase ".\Modulo2.obj"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE RSC /l 0x280a /d "NDEBUG"
# ADD RSC /l 0x280a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Principal.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/Principal.pdb" /machine:I386 /out:"$(OUTDIR)/Principal.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Principal.obj" \
	"$(INTDIR)/Modulo1.obj" \
	"$(INTDIR)/Modulo2.obj"

"$(OUTDIR)\Principal.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Principal - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\Principal.exe"

CLEAN : 
	-@erase ".\Principal.exe"
	-@erase ".\Principal.obj"
	-@erase ".\Modulo1.obj"
	-@erase ".\Modulo2.obj"
	-@erase ".\Principal.ilk"
	-@erase ".\Principal.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"Principal.pdb" 
# ADD BASE RSC /l 0x280a /d "_DEBUG"
# ADD RSC /l 0x280a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Principal.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/Principal.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/Principal.exe" 
LINK32_OBJS= \
	"$(INTDIR)/Principal.obj" \
	"$(INTDIR)/Modulo1.obj" \
	"$(INTDIR)/Modulo2.obj"

"$(OUTDIR)\Principal.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "Principal - Win32 Release"
# Name "Principal - Win32 Debug"

!IF  "$(CFG)" == "Principal - Win32 Release"

!ELSEIF  "$(CFG)" == "Principal - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Principal.f90

!IF  "$(CFG)" == "Principal - Win32 Release"

F90_MODOUT=\
	"constantes" \
	"valor"


"$(INTDIR)\Principal.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Principal - Win32 Debug"

F90_MODOUT=\
	"constantes" \
	"valor"


"$(INTDIR)\Principal.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo1.f90
NODEP_F90_MODUL=\
	".\constantes.mod"\
	

!IF  "$(CFG)" == "Principal - Win32 Release"

F90_MODOUT=\
	"valor"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Principal - Win32 Debug"

F90_MODOUT=\
	"valor"


"$(INTDIR)\Modulo1.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Modulo2.f90

!IF  "$(CFG)" == "Principal - Win32 Release"

F90_MODOUT=\
	"constantes"


"$(INTDIR)\Modulo2.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Principal - Win32 Debug"

F90_MODOUT=\
	"constantes"


"$(INTDIR)\Modulo2.obj" : $(SOURCE) "$(INTDIR)"
   $(F90) $(F90_PROJ) $(SOURCE)


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
