//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Birdshot\birdshot.dmm"
		#include "map_files\debug\multiz.dmm"
		#include "map_files\debug\runtimestation.dmm"
		#include "map_files\Mining\Lavaland.dmm"
		// SKYRAT EDIT ADDITON START - Compiling our modular maps too!
		// SKYRAT EDIT END
		// BUBBER EDIT ADDITION START
		#include "map_files\KiloStation\KiloStation.dmm"
		// BUBBER EDIT ADDITION END

		#ifdef CIBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
