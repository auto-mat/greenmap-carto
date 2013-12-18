#buildings {
  [building != ''][zoom >= 12] {
    polygon-fill: @color-buildings;
    polygon-opacity: 0.9;
    polygon-clip: false;
    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
    }
    [amenity = 'public_building'] {
      polygon-fill: @color-public-building;
    }
  }
}
