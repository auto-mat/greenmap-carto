#interpolation {
  [zoom >= 18] {
    line-color: #888;
    line-width: 1;
    line-dasharray: 2,4;
  }
}

#housenumbers {
  [zoom >= 18] {
    text-name: "[addr:housenumber]";
    text-placement: interior;
    text-min-distance: 1;
    text-wrap-width: 0;
    text-face-name: @book-fonts;
    text-fill: #444;
    text-size: 9;
  }
}

#housenames {
  [zoom >= 18] {
    text-name: "[addr:housename]";
    text-placement: interior;
    text-wrap-width: 20;
    text-face-name: @book-fonts;
    text-size: 8;
    text-fill: #444;
    [zoom >= 18] {
      text-size: 9;
    }
  }
}
