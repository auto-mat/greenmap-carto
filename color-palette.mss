/* ------------------------ COMMON -------------------------- */
@color-tram: #da1b8a;
@bus: #0092DA;
@color-railway: black;
@ferry: blue;

/* ------------------------ STATIONS -------------------------- */
@color_bus_stop_text: @bus;
@color_bus_site: @bus;
@color_tram_stop_text: @color-tram;
@color_tram_site: @color-tram;
@color_station_text: black;
@color_halt_text: black;
@color_subway_station_text: #7981B0;
@color_station_disused_text: grey;

/* ------------------------ NATURAL -------------------------- */
@tree: #4EAF6A;
@tree-row-casing: white;

/* ------------------------ BUILDINS -------------------------- */
@color-buildings: #fcbcc5;

/* ------------------------ NO ACCESS -------------------------- */
@no-access: white;
@opacity-no-access: 0.6;

@paid-access: white;
@opacity-paid-access: 0.3;

/* ------------------------ PLACENAMES -------------------------- */
@island-text: #2A3E92;
@placenames-text: #2A3E92;


/* ------------------------ ROUTES -------------------------- */
/* For the main linear features, such as roads and railways. */
@ferry-route: @ferry;

@platform: white;
@highway_platform_casing: @bus;
@railway_platform_casing: gray;
@tram_platform_casing: @color-tram;

@roads-text: #2A3E92;

@motorway-fill: #bfbfbf;
@trunk-fill: #bfbfbf;
@trunk-fill-alternative: #bfbfbf;
@primary-fill: #c9c9c9;
@secondary-fill: #d3d3d3;
@tertiary-fill: #e9e9e9;
@residential-fill: #ffffff;
@service-fill: #ffffff;
@living-street-fill: white;
@pedestrian-fill: white;
@road-fill: #ddd;
@path-fill: white;
@footway-fill: white;
@steps-fill: gray;
@bridleway-fill: green;
@track-fill: #996600;
@track-grade1-fill: #b37700;
@track-grade2-fill: #a87000;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;

@default-casing: #bdbdbd;
@motorway-casing: @default-casing;
@trunk-casing: @default-casing;
@primary-casing: @default-casing;
@secondary-casing: @default-casing;
@tertiary-casing: @default-casing;
@residential-casing: @default-casing;
@service-casing: @default-casing;
@living-street-casing: @default-casing;
@pedestrian-casing: @default-casing;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@permissive-marking: #cf9;
@destination-marking: #c2e0ff;
@private-marking: #efa9a9;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 25%);
@trunk-tunnel-fill: lighten(@trunk-fill, 10%);
@primary-tunnel-fill: lighten(@primary-fill, 10%);
@secondary-tunnel-fill: lighten(@secondary-fill, 5%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: lighten(@residential-fill, 10%);


@motorway-width-z12: 2;
@trunk-width-z12: 2.5;
@primary-width-z12: 2.5;
@secondary-width-z12: 2;

@motorway-width-z13: 5;
@trunk-width-z13: 7;
@primary-width-z13: 7;
@secondary-width-z13: 8;
@tertiary-width-z13: 4.5;
@residential-width-z13: 2;

@tertiary-width-z14: 6;
@residential-width-z14: 3;

@motorway-width-z15: 8.5;
@trunk-width-z15: 11;
@primary-width-z15: 11;
@secondary-width-z15: 11;
@tertiary-width-z15: 9.4;
@residential-width-z15: 6.5;

@residential-width-z16: 9.4;

@motorway-width-z17: 11; // shouldn't be narrower than trunk!
@trunk-width-z17: 15.5;
@primary-width-z17: 15.5;
@secondary-width-z17: 15.5;
@tertiary-width-z17: 13;
@residential-width-z17: 13;

/* ------------------------ PLACENAMES -------------------------- */
// --- Parks, woods, other green things ---
@forest: #8dc56c;
@forest-symbol-opacity: 0.3;
@grass: #73c82c; // also meadow, common, garden, conservation
@village-green: @grass;
@garden: #73c82c;
@golf_course: #b5e3b5;
@natural: #c6e4b4; // also grassland
@park: #73c82c; // also recreation_ground
@park-opacity: 1;
@wood: #8dc56c;
@vineyard: #73c82c;
@vineyard-symbol-opacity: 0.3;
@orchard: #73c82c;
@orchard-symbol-opacity: 0.3;
@scrub: #73c82c;
@scrub-symbol-opacity: 0.3;
@zoo: #73c82c;
@zoo-symbol-opacity: 0.3;

// --- sports ---

@stadium: #3c9; // also sports_centre
@stadium-opacity: 0.3;
@track: #74dcba;
@track-opacity: 0.3;
@pitch: #8ad3af;
@pitch-opacity: 0.3;

// --- Other ----

@aerodrome: #ccc;
@allotments: #73c82c;
@apron: #e9d1ff;
@attraction: #f2caea;
@barracks: #ff8f8f;
@campsite: #ccff99; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@cemetery-symbol-opacity: 0.3;
@construction: #d0d0d0;
@construction-opacity: 1;
@commercial: #efc8c8;
@danger_area: pink;
@desert: #e3b57a;
@field: #660;
@garages: #996;
@heath: #d6d99f;
@industrial: #d0d0d0; // also railway
@farmyard: #ddbf92;
@farm: #ead8bd; // also farmland
@parking: #d0d0d0;
@playground: #ccfff1;
@power: #bbb;
@rest_area: #efc8c8; // also services
@retail: #f1dada;
@residential: #ddd;
@sand: #ffdf88;
@school: #d0d0d0; // also university, college, hospital, kindergarten
@barrier: #444;
@barrier-width: 1;

@area-text: #2A3E92;

