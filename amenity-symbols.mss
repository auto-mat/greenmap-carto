#tree-rows[zoom >= 16] {
   line-join: round;
   line-cap: round;
   line-color: @tree-row-casing;
   line-dasharray: 1,4;
   line-width: 4;
   b/line-join: round;
   b/line-cap: round;
   b/line-color: @tree;
   b/line-dasharray: 1,4;
   b/line-width: 3;
   [zoom >= 17] {
      line-width: 5;
      line-dasharray: 1,5;
      b/line-width: 4;
      b/line-dasharray: 1,5;
   }
}

.symbols {
  [aeroway = 'airport'][zoom >= 9][zoom < 13]::aeroway {
    [zoom < 11] {
      point-file: url('symbols/airport.p.16.png');
      text-size: 8;
      text-dy: -12;
    }
    text-size: 9;
    text-name: "[name]";
    text-fill: #6692da;
    text-halo-radius: 1;
    text-placement: interior;
    text-face-name: @bold-fonts;
  }

  [aeroway = 'aerodrome'][zoom >= 10][zoom < 13]::aeroway {
    [zoom < 11] {
      point-file: url('symbols/aerodrome.p.16.png');
      text-dy: -12;
    }
    text-name: "[name]";
    text-size: 8;
    text-fill: #6692da;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [natural = 'tree'][zoom >= 16]::natural {
    point-file: url('symbols/tree.png');
    point-ignore-placement: true;
    point-placement: interior;
    [zoom >= 17] {
      point-file: url('symbols/tree2.png');
    }
  }

  [power = 'generator']['generator:source' = 'wind']::power,
  [power = 'generator'][power_source = 'wind']::power,
  [man_made = 'power_wind'] {
    [zoom >= 15] {
      point-file: url('symbols/power_wind.png');
      point-placement: interior;
    }
  }

  [man_made = 'windmill'][zoom >= 16]::man_made {
    point-file: url('symbols/windmill.png');
    point-placement: interior;
  }

  [man_made = 'mast'][zoom >= 17]::man_made {
    point-file: url('symbols/communications.p.20.png');
    point-placement: interior;
  }

  [highway = 'mini_roundabout'][zoom >= 15]::highway {
    point-file: url('symbols/mini_round.png');
    point-placement: interior;
  }

  [highway = 'gate']::highway,
  [barrier = 'gate']::barrier {
    [zoom >= 15] {
      point-file: url('symbols/gate2.png');
      point-placement: interior;
    }
  }

  [barrier = 'lift_gate'][zoom >= 16]::barrier {
    point-file: url('symbols/liftgate.png');
    point-placement: interior;
  }

  [barrier = 'bollard'],
  [barrier = 'block'] {
    [zoom >= 16] {
      point-file: url('symbols/bollard.png');
      point-placement: interior;
    }
  }
}
