# .ycm_extra_conf.py template for c projects
# the names of the files needs to be *.c and *.h

import os

def DirectoryOfThisScript():
  return os.path.dirname(os.path.abspath( __file__ ))

flags = [
'-x',
'c',
'-Wall',
'-Wextra',
'-pedantic',
'-Werror',
'-ansi',
'-std=c99',
# system headers
'-isystem',
'/usr/include',
'-isystem',
'/usr/local/include',
# custom headers
'-I',
'DirectoryOfThisScript()/customheader.h',
]

def FlagsForFile(filename, **kwargs):
 return {
    'flags': list(flags),
    'do_cache': True
  }

