@color-buildings: #fcbcc5;

#buildings {
  [building = 'INT-light'][zoom >= 12] {
    polygon-fill: @color-buildings;
    polygon-opacity: 0.7;
    polygon-clip: false;
  }
  [building != 'INT-light'][building != ''][zoom >= 12] {
    polygon-fill: @color-buildings;
    polygon-opacity: 0.9;
    polygon-clip: false;
    [zoom >= 16] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
  [aeroway = 'terminal'][zoom >= 12]::aeroway {
    polygon-fill: #cc99ff;
    polygon-clip: false;
    [zoom >= 14] {
      line-color: #330066;
      line-width: 0.2;
    }
  }
}
