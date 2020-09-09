let slef=this;
var App = {
    play: function () {
        console.log(slef.play());
    },

    init: function () {
        slef.play = Module.mono_bind_static_method("[player] Video.Player:Play");
    }
};
