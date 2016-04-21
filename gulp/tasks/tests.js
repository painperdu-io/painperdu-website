import mocha from 'gulp-mocha';
import handleErrors from '../utils/handleErrors';

// execute markup task
gulp.task('tests', 'Development testing.', () => {
  return gulp.src(`${cfg.test}/*.js`, { read: false })
    .pipe(mocha({ reporter: 'progress' })) // TODO: VOIR PARAMETRES DE MOCHA
    .on('error', handleErrors);
});
