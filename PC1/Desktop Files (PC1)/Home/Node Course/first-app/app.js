

const EventEmitter = require('events');
const emitter = new EventEmitter();


emitter.on('messageLogged', (arg) => {
    console.log('called', arg);
});


const log = require('./logger');
log('message');


