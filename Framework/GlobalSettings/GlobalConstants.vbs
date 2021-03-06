On error resume next

'Global Variables
Public gstrResultsFolder
Public gstrProjectResultPath
Public gstrRootFolder
Public gstrFrameWorkFolder
Public gstrTestcasesPath
Public gstrTestData
Public gstrFile
Public gstrFolderName
Public gstrProjectResourcesPath
Public objExcel
Public objWorkbook
Public objSheet
Public objActiveWorkbook
Public objActiveSheet
Public gstrProjectTestdataPath
Public gstrProjectObjectRepository
Public gstrLogFloder
Public gstrResultName
Public gstrProjectConfigFilePath
Public gstrGlobalLibraryFilePath
Public gstrCommonLibraryFilePath
Public gstrBusinessLibraryFilePath
Public gstrQCutilLibraryFilePath
Public gstrReportsLibraryFilePath
Public gstrCoreFrameworkFolder
Public gstrAcceleratorsFolder	
Public gstrProjectsFolder
Public gstrProjectRecoveryScenariosPath
Public gstrProjectTestScenariosPath
Public gstrFrameworkUtilityLibrariesPath
Public gstrFrameworkGlobalSettingsPath
Public gstrAcceleratorsSAPFioriLibraryPath
Public gstrAcceleratorsSAPFioriORPath
Public gstrAcceleratorsSAPAribaLibraryPath
Public gstrAcceleratorsSAPAribaORPath
Public gstrAcceleratorsSAPConcurLibraryPath
Public gstrAcceleratorsSAPConcurORPath
Public gstrAcceleratorsSAPGUILibraryPath
Public gstrAcceleratorsSAPGUIORPath


'Project Paths
gstrRootFolder= Split(Environment("TestDir"),"\Projects")(0)

'Framework Subfolder Paths
gstrCoreFrameworkFolder = gstrRootFolder&"\Framework"
gstrAcceleratorsFolder = gstrRootFolder&"\Accelerators"
gstrProjectsFolder = gstrRootFolder&"\Projects"

'Prject Level Path
gstrFrameWorkFolder= gstrProjectsFolder&"\"&Environment("Module")

'Project Level Folders Path
gstrProjectConfigFilePath = gstrFrameWorkFolder&"\Config\Config.xml"
gstrProjectResourcesPath =gstrFrameWorkFolder&"\Resources"
gstrProjectTestdataPath = gstrFrameWorkFolder&"\TestData\"
gstrProjectResultPath = gstrFrameWorkFolder&"\TestResults"
gstrProjectRecoveryScenariosPath = gstrFrameWorkFolder&"\RecoveryScenarios"
gstrProjectTestScenariosPath = gstrFrameWorkFolder&"\TestScenarios"

'Framework Level Folder Paths
gstrFrameworkUtilityLibrariesPath = gstrCoreFrameworkFolder&"\UtilityLibraries"
gstrFrameworkGlobalSettingsPath = gstrCoreFrameworkFolder&"\GlobalSettings"

'Accelarator Level Folder Paths
gstrAcceleratorsSAPFioriLibraryPath=gstrAcceleratorsFolder&"\SAPFiori\BusinessFunctions"
gstrAcceleratorsSAPFioriORPath = gstrAcceleratorsFolder&"\SAPFiori\ObjectRepository"
gstrAcceleratorsSAPAribaLibraryPath = gstrAcceleratorsFolder&"\SAPAriba\BusinessFunctions"
gstrAcceleratorsSAPAribaORPath = gstrAcceleratorsFolder&"\SAPAriba\ObjectRepository"
gstrAcceleratorsSAPConcurLibraryPath = gstrAcceleratorsFolder&"\SAPConcur\BusinessFunctions"
gstrAcceleratorsSAPConcurORPath = gstrAcceleratorsFolder&"\SAPConcur\ObjectRepository"
gstrAcceleratorsSAPGUILibraryPath = gstrAcceleratorsFolder&"\SAPGUI\BusinessFunctions"
gstrAcceleratorsSAPGUIORPath = gstrAcceleratorsFolder&"\SAPGUI\ObjectRepository"

gstrFolderName = Environment("FolderName")
gstrResultName=gstrFolderName

'Global Syncronizations Statements
Const MIN_WAIT = 5
Const MID_WAIT = 10
Const MAX_WAIT = 30

'ErrorHandling Statements
On Error Resume Next
On Error Goto 0
Environment("ERRORFLAG") = True
Environment("StepFailed") = "NO"

