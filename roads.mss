/* For the main linear features, such as roads and railways. */
@color-tram: #da1b8a;
@color-railway: black;

@platform: white;
@highway_platform_casing: #0092DA;
@railway_platform_casing: gray;
@tram_platform_casing: @color-tram;

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

#turning-circle-casing {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-width: @tertiary-width-z15 * 1.8 + 1.8;
    marker-height: @tertiary-width-z15 * 1.8 + 1.8;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @tertiary-casing;
    [zoom >= 17] {
      marker-width: @tertiary-width-z17 * 1.8 + 2.5;
      marker-height: @tertiary-width-z17 * 1.8 + 2.5;
    }
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-width: @residential-width-z15 * 1.8 + 1.8;
      marker-height: @residential-width-z15 * 1.8 + 1.8;
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
      marker-fill: @residential-casing;
      [zoom >= 16] {
        marker-width: @residential-width-z16 * 1.8 + 1.8;
        marker-height: @residential-width-z16 * 1.8 + 1.8;
      }
      [zoom >= 17] {
        marker-width: @residential-width-z17 * 1.8 + 2.5;
        marker-height: @residential-width-z17 * 1.8 + 2.5;
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-width: 14;
    marker-height: 14;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @living-street-casing;
    [zoom >= 16] {
      marker-width: 18;
      marker-height: 18;
    }
    [zoom >= 17] {
      marker-width: 24;
      marker-height: 24;
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-width: 14;
    marker-height: 14;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @service-casing;
    [zoom >= 17] {
      marker-width: 16;
      marker-height: 16;
    }
  }
}

#turning-circle-fill {
  [int_tc_type = 'tertiary'][zoom >= 15] {
    marker-width: @tertiary-width-z15 * 1.8;
    marker-height: @tertiary-width-z15 * 1.8;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @tertiary-fill;
    [zoom >= 17] {
      marker-width: @tertiary-width-z17 * 1.8;
      marker-width: @tertiary-width-z17 * 1.8;
    }
  }

  [int_tc_type = 'residential'],
  [int_tc_type = 'unclassified'] {
    [zoom >= 15] {
      marker-width: @residential-width-z15 * 1.8;
      marker-height: @residential-width-z15 * 1.8;
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-line-width: 0;
      marker-fill: @residential-fill;
      [zoom >= 16] {
        marker-width: @residential-width-z16 * 1.8;
        marker-height: @residential-width-z16 * 1.8;
      }
      [zoom >= 17] {
        marker-width: @residential-width-z17 * 1.8;
        marker-height: @residential-width-z17 * 1.8;
      }
    }
  }

  [int_tc_type = 'living_street'][zoom >= 15] {
    marker-width: 12;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @living-street-fill;
    [zoom >= 16] {
      marker-width: 16;
      marker-height: 16;
    }
    [zoom >= 17] {
      marker-width: 22;
      marker-height: 22;
    }
  }

  [int_tc_type = 'service'][zoom >= 16] {
    marker-width: 12;
    marker-height: 12;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-line-width: 0;
    marker-fill: @service-fill;
    [zoom >= 17] {
      marker-width: 14;
      marker-height: 14;
    }
  }
}



#highway-area-casing {
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 14] {
      line-color: #999;
      line-width: 1;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_service'],
  [feature = 'highway_footway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      line-color: grey;
      line-width: 1;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    line-color: @track-fill;
    line-width: 2;
  }
}

#highway-area-casing::platform {
  [feature = 'highway_platform']::highway,
  [feature = 'railway_platform']::railway {
    [zoom >= 16] {
      line-color: @highway_platform_casing;
      line-width: 2;
      line-cap: round;
      line-join: round;
      [feature = 'railway_platform'] {
         line-color: @railway_platform_casing;
      }
      [feature = 'railway_platform'][tram = 'yes'] {
         line-color: @tram_platform_casing;
      }
    }
  }
}

#highway-area-fill {
  [feature = 'highway_living_street'][zoom >= 14] {
    polygon-fill: #ccc;
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_service'] {
    [zoom >= 14] {
      polygon-fill: #fff;
    }
  }

  [feature = 'highway_pedestrian'],
  [feature = 'highway_footway'],
  [feature = 'highway_path'] {
    [zoom >= 14] {
      polygon-fill: #ededed;
    }
  }

  [feature = 'highway_track'][zoom >= 14] {
    polygon-fill: #dfcc66;
  }

  [feature = 'highway_platform'],
  [feature = 'railway_platform'] {
    [zoom >= 16] {
      polygon-fill: #bbbbbb;
      polygon-gamma: 0.65;
    }
  }

  [feature = 'aeroway_runway'][zoom >= 11] {
    polygon-fill: @runway-fill;
  }

  [feature = 'aeroway_taxiway'][zoom >= 13] {
    polygon-fill: @taxiway-fill;
  }

  [feature = 'aeroway_helipad'][zoom >= 16] {
    polygon-fill: @helipad-fill;
  }
}

#highway-junctions {
  [zoom >= 11] {
    ref/text-name: "[ref]";
    ref/text-size: 9;
    ref/text-fill: #6666ff;
    ref/text-min-distance: 2;
    ref/text-face-name: @oblique-fonts;
    ref/text-halo-radius: 1;
    ref/text-wrap-width: 12;
    [zoom >= 12] {
      name/text-name: "[name]";
      name/text-size: 8;
      name/text-fill: #6666ff;
      name/text-dy: -8;
      name/text-face-name: @oblique-fonts;
      name/text-halo-radius: 1;
      name/text-wrap-character: ";";
      name/text-wrap-width: 2;
      name/text-min-distance: 2;
    }
    [zoom >= 15] {
      ref/text-size: 12;
      name/text-size: 11;
      name/text-dy: -10;
    }
  }
}


#tunnels::casing {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 3;
      line-color: @motorway-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: @trunk-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-color: @primary-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 4;
      line-dasharray: 4,2;
      line-color: @secondary-casing;
    }
    [zoom >= 13] { line-width: 10; }
    [zoom >= 15] { line-width: 12; }
    [zoom >= 17] { line-width: 17; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 6;
      line-dasharray: 4,2;
      line-color: @tertiary-casing;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: @residential-casing;
      line-dasharray: 4,2;
    }
    [zoom >= 14] { line-width: 4.5; }
    [zoom >= 15] { line-width: 8; }
    [zoom >= 16] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#tunnels::fill {
  [highway = 'motorway'],
  [highway = 'motorway_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @motorway-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 5; }
    [zoom >= 15] { line-width: 8.5; }
    [zoom >= 17] { line-width: 11; }
  }

  [highway = 'trunk'],
  [highway = 'trunk_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @trunk-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'primary'],
  [highway = 'primary_link'] {
    [zoom >= 12] {
      line-width: 2.5;
      line-color: @primary-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9; }
    [zoom >= 17] { line-width: 12; }
  }

  [highway = 'secondary'],
  [highway = 'secondary_link'] {
    [zoom >= 12] {
      line-width: 2;
      line-color: @secondary-tunnel-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: 8; }
    [zoom >= 15] { line-width: 10; }
    [zoom >= 17] { line-width: 14; }
  }

  [highway = 'tertiary'],
  [highway = 'tertiary_link'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: @tertiary-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 6.5; }
    [zoom >= 15] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [zoom >= 13] {
      line-width: 2;
      line-color: @residential-tunnel-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: 13; }
  }
}

#roads-casing::links {
  [highway = 'raceway'] {
    [zoom >= 12] {
      line-color: pink;
      line-width: 1.2;
      line-join: round;
    }
    [zoom >= 13] { line-width: 4; }
    [zoom >= 15] { line-width: 7; }
  }

  [highway = 'motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @motorway-width-z12 - 1.5 + 1;
      line-color: @motorway-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @motorway-width-z13 - 2 + 1.5; }
    [zoom >= 15] { line-width: @motorway-width-z15 - 2.5 + 1.8; }
    [zoom >= 17] { line-width: @motorway-width-z17 - 2 + 2.5; }
  }

  [highway = 'trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @trunk-width-z12 + 1;
      line-color: @trunk-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @trunk-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @trunk-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @trunk-width-z17 + 2.5; }
  }

  [highway = 'primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @primary-width-z12 + 1;
      line-color: @primary-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @primary-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @primary-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @primary-width-z17 + 2.5; }
  }

  [highway = 'secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @secondary-width-z12 + 1;
      line-color: @secondary-casing;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: @secondary-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @secondary-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @secondary-width-z17 + 2.5; }
  }

  [highway = 'tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 6;
      line-color: @tertiary-casing;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: 7.5; }
    [zoom >= 15] { line-width: 11; }
    [zoom >= 17] { line-width: 16; }
  }
}

#roads-casing {
  [highway = 'motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @motorway-width-z12 + 1;
      line-color: @motorway-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @motorway-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @motorway-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @motorway-width-z17 + 2.5; }
  }

  [highway = 'trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @trunk-width-z12 + 1;
      line-color: @trunk-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @trunk-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @trunk-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @trunk-width-z17 + 2.5; }
  }

  [highway = 'primary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @primary-width-z12 + 1;
      line-color: @primary-casing;
      line-join: round;
    }
    [zoom >= 13] { line-width: @primary-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @primary-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @primary-width-z17 + 2.5; }
  }

  [highway = 'secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @secondary-width-z12 + 1;
      line-color: @secondary-casing;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: @secondary-width-z13 + 1.5; }
    [zoom >= 15] { line-width: @secondary-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @secondary-width-z17 + 2.5; }
  }

  [highway = 'tertiary'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: @tertiary-width-z13 + 1.5;
      line-color: @tertiary-casing;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 14] { line-width: @tertiary-width-z14 + 1.5; }
    [zoom >= 15] { line-width: @tertiary-width-z15 + 1.8; }
    [zoom >= 17] { line-width: @tertiary-width-z17 + 2.5; }
  }

  [highway = 'residential'],
  [highway = 'unclassified'],
  [highway = 'road'] {
    [tunnel != 'yes'] {
      [zoom >= 13] {
        line-width: 3;
        line-color: @residential-casing;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: @residential-width-z14 + 1.5; }
      [zoom >= 15] { line-width: @residential-width-z15 + 1.8; }
      [zoom >= 16] { line-width: @residential-width-z16 + 1.8; }
      [zoom >= 17] { line-width: @residential-width-z17 + 2.5; }
    }
  }

  /* This needs refactoring! Minor services shouldn't appear at z14
   * simply because of a tunnel tag. Also rationalise joins and caps
   */
  [highway = 'service'] {
    [service = 'INT-normal'][tunnel != 'yes'] {
      [zoom >= 14] {
        line-color: @service-casing;
        line-width: 2.5;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 16] { line-width: 7; }
    }
    [service = 'INT-minor'][tunnel != 'yes'] {
      [zoom >= 16] {
        line-color: @service-casing;
        line-width: 4;
        line-cap: round;
        line-join: round;
      }
    }
    [tunnel = 'yes'][zoom >= 14] {
      line-color: @service-casing;
      line-width: 2.5;
      line-dasharray: 4,2;
      [zoom >= 16] { line-width: 7; }
    }
  }

  [highway = 'pedestrian'][zoom >= 13] {
    line-width: 2;
    line-color: @pedestrian-casing;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 3.6; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9; }
    [tunnel = 'yes'] {
      line-dasharray: 4,2;
    }
  }

  [highway = 'living_street'][zoom >= 12] {
    line-width: 2.5;
    line-color: @living-street-casing;
    line-cap: round;
    line-join: round;
    [zoom >= 14] { line-width: 4; }
    [zoom >= 15] { line-width: 6; }
    [zoom >= 16] { line-width: 9; }
    [zoom >= 17] { line-width: 14.5; }
  }
}

#roads-fill::links {
  [feature = 'highway_motorway_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @motorway-width-z12 - 1.5;
      line-color: @motorway-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: @motorway-width-z13 - 2; }
    [zoom >= 15] { line-width: @motorway-width-z15 - 2.5; }
    [zoom >= 17] { line-width: @motorway-width-z17 - 2; }
  }

  [feature = 'highway_trunk_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @trunk-width-z12;
      line-color: @trunk-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: @trunk-width-z13; }
    [zoom >= 15] { line-width: @trunk-width-z15; }
    [zoom >= 17] { line-width: @trunk-width-z17; }
  }

  [feature = 'highway_primary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @primary-width-z12;
      line-color: @primary-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: @primary-width-z13; }
    [zoom >= 15] { line-width: @primary-width-z15; }
    [zoom >= 17] { line-width: @primary-width-z17; }
  }

  [feature = 'highway_secondary_link'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @secondary-width-z12;
      line-color: @secondary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: @secondary-width-z13; }
    [zoom >= 15] { line-width: @secondary-width-z15; }
    [zoom >= 17] { line-width: @secondary-width-z17; }
  }

  [feature = 'highway_tertiary_link'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: @tertiary-width-z13;
      line-color: @tertiary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 14] { line-width: @tertiary-width-z14; }
    [zoom >= 15] { line-width: @tertiary-width-z15; }
    [zoom >= 17] { line-width: @tertiary-width-z17; }
  }
}

#roads-fill {
  [feature = 'highway_motorway'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @motorway-width-z12;
      line-color: @motorway-fill;
    }
    [zoom >= 13] {
      line-width: @motorway-width-z13;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 15] { line-width: @motorway-width-z15; }
    [zoom >= 17] { line-width: @motorway-width-z17; }
  }

  [feature = 'highway_trunk'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @trunk-width-z12;
      line-cap: round;
      line-join: round;
      line-color: @trunk-fill;
    }
    [zoom >= 13] { line-width: @trunk-width-z13; }
    [zoom >= 15] { line-width: @trunk-width-z15; }
    [zoom >= 17] { line-width: @trunk-width-z17; }
  }

  [feature = 'highway_primary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @primary-width-z12;
      line-color: @primary-fill;
      line-join: round;
      line-cap: round;
    }
    [zoom >= 13] { line-width: @primary-width-z13; }
    [zoom >= 15] { line-width: @primary-width-z15; }
    [zoom >= 17] { line-width: @primary-width-z17; }
  }

  [feature = 'highway_secondary'][tunnel != 'yes'] {
    [zoom >= 12] {
      line-width: @secondary-width-z12;
      line-color: @secondary-fill;
      line-cap: round;
      line-join: round;
    }
    [zoom >= 13] { line-width: @secondary-width-z13; }
    [zoom >= 15] { line-width: @secondary-width-z15; }
    [zoom >= 17] { line-width: @secondary-width-z17; }
  }

  [feature = 'highway_tertiary'],
  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'],
  [feature = 'highway_road'] {
    [zoom >= 10][zoom < 13] {
      line-width: 1;
      line-color: @residential-casing;
    }
  }

  [feature = 'highway_road'][zoom >= 13] {
    line-width: 2;
    line-color: @road-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 6.5; }
    [zoom >= 16] { line-width: 9.4; }
    [zoom >= 17] { line-width: @residential-width-z17; }
  }

  [feature = 'highway_residential'],
  [feature = 'highway_unclassified'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: @residential-width-z13;
      line-color: @residential-fill;
      line-cap: round;
      line-join: round;
      [zoom >= 14] { line-width: @residential-width-z14; }
      [zoom >= 15] { line-width: @residential-width-z15; }
      [zoom >= 16] { line-width: @residential-width-z16; }
      [zoom >= 17] { line-width: @residential-width-z17; }
    }
  }

  [feature = 'highway_living_street'][zoom >= 12] {
    line-width: 1.5;
    line-color: @living-street-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 4.7; }
    [zoom >= 16] { line-width: 7.4; }
    [zoom >= 17] { line-width: 13; }
  }

  [feature = 'highway_tertiary'][tunnel != 'yes'][zoom >= 13] {
    line-width: @tertiary-width-z13;
    line-color: @tertiary-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: @tertiary-width-z14; }
    [zoom >= 15] { line-width: @tertiary-width-z15; }
    [zoom >= 17] { line-width: @tertiary-width-z17; }
  }

  [feature = 'highway_service'][service = 'INT-normal'][zoom >= 13] {
    line-width: 1;
    line-color: @residential-casing;
    [zoom >= 14] {
      line-join: round;
      line-cap: round;
      line-width: 2;
      line-color: @residential-fill;
    }
    [zoom >= 16] { line-width: 6; }
  }

  [feature = 'highway_service'][service = 'INT-minor'][zoom >= 16] {
    line-width: 3;
    line-color: @residential-fill;
    line-join: round;
    line-cap: round;
  }

  [feature = 'highway_pedestrian'][zoom >= 13] {
    line-width: 1.5;
    line-color: @pedestrian-fill;
    line-join: round;
    line-cap: round;
    [zoom >= 14] { line-width: 3; }
    [zoom >= 15] { line-width: 5.5; }
    [zoom >= 16] { line-width: 8; }
  }

  [feature = 'highway_platform'] {
    [zoom >= 16] {
      line-join: round;
      line-width: 6;
      line-color: @highway_platform_casing;
      line-cap: round;
      b/line-width: 4;
      b/line-color: @platform;
      b/line-cap: round;
      b/line-join: round;
    }
  }

  [feature = 'highway_steps'][zoom >= 13][zoom < 15] {
    line-width: 6;
    line-color: @steps-casing;
    line-opacity: 0.4;
    b/line-width: 2;
    b/line-color: @steps-fill;
    b/line-dasharray: 1,3;
    b/line-cap: round;
    b/line-join: round;
  }

  [feature = 'highway_steps'][zoom >= 15] {
    line-width: 5.0;
    line-color: @steps-fill;
    line-dasharray: 2,1;
  }

  ::footway {
  [feature = 'highway_bridleway'],
  [feature = 'highway_path'][horse = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 3;
      line-color: @footway-fill;
      line-join: round;
      line-cap: round;
    }
  }

  [feature = 'highway_footway'],
  [feature = 'highway_path'][foot = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 2;
      line-color: @footway-fill;
      line-cap: round;
      line-join: round;
    }
  }

  [feature = 'highway_cycleway'],
  [feature = 'highway_path'][bicycle = 'designated'] {
    [zoom >= 13][tunnel != 'yes'] {
      line-width: 2;
      line-color: @footway-fill;
      line-join: round;
      line-cap: round;
    }
  }

  /*
   * The above defininitions should override this when needed
   * given the specitivity precedence.
   */
  [feature = 'highway_path'][tunnel != 'yes'] {
    [zoom >= 13] {
      line-width: 1.0;
      line-color: @path-fill;
      line-cap: round;
      line-join: round;
    }
  }

  [feature = 'highway_track'] {
    [zoom >= 13] {
      line-width: 3;
      line-color: @footway-fill;
      line-join: round;
      line-cap: round;
    }
  }
  }

    [feature = 'railway_rail'][tunnel != 'yes'],
    [feature = 'railway_narrow_gauge'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_light_rail'],
    [feature = 'railway_monorail'],
    [feature = 'railway_funicular'] {
      [zoom >= 10] {
         line-width: 0.75;
         line-color: @color-railway;
         line-join: round;
         [zoom >= 13] {
            line-width: 1;
         }
         [zoom >= 14] {
            line-width: 1.25;
         }
      }
    }

    [feature = 'railway_tram'][tunnel = 'yes'][zoom >= 13] {
      line-width: 1;
      line-dasharray: 5,3;
      line-color: @color-tram;
    }

    [feature = 'railway_turntable'][zoom >= 16] {
      line-width: 1.5;
      line-color: #999;
    }

  [feature = 'aeroway_runway'][zoom >= 11][zoom < 14] {
    line-width: 2;
    line-color: @runway-fill;
    [zoom >= 12] { line-width: 4; }
    [zoom >= 13] { line-width: 7; }
  }

  [feature = 'aeroway_runway'][bridge = 'no'][zoom >= 14] {
    line-width: 18;
    line-color: @runway-fill;
  }

  [feature = 'aeroway_taxiway'][zoom >= 11][zoom < 14] {
    line-width: 1;
    line-color: @taxiway-fill;
  }

  [feature = 'aeroway_taxiway'][bridge = 'no'][zoom >= 14] {
    line-width: 4;
    line-color: @taxiway-fill;
    [zoom >= 15] {
      line-width: 6;
    }
  }
}

#roads-fill::platform {
    [feature = 'railway_platform'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: @railway_platform_casing;
        line-cap: round;
        b/line-width: 4;
        b/line-color: @platform;
        b/line-cap: round;
        b/line-join: round;
        [tram = 'yes'] {
           line-color: @tram_platform_casing;
        }
      }
    }
}

/* This is a good target for refactoring */
.access {
  [access = 'permissive'] {
    [highway = 'unclassified'],
    [highway = 'residential'],
    [highway = 'footway'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: @permissive-marking;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: @permissive-marking;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'destination'] {
    [highway = 'unclassified'],
    [highway = 'residential'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: @destination-marking;
        line-dasharray: 6,8;
        line-cap: round;
        line-join: round;
        line-opacity: 0.5;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: @destination-marking;
      line-dasharray: 6,8;
      line-cap: round;
      line-join: round;
      line-opacity: 0.5;
      [zoom >= 16] { line-width: 6; }
    }
  }
  [access = 'private'],
  [access = 'no'] {
    [highway != 'service'] {
      [zoom >= 15] {
        line-width: 6;
        line-color: @private-marking;
        line-dasharray: 6,8;
        line-opacity: 0.5;
        line-join: round;
        line-cap: round;
      }
    }
    [highway = 'service'][service = 'INT-normal'][zoom >= 15],
    [highway = 'service'][zoom >= 16] {
      line-width: 3;
      line-color: @private-marking;
      line-dasharray: 6,8;
      line-opacity: 0.5;
      line-join: round;
      line-cap: round;
      [zoom >= 16] { line-width: 6; }
    }
  }
}

#footbikecycle-tunnels {
  [highway = 'bridleway'],
  [highway = 'path'][horse = 'designated'] {
    [zoom >= 13] {
      line-width: 5;
      line-color: @tunnel-casing;
      line-dasharray: 4,2;
      b/line-width: 3;
      b/line-color: @bridleway-casing;
      b/line-cap: round;
      b/line-join: round;
      c/line-width: 2;
      c/line-color: @bridleway-fill;
      c/line-opacity: 0.5;
      c/line-dasharray: 4,2;
      c/line-join: round;
      c/line-cap: round;
    }
  }
}

#tracks-tunnels {
  [zoom >= 14] {
    line-width: 4.5;
    line-color: @tunnel-casing;
    line-dasharray: 4,2;
    b/line-width: 3;
    b/line-color: @track-casing;
    b/line-cap: round;
    b/line-join: round;
    c/line-width: 1.5;
    c/line-color: @track-fill;
    c/line-dasharray: 3,4;
    c/line-opacity: 0.5;
    c/line-join: round;
    c/line-cap: round;
    [tracktype = 'grade1'] {
      line-width: 4;
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-color: @track-grade1-fill;
      c/line-dasharray: 100,0; /* i.e. none, see https://github.com/mapbox/carto/issues/214 */
    }
    [tracktype = 'grade2'] {
      c/line-color: @track-grade2-fill;
    }
    [tracktype = 'grade3'] {
      b/line-width: 3.5;
      c/line-width: 2;
      c/line-dasharray: 100,0; /* yes, weird but true */
    }
    [tracktype = 'grade4'] {
      c/line-width: 2;
      c/line-dasharray: 4,7,1,5;
    }
    [tracktype = 'grade5'] {
      c/line-width: 2;
      c/line-dasharray: 1,5;
    }
  }
}

.bridges {
  ::bridges_casing {
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @motorway-casing;
        line-join: round;
      }
      [zoom >= 13] {
        line-width: 6.5;
        line-color: @bridge-casing;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 17] { line-width: 12; }
    }

    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: @trunk-casing;
        line-join: round;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: @bridge-casing;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-width: 4;
        line-color: @primary-casing;
        line-join: round;
      }
      [zoom >= 13] {
        line-width: 8;
        line-color: @bridge-casing;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'] {
      [zoom >= 13] {
        line-width: 10;
        line-color: @bridge-casing;
        line-join: round;
      }
      [zoom >= 15] { line-width: 12; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'] {
      [zoom >= 14] {
        line-width: 7.5;
        line-color: @bridge-casing;
        line-join: round;
      }
      [zoom >= 15] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'],
    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: @bridge-casing;
        line-join: round;
      }
      [zoom >= 15] { line-width: 9; }
      [zoom >= 16] { line-width: 11; }
      [zoom >= 17] { line-width: 16; }
    }

    [feature = 'highway_service'] {
      [zoom >= 14] {
        line-width: 3;
        line-color: @bridge-casing;
        line-join: round;
      }
      [zoom >= 16] { line-width: 8; }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: 2.2;
        line-color: @bridge-casing;
        line-join: round;
      }
      [zoom >= 14] { line-width: 3.8; }
      [zoom >= 15] { line-width: 7; }
      [zoom >= 16] { line-width: 9.5; }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: @bridge-casing;
        line-join: round;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: @bridge-casing;
        line-join: round;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 5.5;
        line-color: @bridge-casing;
        line-join: round;
      }
    }

    [feature = 'highway_path'][zoom >= 14] {
      line-width: 4;
      line-color: @bridge-casing;
      line-join: round;
    }

    [feature = 'highway_track'][zoom >= 14] {
      line-width: 4.5;
      line-color: @bridge-casing;
      line-join: round;
      [tracktype = 'grade1'] {
        line-width: 5;
      }
    }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 5.5;
        line-color: black;
        line-join: round;
      }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'] {
        [zoom >= 14] {
          line-width: 5.5;
          line-color: #555;
          line-join: round;
        }
      }

      [feature = 'railway_rail'][zoom >= 13] {
        line-width: 6.5;
        line-color: black;
        line-join: round;
      }

    [feature = 'aeroway_runway'][zoom >= 14] {
      line-width: 19;
      line-color: black;
      line-join: round;
    }

    [feature = 'aeroway_taxiway'][zoom >= 14] {
      line-width: 5;
      line-color: black;
      line-join: round;
      [zoom >= 15] { line-width: 7; }
    }
  }

  ::bridges-casing2 {
    [feature = 'highway_bridleway'],
    [feature = 'highway_path'][horse = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: @bridleway-casing;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'][foot = 'designated'] {
      [zoom >= 14] {
        line-width: 4.5;
        line-color: @footway-casing;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_cycleway'],
    [feature = 'highway_path'][bicycle = 'designated'] {
      [zoom >= 14] {
        line-width: 4;
        line-color: @cycleway-casing;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_path'] {
      [zoom >= 14] {
        line-width: 2.5;
        line-color: @path-casing;
        line-join: round;
        line-cap: round;
      }
    }

    [feature = 'highway_track'][zoom >= 14] {
      line-width: 3;
      line-color: @track-casing;
      line-join: round;
      line-cap: round;
      [tracktype = 'grade1'] { line-width: 3.5; }
    }

      [feature = 'railway_rail'][zoom >= 13] {
        line-width: 5;
        line-color: white;
        line-join: round;
      }

      [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
        line-width: 4;
        line-color: white;
        line-join: round;
        line-cap: round;
      }

      [feature = 'railway_disused'],
      [feature = 'railway_abandoned'],
      [feature = 'railway_construction'] {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
          line-cap: round;
        }
      }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 4;
        line-color: white;
      }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'] {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
        }
      }
  }

  ::bridges_fill {
    [feature = 'highway_motorway'],
    [feature = 'highway_motorway_link'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: @motorway-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 13] { line-width: 5.5; }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 17] { line-width: 10; }
    }

    [feature = 'highway_trunk'],
    [feature = 'highway_trunk_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @trunk-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_primary'],
    [feature = 'highway_primary_link'] {
      [zoom >= 12] {
        line-width: 3;
        line-color: @primary-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 13] { line-width: 7; }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_secondary'],
    [feature = 'highway_secondary_link'] {
      [zoom >= 13] {
        line-width: 9;
        line-color: @secondary-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 10.5; }
      [zoom >= 17] { line-width: 14.5; }
    }

    [feature = 'highway_tertiary'],
    [feature = 'highway_tertiary_link'] {
      [zoom >= 14] {
        line-width: 6;
        line-color: @tertiary-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: @road-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 14] {
        line-width: 3.5;
        line-color: @residential-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 15] { line-width: 7.5; }
      [zoom >= 16] { line-width: 9.5; }
      [zoom >= 17] { line-width: 14; }
    }

    [feature = 'highway_service'] {
      [zoom >= 14] {
        line-width: 2;
        line-color: @service-fill;
        line-cap: round;
        line-join: round;
      }
      [zoom >= 16] { line-width: 6; }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 13] {
        line-width: 1.5;
        line-color: @pedestrian-fill;
        line-join: round;
        line-cap: round;
      }
      [zoom >= 14] { line-width: 3; }
      [zoom >= 15] { line-width: 5.5; }
      [zoom >= 16] { line-width: 8; }
    }

      [feature = 'railway_light_rail'],
      [feature = 'railway_narrow_gauge'],
      [feature = 'railway_rail'] {
      [zoom >= 10] {
         line-width: 0.75;
         line-color: @color-railway;
         line-join: round;
         [zoom >= 13] {
            line-width: 1;
         }
         [zoom >= 14] {
            line-width: 1.25;
         }
      }
      }

      [feature = 'railway_subway'][zoom >= 14] {
        line-width: 2;
        line-color: #999;
      }

    [feature = 'aeroway_runway'][zoom >= 14] {
      line-width: 18;
      line-color: @runway-fill;
    }

    [feature = 'aeroway_taxiway'][zoom >= 14] {
      line-width: 4;
      line-color: @taxiway-fill;
      [zoom >= 15] { line-width: 6; }
    }
  }
}

#roads-low-zoom {
  [feature = 'highway_motorway'],
  [feature = 'highway_motorway_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.5;
      line-color: @motorway-fill;
      [zoom >= 7] { line-width: 1; }
      [zoom >= 9] { line-width: 1.4; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_trunk'],
  [feature = 'highway_trunk_link'] {
    [zoom >= 5][zoom < 12] {
      line-width: 0.4;
      line-color: @trunk-fill;
      [zoom >= 7] {
        line-width: 1;
        line-color: @trunk-fill-alternative;
      }
      [zoom >= 9] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_primary'],
  [feature = 'highway_primary_link'] {
    [zoom >= 7][zoom < 12] {
      line-width: 0.5;
      line-color: @primary-fill;
      [zoom >= 9] { line-width: 1.2; }
      [zoom >= 10] { line-width: 2; }
      [zoom >= 11] { line-width: 2.5; }
    }
  }

  [feature = 'highway_secondary'],
  [feature = 'highway_secondary_link'] {
    [zoom >= 9][zoom < 12] {
      line-width: 1;
      line-color: @secondary-fill;
      [zoom >= 11] { line-width: 2; }
    }
  }

    [feature = 'railway_rail'][zoom >= 6][zoom < 13] {
      line-width: 0.6;
      line-color: #aaa;
      [zoom >= 9] { line-width: 1; }
      [zoom >= 10] { line-width: 2; }
      [tunnel = 'yes'] {
        line-dasharray: 5,2;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8][zoom < 13] {
        line-width: 1;
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa }
      }
    }
}

#footway-over-dots{
  [highway = 'footway'],
  [highway = 'bridleway'],
  [highway = 'pedestrian'],
  [highway = 'cycleway'] {
    [zoom >= 13] {
      line-width: 2;
      line-color: @footway-fill;
      line-dasharray: 1,4;
      line-cap: round;
      line-join: round;
    }
  }
}

#trams {
  [railway = 'tram'][zoom >= 13] {
    line-color: @color-tram;
    line-width: 1;
    [zoom >= 15] {
      [bridge = 'yes'] {
        line-width: 5;
        line-color: black;
        b/line-width: 4;
        b/line-color: white;
        c/line-width: 1;
        c/line-color: @color-tram;
      }
    }
  }
}

#guideways {
  [zoom >= 13] {
    line-width: 3;
    line-color: #6666ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#roads-text-name {
  [highway = 'trunk'],
  [highway = 'primary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'secondary'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 8;
      text-fill: black;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 14] {
      text-size: 9;
    }
    [zoom >= 15] {
      text-size: 10;
    }
  }
  [highway = 'tertiary'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 0;
    }
    [zoom >= 17] {
      text-size: 11;
    }
  }
  [highway = 'proposed'],
  [highway = 'construction'] {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
    [zoom >= 16] {
      text-size: 11;
    }
  }
  [highway = 'residential'],
  [highway = 'unclassified'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 8;
      text-spacing: 300;
      text-clip: false;
      text-placement: line;
      text-halo-radius: 1;
      text-face-name: @book-fonts;
    }
    [zoom >= 16] {
      text-size: 9;
    }
    [zoom >= 17] {
      text-size: 11;
      text-spacing: 400;
    }
  }
}
