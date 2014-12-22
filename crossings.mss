
#crossings[zoom >= 16] {
  point-placement: interior;
  point-transform: 'rotate([angle])';
  point-allow-overlap: true;
  point-ignore-placement: true;

  point-file: url('symbols/SVG/crossing_small.svg');

  [zoom >= 17] {
      point-file: url('symbols/SVG/crossing.svg');
  }
}
