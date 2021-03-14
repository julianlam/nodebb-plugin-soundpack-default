
{{{ if config.disableChat }}}
    asdasdashdjakshdas
{{{ end }}}
<label for="notification">[[sounds:notification-sound]]</label>
<div class="row">
    <div class="form-group col-xs-9">
        <select class="form-control" id="notification" name="notification" data-property="notificationSound">
            <option value="">[[sounds:no-sound]]</option>
            {{{each notificationSound}}}
            <option value="{notificationSound.value}" <!-- IF notificationSound.selected -->selected<!-- ENDIF notificationSound.selected -->>{notificationSound.name}</option>
            {{{end}}}
        </select>
    </div>
    <div class="btn-group col-xs-3">
        <button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
    </div>
</div>

{{{ if !config.disableChat }}}
<label for="chat-incoming">[[sounds:incoming-message-sound]]</label>
<div class="row">
    <div class="form-group col-xs-9">
        <select class="form-control" id="chat-incoming" name="chat-incoming" data-property="incomingChatSound">
            <option value="">[[sounds:no-sound]]</option>
            {{{each incomingChatSound}}}
            <option value="{incomingChatSound.value}" <!-- IF incomingChatSound.selected -->selected<!-- ENDIF incomingChatSound.selected -->>{incomingChatSound.name}</option>
            {{{end}}}
        </select>
    </div>
    <div class="btn-group col-xs-3">
        <button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
    </div>
</div>

<label for="chat-outgoing">[[sounds:outgoing-message-sound]]</label>
<div class="row">
    <div class="form-group col-xs-9">
        <select class="form-control" id="chat-outgoing" name="chat-outgoing" data-property="outgoingChatSound">
            <option value="">[[sounds:no-sound]]</option>
            {{{each outgoingChatSound}}}
            <option value="{outgoingChatSound.value}" <!-- IF outgoingChatSound.selected -->selected<!-- ENDIF outgoingChatSound.selected -->>{outgoingChatSound.name}</option>
            {{{end}}}
        </select>
    </div>
    <div class="btn-group col-xs-3">
        <button type="button" class="form-control btn btn-sm btn-default" data-action="play"><span class="hidden-xs">[[global:play]] </span><i class="fa fa-play"></i></button>
    </div>
</div>
{{{ end }}}