

const EventEmitter = require('events');
const emitter = new EventEmitter();

var url = 'http://mylogger.io/log';

function log(message) {
    console.log(message)
    

    emitter.emit('messageLogged', {id: 1, url: 'http://'});
    

}


module.exports = log;
