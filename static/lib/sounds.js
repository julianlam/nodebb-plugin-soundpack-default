'use strict';

/* globals window, document, $, socket, Audio, ajaxify, config */
$(document).ready(function () {
	var cache = {};

	socket.on('event:new_notification', function () {
		playAudio(config.notificationSound);
	});

	socket.on('event:chats.receive', function () {
		playAudio(config.incomingChatSound);
	});

	$(window).on('action:chat.sent', function () {
		playAudio(config.outgoingChatSound);
	});

	$(window).on('action:ajaxify.end', function () {
		if (ajaxify.data.template['account/settings']) {
			$('.account').find('button[data-action="play"]').on('click', function () {
				var	soundName = $(this).parent().parent().find('select')
					.val();
				playAudio(soundName);
				return false;
			});
		}
	});

	function playAudio(file) {
		if (!file) {
			return;
		}
		var audio = cache[file] || new Audio(
			config.relative_path + '/plugins/nodebb-plugin-soundpack-default/assets/sounds/' + file
		);
		cache[file] = audio;
		audio.pause();
		audio.currentTime = 0;
		try {
			audio.play();
		} catch (err) {
			console.error(err);
		}
	}
});
