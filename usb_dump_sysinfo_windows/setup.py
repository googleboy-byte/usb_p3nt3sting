from cx_Freeze import setup, Executable

base = "Win32GUI"    

executables = [Executable("main.py", base=base)]

packages = ["os", "subprocess", "browserhistory"]
options = {
    'build_exe': {    
        'packages':packages,
    },    
}

setup(
    name = "dump_sysinfo",
    options = options,
    version = "1.0",
    description = 'get os sys info',
    executables = executables
)
