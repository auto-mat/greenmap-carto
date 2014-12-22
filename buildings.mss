#buildings {
  [building != ''][zoom >= 12] {
    polygon-fill: @color-buildings;
    polygon-opacity: 0.9;
    polygon-clip: false;
    [zoom >= 16] {
      line-color: @color-buildings-line;
      line-width: 0.4;
      [amenity = 'public_building'] {
        line-width: 0.5;
      }
    }
    [amenity = 'public_building'] {
      polygon-fill: @color-public-building;
    }
  }
}
