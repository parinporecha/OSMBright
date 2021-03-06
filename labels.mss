/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>0][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: .5;
  [zoom=1] {
    text-size:6 + @text_adjust;
    text-wrap-width: 10;
  }
  [zoom=2] {
    text-size:9+ @text_adjust;
    text-wrap-width: 20;
  }
  [zoom=3] {
    text-size:10+ @text_adjust;
    text-wrap-width: 30;
  }
  [zoom=4] {
    text-size:12 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom=4] {
    text-size:13 + @text_adjust;
    text-wrap-width: 60;
  }
  [zoom>4] {
    text-halo-radius: 1;
    text-transform: uppercase;

  }
  [zoom=5] {
    text-size:13 + @text_adjust;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:14 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:16 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=7] {
  text-name:'[name]';
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  text-transform: uppercase;
  text-face-name:@sans; //@sans_bold
  [zoom=5] {
      text-size:11 + @text_adjust;
      text-wrap-width: 40;
      text-character-spacing: 1;
  }
  [zoom=6] {
      text-size:15 + @text_adjust;
      text-wrap-width: 40;
      text-character-spacing: 2;
  }
  [zoom=7] {
      text-size:18 + @text_adjust;
      text-wrap-width: 50;
      text-character-spacing: 3;
  }
}

/* ---- Cities ------------------------------------------------------ */
#place::city[type='city'][zoom>=3]{
  [name='Mumbai'],
  [name='Hyderabad'],
  [name='Chennai'],
  [name='Bengaluru'],
  [name='Delhi'] {
    text-name:'[name]';
    [zoom<=6]{text-face-name:@sans}
    [zoom>6]{text-face-name:@sans_bold;}
    text-placement:point;
    text-fill:@city_text;
    text-halo-fill:@city_halo;
    text-halo-radius:.5;
    text-size: 13 +  @text_adjust;
  }
}
#place::city[type='city'][zoom>=7][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom=7] {
    text-size: 12;
    text-halo-radius:1;
  }
  [zoom=8] {
    text-size: 13;
    text-halo-radius:1;
  }
  [zoom>10]{
    text-transform: uppercase;
  }
  [zoom=9] {
    text-size:14;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:15;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:15;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:14;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:14;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-size:16;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=8][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:10;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  text-min-distance:15;
  [zoom=9] {
    text-size: 11;
  }
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 11;
  }
  [zoom>=11]{ text-size:12; }
  [zoom>=12]{
    text-size:13;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:13;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=15]{
    text-size:15;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=13],
#place::small[type='suburb'][zoom>=12],
#place::small[type='hamlet'][zoom>=12],
#place::small[type='neighbourhood'][zoom>=11] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom=11]{
      text-min-distance: 20;
  }
  [zoom=12]{
      text-min-distance: 30;
  }
  [zoom=13]{
      text-min-distance: 35;
  }
  [zoom>=14] {
    text-min-distance: 40;
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>20600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000],
  [zoom>=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 11;
    text-wrap-width:30;
    text-fill: #888;
    text-halo-fill: #fff;
    text-min-distance: 10;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt_italic;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 10);
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 10);
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 10);
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 10);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 10);
    }
    [type='water'][zoom>=10] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 10);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 15;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 20;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}
   
#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:10;
  text-wrap-width:30;
  text-fill: @poi_text;
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 14;
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=8][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 8;
  shield-face-name: @sans;
  shield-fill: #070808;
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }

  
  [zoom=8] { shield-min-distance: 20; } //50
  [zoom=9] { shield-min-distance: 30; } //50
  [zoom=10] { shield-min-distance: 45; } //50
  [zoom=11] { shield-min-distance: 50; } //50
  [zoom=12] { shield-min-distance: 55; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}

#motorway_label[type='motorway'][zoom>10],
#motorway_label[type='trunk'][zoom>=11] {  //need changes here
  text-name:"[name]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:9;
  [zoom=9] { text-min-distance:50; }
  [zoom=9] { text-min-distance:60; }
  [zoom=10] { text-min-distance:60; }
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}
#mainroad_label[type='primary'][zoom>10],
#mainroad_label[type='secondary'][zoom>=12],
#mainroad_label[type='tertiary'][zoom>14],{  //need changes here
  text-name:"[name]";
  text-face-name:@sans_italic;
  text-placement:line;
  text-opacity:0.6;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:9;
  [zoom=9] { text-min-distance:50; }
  [zoom=9] { text-min-distance:60; }
  [zoom=10] { text-min-distance:60; }
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

//#mainroad_label[zoom>9][zoom<14][reflen<=8]{
   
//  shield-name: "[ref]";
//  shield-size: 8;
//  shield-face-name: @sans;
//  shield-fill: #070808;
//  shield-file: url(img/shield-primary-1.png);
//  [type='primary'] {
//    [reflen=1] { shield-file: url(img/shield-primary-1.png); }
//    [reflen=2] { shield-file: url(img/shield-primary-2.png); }
//    [reflen=3] { shield-file: url(img/shield-primary-3.png); }
//    [reflen=4] { shield-file: url(img/shield-primary-4.png); }
//    [reflen=5] { shield-file: url(img/shield-primary-5.png); }
//    [reflen=6] { shield-file: url(img/shield-primary-6.png); }
//    [reflen=7] { shield-file: url(img/shield-primary-7.png); }
//    [reflen=8] { shield-file: url(img/shield-primary-8.png); }
    
//  }
//  [zoom=10] { shield-min-distance:10; }
//  [zoom=11] { shield-min-distance:40; }
//  [zoom=12] { shield-min-distance:70; }
//  [zoom=13] { shield-min-distance:90; }
//}


#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-opacity:0.8;
  text-placement:line;
  text-size:11;
  text-fill:@road_text;
  text-halo-fill:@road_halo*2;
  text-halo-radius:.5;
  text-min-distance:40;
  text-size:8;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */

#motorway_label[oneway!=0][zoom>=16],
#mainroad_label[oneway!=0][zoom>=16],
#minorroad_label[oneway!=0][zoom>=16] {
  marker-placement:line;
  marker-max-error: 0.5;
  marker-spacing: 200;
  marker-file: url(img/icon/oneway.svg);
  [oneway=-1] { marker-file: url(img/icon/oneway-reverse.svg); }
  [zoom=16] { marker-transform: "scale(0.9)"; }
  [zoom=17] { marker-transform: "scale(1.2)"; }
}


/* ****************************************************************** */
