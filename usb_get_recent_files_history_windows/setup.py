from cx_Freeze import setup, Executable

base = "Win32GUI"    

executables = [Executable("main.py", base=base)]

packages = ["subprocess", "sys"]
options = {
    'build_exe': {    
        'packages':packages,
    },    
}

setup(
    name = "dump_sysinfo",
    options = options,
    version = "1.0",
    description = 'get recently accessed files',
    executables = executables
)
