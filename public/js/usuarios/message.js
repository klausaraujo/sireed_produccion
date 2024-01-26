var uuidSent = "";
var nameSent = "";
var conversation;
var ordenNumber = 0;
$(document).ready(function () {
    var labelMensaje = $('.label__mensaje');
    conversation = $('.conversation');

    init();

    suscribeChannel(listaDetalle);

    $('.list__content li').click(async function () {
        $(this).parent('ul').find('li').removeClass('active');
        $(this).addClass('active');
        uuidSent = $(this).data('id');

        conversation.html('<div class="messages messages--received"></div><div class="messages messages--sent"></div>')
        nameSent = $(this).data('nombre');
        labelMensaje.text(nameSent);

        var sentMessage = await pubnubUtil.history({ channel: `channel-${uuid}-${uuidSent}`, count: 100 });
        var receivedMessage = await pubnubUtil.history({ channel: `channel-${uuidSent}-${uuid}`, count: 100 });
        var messageData = []
        sentMessage.messages.forEach(item => {
            const { entry: { msg = "", orden } } = item;
            if (orden) {
                messageData[orden] = { message: msg, user: uuidSent }
                ordenNumber = orden;
            }
        })
        receivedMessage.messages.forEach(item => {
            const { entry: { msg = "", orden } } = item;
            if (orden) {
                messageData[orden] = { message: msg, user: uuid }
                ordenNumber = (ordenNumber > orden) ? ordenNumber : orden;
            }
        })

        messageData = messageData.filter(Boolean);
        ordenNumber++;
        messageData.forEach(item => {
            const { user, message } = item;
            const className = (user == uuid) ? 'sent' : 'received';
            conversation.append($('<div/>')
                .addClass(`messages messages--${className}`));
            var messageLast = $(`.messages--${className}:last-child`);
            messageLast.append($('<div/>')
                .addClass('message')
                .text(message));
        })

        $(".chat__content").removeClass("hidden");
        $(".chat__content--empty").addClass("hidden");

        // }
    });

});

function suscribeChannel(data = []) {
    var channels = data.map((item) => {
        return `channel-${uuid}-${item.Guid}`;
    });

    pubnubUtil.subscribe({
        channels
    });
}

function sendMessage(inputMessage) {
    pubnubUtil.publish(
        {
            message: {
                msg: inputMessage,
                orden: ordenNumber
            },
            channel: `channel-${uuidSent}-${uuid}`
        },
        function (status, response) {
            if (status.error) {
                console.log(status)
            } else {
                ordenNumber++;
                console.log("message Published w/ timetoken", response.timetoken)
            }
        }
    );
    pubnubUtil.publish(
        {
            message: {
                msg: inputMessage,
                user: nameSent
            },
            channel: `channel-${uuidSent}`
        },
        function (status, response) {
            if (status.error) {
                console.log(status)
            } else {
                console.log("message Published w/ timetoken", response.timetoken)
            }
        }
    );
}


function init() {
    "use strict";
    //elements
    var lastSentMessages = $('.messages--sent:last-child');
    var textbar = $('.text-bar__field input');
    var textForm = $('#form-message');
    var thumber = $('.text-bar__thumb');

    var scrollTop = $(window).scrollTop();


    pubnubUtil.addListener({
        message: function (message) {
            const { message: { msg = "", orden = 0 }, channel } = message;
            if (channel == `channel-${uuid}-${uuidSent}`) {
                ordenNumber = orden + 1;
                conversation.append($('<div/>')
                    .addClass('messages messages--received'));
                var lastSentMessagesReceived = $('.messages--received:last-child');
                lastSentMessagesReceived.append($('<div/>')
                    .addClass('message')
                    .text(msg));
            } else {
                var userIdSent = channel.split(uuid);
                console.log($(`mensajes-channel${userIdSent[1]}`))
                $(`.mensajes-channel${userIdSent[1]}`).removeClass("hidden");
            }
        }
    })

    var Message = {
        currentText: "test",
        init: function () {
            var base = this;
            base.send();
        },
        send: function () {
            var base = this;
            thumber.on("mousedown", function () {
                event.preventDefault();
                base.createGroup();
                base.saveText();
                if (base.currentText != '') {
                    base.createMessage();
                    base.scrollDown();
                }
            });
            textForm.submit(function (event) {
                event.preventDefault();
                base.createGroup();
                base.saveText();
                if (base.currentText != '') {
                    base.createMessage();
                    base.scrollDown();
                }
            });
        },
        saveText: function () {
            var base = this;
            base.currentText = textbar.val();
            textbar.val('');
        },
        createMessage: function () {
            var base = this;
            sendMessage(base.currentText)
            lastSentMessages.append($('<div/>')
                .addClass('message')
                .text(base.currentText));
        },
        createGroup: function () {
            // if($('.messages:last-child').hasClass('messages--received')){
            conversation.append($('<div/>')
                .addClass('messages messages--sent'));
            lastSentMessages = $('.messages--sent:last-child');
            // }
        },
        scrollDown: function () {
            var base = this;
            //conversation.scrollTop(conversation[0].scrollHeight);
            conversation.stop().animate({
                scrollTop: conversation[0].scrollHeight
            }, 500);
        }
    };

    // var Thumb = {
    // 	init: function(){
    // 		var base = this;
    // 		base.send();
    // 	},
    // 	send: function(){
    // 		var base = this;
    // 		thumber.on("mousedown", function(){
    // 			Message.createGroup();
    //             base.create();
    // 			base.expand();
    // 		});
    // 	},
    // 	expand: function(){
    // 		var base = this;
    // 		var thisThumb = lastSentMessages.find('.message:last-child');
    // 		var size = 20;

    // 		var expandInterval = setInterval(function(){ expandTimer() }, 30);

    // 		function stopExpand(){
    // 			base.stopWiggle();
    // 			clearInterval(expandInterval);
    // 		}

    // 		var firstExpand = false;
    // 		function expandTimer() {

    // 			if(size >= 130){
    // 				stopExpand();
    // 				base.remove();
    // 			}
    // 			else{
    // 				if(size>50){
    // 					size += 2;
    // 					thisThumb.removeClass('anim-wiggle');
    // 					thisThumb.addClass('anim-wiggle-2');
    // 				}
    // 				else{
    // 					size += 1;
    // 					thisThumb.addClass()
    // 				}
    // 				thisThumb.width(size);
    // 				thisThumb.height(size);
    // 				if(firstExpand){
    // 					conversation.scrollTop(conversation[0].scrollHeight);
    // 				}
    // 				else{
    // 					Message.scrollDown();
    // 					firstExpand = true;
    // 				}
    // 			}
    // 		}

    // 		thumber.on("mouseup", function(){
    // 			stopExpand();
    // 		});
    // 	},
    // 	create: function(){
    // 		lastSentMessages.append(
    // 			$('<div/>').addClass('message message--thumb thumb anim-wiggle')
    // 		);
    // 	},
    // 	remove: function(){
    // 		lastSentMessages.find('.message:last-child').animate({
    // 			width: 0,
    // 			height: 0
    // 		}, 300);
    // 		setTimeout(function(){
    // 			lastSentMessages.find('.message:last-child').remove();
    // 		}, 300);
    // 	},
    // 	stopWiggle: function(){
    // 		lastSentMessages.find('.message').removeClass('anim-wiggle');
    // 		lastSentMessages.find('.message').removeClass('anim-wiggle-2');
    // 	}

    // }


    var newMessage = Object.create(Message);
    newMessage.init();

    // var newThumb = Object.create(Thumb);
    // newThumb.init();

}