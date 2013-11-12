@color_bus_stop_text: #0092DA;
@color_bus_site: #0092DA;
@color_tram_stop_text: #DA1B8A;
@color_tram_site: #DA1B8A;
@color_station_text: black;
@color_halt_text: black;
@color_subway_station_text: #7981B0;
@color_station_disused_text: grey;


.stations {
  [railway = 'subway_entrance'][zoom >= 16] {
    point-file: url('symbols/SVG/subway_entrance.svg');
    point-placement: interior;
    [wheelchair = 'yes'] {
       point-file: url('symbols/SVG/subway_entrance_wheelchair.svg');
    }
  }

  [railway = 'station'][zoom >= 12] {
    point-file: url('symbols/halt.png');
    point-placement: interior;
    [zoom >= 14] {
      point-file: url('symbols/station_small.png');
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: @color_station_text;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
      [transport = 'subway']{
        text-fill: @color_subway_station_text;
      }
      [disused = 'yes'] {
        text-fill: @color_station_disused_text;
      }
    }
    [zoom >= 15] {
      point-file: url('symbols/train_station.png');
      text-size: 11;
      text-dy: -10;
    }

    [disused = 'yes'] {
      point-file: url('symbols/station_disused.png');
    }

    [transport = 'subway']{
      point-allow-overlap: true;
      point-file: url('symbols/SVG/subway_station.svg');
      [zoom >= 12] {
         point-transform: "scale(0.4)";
      }
      [zoom >= 13] {
         point-transform: "scale(1)";
      }
      [zoom >= 15] {
         point-transform: "scale(1.5)";
         text-dy: -12;
      }
      [wheelchair = 'yes'] {
         point-file: url('symbols/SVG/subway_station_wheelchair.svg');
      }
      [disused = 'yes'] {
         point-transform: "scale(1)";
         point-file: url('symbols/subway_station_disused.png');
      }
    }
  }

  [railway = 'halt'],
  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      point-file: url('symbols/halt.png');
    }
    [zoom >= 15] {
      point-file: url('symbols/station_small.png');
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: @color_halt_text;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
      [zoom >= 15] {
        text-size: 10;
        text-dy: -10;
      }
    }
  }

  [railway = 'tram_stop'][zoom >= 14] {
    point-allow-overlap: true;
    point-file: url('symbols/tram_stop.png');
    [zoom >= 15] {
      point-file: url('symbols/tram_stop_small.png');
    }
  }
}

#bus_stops::bus_stops,
#bus_sites::bus_sites,
#tram_sites::tram_sites,
#stations[railway = 'tram_stop'][in_relation = false]::tram_stops{
  .stations[zoom >= 14],
  .tram[zoom >= 14],
  .bus[zoom >= 16] {
    text-allow-overlap: true;
    text-name: "[name]";
    text-fill: @color_tram_stop_text;
    text-face-name: @book-fonts;
    text-size: 8;
    text-halo-radius: 1;
    text-wrap-width: 0;
    text-placement: interior;
    .stations{
      text-dy: -8;
    }
    .stations[zoom >= 15]{
      text-dy: -10;
    }
    #bus_stops{
      text-dy: 6;
    }
    .bus{
      text-fill: @color_bus_stop_text;
      text-face-name: @bold-fonts;
    }
    [zoom >= 16] {
       text-size: 10;
    }
  }
}

#tram_sites_lines::tram,
#bus_sites_lines::bus{
  [zoom >= 16] {
    line-opacity: 0.2;
    line-width: 3;
  .bus {
      line-color: @color_bus_site;
    }
  .tram {
      line-color: @color_tram_site;
    }
  }
}
