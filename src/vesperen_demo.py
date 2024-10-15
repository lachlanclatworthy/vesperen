import os
import sys

# Load vesperen module...
script_dir = os.path.dirname(__file__)
mod_dir = os.path.join(script_dir, '..', 'build')
sys.path.append(mod_dir)

import vesperen

# ...and run it
vesperen.hailToTheSky()
