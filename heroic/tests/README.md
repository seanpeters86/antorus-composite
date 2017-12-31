# Test directory  
In this directory you will find test profiles using the T21_M gear set found in the simc main repo with each boss mod attached to it.

To run the profiles you must first get:
- [simca.py](https://github.com/lgkern/SimAutomation/blob/master/simca.py)
- [simparser.py](https://github.com/lgkern/SimAutomation/blob/master/simParser.py)
- [Download the nightly of simc](http://downloads.simulationcraft.org/?C=M;O=D) or [build from source](https://github.com/simulationcraft/simc/wiki/Newbie-build-instructions)

Put the two python scripts and the contents of the `tests` folder in the root of your simc directory.

## Running t21_heroic_antorus.sh

This script automates simca.py for the specific profiles used for convenience.
```
# ./t21_heroic_antorus.sh [-i VALUE, -w, -c VALUE, -o FILENAME.txt]
```
- `-i VALUE` to specify iterations the sims should use (default: `10000`)
- `-w` to enable statweights.
- `-c VALUE` to specify number of cores (threads) the sims should use (default: `4`)
- `-o FILENAME.txt` to specify a new output file name. Output should contain `.txt` at the end. (default: `antorus-composite.txt`)
