var connect = require('connect');
var port = process.env.PORT || 3000;

connect.createServer(
  connect.logger('short'),
  connect.static(__dirname + '/www')
).listen(port);
