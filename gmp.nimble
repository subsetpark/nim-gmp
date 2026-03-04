# Package

version       = "0.2.6"
author        = "Will Szumski"
description   = "Wrapper for the GNU Multiple Precision Arithmetic Library (GMP)"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
skipDirs      = @["examples"]
# Dependencies

requires "nim > 0.9.6"  # 0.9.6 is the last version of nimrod
