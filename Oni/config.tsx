
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated")

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    //add custom config here, such as
    "ui.colorscheme": "n/a",
    "oni.hideMenu": true,
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
    "ui.fontSmoothing": "auto",
}
