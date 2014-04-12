var	path = require('path'),
	fs = require('fs'),

	Sounds = {};

Sounds.get = function(sounds, callback) {
	fs.readdir(__dirname + '/sounds', function(err, files) {
		files.forEach(function(file) {
			sounds.push(__dirname + '/sounds/' + file);
		});

		callback(null, sounds);
	});
};

module.exports = Sounds;