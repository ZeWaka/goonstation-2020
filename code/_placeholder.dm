
/* This file is intended to provide placeholder paths.
 * These objects are not in this codebase, but the paths are present on maps.
 */

//ICE MOON STUFF (DELETE FOR REAL)
/turf/unsimulated/wall/arctic/abyss

/turf/unsimulated/wall/arctic/abyss/ice

/turf/unsimulated/floor/arctic/snow

/turf/unsimulated/floor/arctic/snow/lake

/turf/unsimulated/floor/arctic/snow/ice

/turf/unsimulated/floor/arctic/cliff

/turf/unsimulated/floor/arctic/plating

/turf/unsimulated/floor/arctic/abyss

/turf/unsimulated/floor/arctic/cliff_outsidecorner

/turf/simulated/floor/arctic_elevator_shaft

/** Placeholder Spawner
 *  Spawns a designated atom/movable at it's location upon creation
 */
/obj/placeholder
	name = "Placeholder Object"
	var/spawn_path = "/obj/item/space_thing" //Cardinal sin (can runtime), but will enable paths that don't exist to be used

	New(turf/loc)
		..()
		#if SECRETS_ENABLED == 1
		new spawn_path(loc)
		#endif
		qdel(src)
