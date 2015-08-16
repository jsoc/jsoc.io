var gulp     = require('gulp'),
    image    = require('gulp-image'),
    gutil    = require('gulp-util'),
    webpack  = require('webpack'),
    wpserver = require('webpack-dev-server'),
    wpconfig = require('./webpack.config.js'),
    rdir     = require('require-dir'),
    events   = rdir('./events'),
    fs       = require('fs'),
    sortBy   = require('sort-by');

gulp.task('events', function () {
  gutil.log('building events datastore...');
  var list = [];
  Object.keys(events).map(function (key) {
    list.push(events[key]);
  });

  list.sort(sortBy('-date'));

  var json = JSON.stringify({ events: list });
  fs.writeFileSync('src/data.json', json);
  gutil.log('Loaded',list.length,'events');
});

gulp.task('image', function () {
  gulp.src(['src/images/*.png','src/images/icons/*.png'])
    .pipe(image())
    .pipe(gulp.dest('./dist'));
 });

gulp.task('static', ['events'],  function () {
  gulp.src(['src/index.html','src/images/icons/*.{xml,json}','src/data.json'])
    .pipe(gulp.dest('./dist'));
});

gulp.task('webpack', ['static','image'], function (cb) {
  var config = Object.create(wpconfig);
  new wpserver(webpack(config), {
    contentBase:  './dist',
    host:         true,
    inline:       true
  }).listen(8080,'localhost',cb);
});
  

gulp.task('default', ['webpack']);
