@ferry-route: blue;

#ferry-routes {
  [zoom >= 7] {
    line-color: @ferry-route;
    line-width: 0.4;
    [zoom >= 11] {
      line-width: 0.8;
    }
  }
}
