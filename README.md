# gulp-react-jade

For [jadejs/react-jade](https://github.com/jadejs/react-jade "jadejs/react-jade")

```
npm install @mizchi/gulp-react-jade
```

## Example

```coffee
require 'gulp-react-jade'
gulp.task 'raect-jade', ->
  gulp.src('src/**/*.jade')
    .pipe jade()
    .pipe(gulp.dest('lib'))
```

## CAUTION

https://www.npmjs.com/package/gulp-react-jade is for [duncanbeevers/jade-react](https://github.com/duncanbeevers/jade-react "duncanbeevers/jade-react"))

`npm install gulp-react-jade` target is that one, not me.
