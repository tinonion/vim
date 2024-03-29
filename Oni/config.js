"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    //add custom config here, such as
    "ui.colorscheme": "n/a",
    "tabs.mode": "native",
    "sidebar.enabled": false,
    "sidebar.default.open": false,
    "oni.useDefaultConfig": false,
    //"oni.bookmarks": ["~/Documents"],
    "oni.loadInitVim": true,
    "editor.fontSize": "16px",
    "editor.fontFamily": "Source Code Pro",
    "commandline.mode": false,
    "achievements.enabled": false,
    "experimental.vcs.sidebar": true,
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto"
};
