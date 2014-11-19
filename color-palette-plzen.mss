@voda: #62767F;
@hodnotna-zelen: #80A372;
@doplnkova-zelen: #ABC491;
@nepristupna-zelen: #dde7d2;
@lesy: #bac191;
@prostupna-krajina: #e0e0af;
@neprostupna-krajina: #f4f2d7;
@verejna-budova: #7c7c7c;
@hodnotne-prostranstvi: #c2aed1;
@verejne-pristupny-prostor: #F0E8F7;
@verejne-pristupny-prostor-linka: #333333;
@zeleznice: #7c7c7c;
@industrialni: #d3d3d3;
@domy: #b3b3b3;
@nepristupny-prostor: #F2F2F2;
@verejna-doprava: #9B466D;


@forest: @lesy;
@cemetery: @doplnkova-zelen;
@scrub: @doplnkova-zelen;
@orchard: @doplnkova-zelen;
@vineyard: @doplnkova-zelen;
@village-green: @doplnkova-zelen;
@allotments: @doplnkova-zelen;
@grass: @prostupna-krajina;
@field: @prostupna-krajina;
@garden: @doplnkova-zelen;
@park: @hodnotna-zelen;
@orchard: @doplnkova-zelen;
@scrub: @doplnkova-zelen;
@zoo: @doplnkova-zelen;

@industrial: @industrialni;

// mapování Plzeňského stylu
@water-color: @voda;
@color-buildings: @domy;
@color-tram: @verejna-doprava;
@color-railway: @zeleznice;
@color-public-building: @verejna-budova;
@pedestrian-fill: @hodnotne-prostranstvi;
@living-street-fill: @hodnotne-prostranstvi;
@land-color: @verejne-pristupny-prostor;
@default-casing: @verejne-pristupny-prostor-linka;

@motorway-fill: @verejne-pristupny-prostor;
@trunk-fill: @verejne-pristupny-prostor;
@trunk-fill-alternative: @verejne-pristupny-prostor;
@primary-fill: @verejne-pristupny-prostor;
@secondary-fill: @verejne-pristupny-prostor;
@tertiary-fill: @verejne-pristupny-prostor;
@residential-fill: @verejne-pristupny-prostor;
@service-fill: @verejne-pristupny-prostor;
@road-fill: @verejne-pristupny-prostor;
@path-fill: white;
@footway-fill: white;
@steps-fill: @verejne-pristupny-prostor;
@bridleway-fill: white;
@track-fill: white;
@track-grade1-fill: white;
@track-grade2-fill: white;

@roads-text: black;
@island-text: black;
@placenames-text: black;
@area-text: black;


@motorway-width-z12: 2;
@trunk-width-z12: 2;
@primary-width-z12: 2;
@secondary-width-z12: 2;

@motorway-width-z13: 2;
@trunk-width-z13: 2;
@primary-width-z13: 2;
@secondary-width-z13: 2;
@tertiary-width-z13: 2;
@residential-width-z13: 2;

@tertiary-width-z14: 3;
@residential-width-z14: 3;

@motorway-width-z15: 6.55;
@trunk-width-z15: 6.5;
@primary-width-z15: 6.5;
@secondary-width-z15: 6.5;
@tertiary-width-z15: 6.5;
@residential-width-z15: 6.5;

@residential-width-z16: 9.4;

@motorway-width-z17: 13; // shouldn't be narrower than trunk!
@trunk-width-z17: 13;
@primary-width-z17: 13;
@secondary-width-z17: 13;
@tertiary-width-z17: 13;
@residential-width-z17: 13;


@tertiary-casing-width-z13: 1;
@tertiary-casing-width-z14: 1;
@tertiary-casing-width-z15: 1;
@tertiary-casing-width-z17: 1;

@residential-casing-width-z15: 1;
@residential-casing-width-z16: 1;
@residential-casing-width-z17: 1;

@motorway-casing-width-z12: 1;
@motorway-casing-width-z13: 1;
@motorway-casing-width-z15: 1;
@motorway-casing-width-z17: 1;

@trunk-casing-width-z12: 1;
@trunk-casing-width-z13: 1;
@trunk-casing-width-z15: 1;
@trunk-casing-width-z17: 1;

@primary-casing-width-z12: 1;
@primary-casing-width-z13: 1;
@primary-casing-width-z15: 1;
@primary-casing-width-z17: 1;

@secondary-casing-width-z12: 1;
@secondary-casing-width-z13: 1;
@secondary-casing-width-z15: 1;
@secondary-casing-width-z17: 1;

@residential-casing-width-z14: 1;
@residential-casing-width-z15: 1;
@residential-casing-width-z16: 1;
@residential-casing-width-z17: 1;

@highway-line-cap: square;

@service-dasharray: 0;
@residential-casing-dasharray: 0;
@cemetery-symbol-opacity: 0;
@orchard-symbol-opacity: 0;
@vineyard-symbol-opacity: 0;
@scrub-symbol-opacity: 0;
@forest-symbol-opacity: 0;
@zoo-symbol-opacity: 0;
@opacity-pattern-paid-access: 0;
@opacity-pattern-no-access: 0;

#crossings[zoom >= 16] {
  point-placement: interior;
  point-transform: 'rotate([angle])';
  point-allow-overlap: true;
  point-ignore-placement: true;

  point-file: url('symbols/SVG/crossing_small_plzen.svg');

  [zoom >= 17] {
      point-file: url('symbols/SVG/crossing_plzen.svg');
  }
}
