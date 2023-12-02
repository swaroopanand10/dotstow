// set theme
// settings.theme = `
// .sk_theme {
//     font-family: JetBrainsMono NF, Input Sans Condensed, Charcoal, sans-serif;
//     font-size: 10pt;
//     background: #24272e;
//     color: #abb2bf;
// }
// .sk_theme tbody {
//     color: #fff;
// }
// .sk_theme input {
//     color: #d0d0d0;
// }
// .sk_theme .url {
//     color: #61afef;
// }
// .sk_theme .annotation {
//     color: #56b6c2;
// }
// .sk_theme .omnibar_highlight {
//     color: #528bff;
// }
// .sk_theme .omnibar_timestamp {
//     color: #e5c07b;
// }
// .sk_theme .omnibar_visitcount {
//     color: #98c379;
// }
// .sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
//     background: #303030;
// }
// .sk_theme #sk_omnibarSearchResult ul li.focused {
//     background: #3e4452;
// }
// #sk_status, #sk_find {
//     font-size: 20pt;
// }
//
// :root {
//     --theme-ace-bg:#282828ab; /*Note the fourth channel, this adds transparency*/
//     --theme-ace-bg-accent:#3c3836;
//     --theme-ace-fg:#ebdbb2;
//     --theme-ace-fg-accent:#7c6f64;
//     --theme-ace-cursor:#928374;
//     --theme-ace-select:#458588;
// }
// #sk_editor {
//     height: 50% !important; /*Remove this to restore the default editor size*/
//     background: var(--theme-ace-bg) !important;
// }
// .ace_dialog-bottom{
//     border-top: 1px solid var(--theme-ace-bg) !important;
// }
// .ace-chrome .ace_print-margin, .ace_gutter, .ace_gutter-cell, .ace_dialog{
//     background: var(--theme-ace-bg-accent) !important;
// }
// .ace-chrome{
//     color: var(--theme-ace-fg) !important;
// }
// .ace_gutter, .ace_dialog {
//     color: var(--theme-ace-fg-accent) !important;
// }
// .ace_cursor{
//     color: var(--theme-ace-cursor) !important;
// }
// .normal-mode .ace_cursor{
//     background-color: var(--theme-ace-cursor) !important;
//     border: var(--theme-ace-cursor) !important;
// }
// .ace_marker-layer .ace_selection {
//     background: var(--theme-ace-select) !important;
// }`;
// click `Save` button to make above settings to take effect.</ctrl-i></ctrl-y>

/* set theme */
settings.theme = `
:root {
 /* Font */
  --font: 'Source Code Pro', Ubuntu, sans;
  // --font: 'JetBrainsMono Nerd Font', Ubuntu, sans;
  --font-size: 20;
  --font-weight: bold;

// tommorownight theme
 --fg: #C5C8C6;
  --bg: #282A2E;
  --bg-dark: #1D1F21;
  --border: #373b41;
  --main-fg: #81A2BE;
  --accent-fg: #52C196;
  --info-fg: #AC7BBA;
  --select: #585858;

// monokai theme
  // --fg: #F8F8F2;
  // --bg: #272822;
  // --bg-dark: #1D1E19;
  // --border: #2D2E2E;
  // --main-fg: #F92660;
  // --accent-fg: #E6DB74;
  // --info-fg: #A6E22E;
  // --select: #556172;

// doomone theme
 // --fg: #51AFEF;
 //  --bg: #2E3440;
 //  --bg-dark: #21242B;
 //  --border: #2257A0;
 //  --main-fg: #51AFEF;
 //  --accent-fg: #98be65;
 //  --info-fg: #C678DD;
 //  --select: #4C566A;
}
.sk_theme {
// background: var(--bg);
// color: var(--fg);
//   background-color: var(--bg);
//   border-color: var(--border);
//   font-family: var(--font);
//   font-size: var(--font-size);
//   font-weight: var(--font-weight);
    font-family: JetBrainsMono NF, Input Sans Condensed, Charcoal, sans-serif;
    font-size: 10pt;
    font-weight: bold;
    border-color: var(--border);
    // background: #1F1F28;
    background: #191724;
    color: #abb2bf;

}

input {
  font-family: var(--font);
  font-weight: var(--font-weight);
}

.sk_theme tbody {
  color: var(--fg);
}

.sk_theme input {
  color: var(--fg);
}

/* Hints */
#sk_hints .begin {
  color: var(--accent-fg) !important;
}

#sk_tabs .sk_tab {
  // background: var(--bg-dark);
  background: transparent;
  border: 1px solid var(--border);
}

#sk_tabs .sk_tab_title {
  color: var(--fg);
}

#sk_tabs .sk_tab_url {
  color: var(--main-fg);
}

#sk_tabs .sk_tab_hint {
  background: var(--bg);
  border: 1px solid var(--border);
  color: var(--accent-fg);
}

.sk_theme #sk_frame {
  background: var(--bg);
  opacity: 0.2;
  color: var(--accent-fg);
}

/* ---------- Omnibar ---------- */
/* Uncomment this and use settings.omnibarPosition = 'bottom' for Pentadactyl/Tridactyl style bottom bar */
/* .sk_theme#sk_omnibar {
  width: 100%;
  left: 0;
} */

.sk_theme .title {
  color: var(--accent-fg);
}

.sk_theme .url {
  color: var(--main-fg);
}

.sk_theme .annotation {
  color: var(--accent-fg);
}

.sk_theme .omnibar_highlight {
  // color: var(--accent-fg);
  color: #ff0000;
}

.sk_theme .omnibar_timestamp {
  color: var(--info-fg);
}

.sk_theme .omnibar_visitcount {
  color: var(--accent-fg);
}

.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: var(--bg-dark);
}

.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: var(--border);
}

.sk_theme #sk_omnibarSearchArea {
  border-top-color: var(--border);
  border-bottom-color: var(--border);
}

.sk_theme #sk_omnibarSearchArea input,
.sk_theme #sk_omnibarSearchArea span {
  font-size: var(--font-size);
}

.sk_theme .separator {
  color: var(--accent-fg);
}

/* ---------- Popup Notification Banner ---------- */
#sk_banner {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
  background: var(--bg);
  border-color: var(--border);
  color: var(--fg);
  opacity: 0.9;
}

/* ---------- Popup Keys ---------- */
#sk_keystroke {
  background-color: var(--bg);
}

.sk_theme kbd .candidates {
  color: var(--info-fg);
}

.sk_theme span.annotation {
  color: var(--accent-fg);
}

/* ---------- Popup Translation Bubble ---------- */
#sk_bubble {
  background-color: var(--bg) !important;
  color: var(--fg) !important;
  border-color: var(--border) !important;
}

#sk_bubble * {
  color: var(--fg) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(1) {
  border-top-color: var(--border) !important;
  border-bottom-color: var(--border) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(2) {
  border-top-color: var(--bg) !important;
  border-bottom-color: var(--bg) !important;
}

/* ---------- Search ---------- */
#sk_status,
#sk_find {
  font-size: var(--font-size);
  border-color: var(--border);
}

.sk_theme kbd {
  background: var(--bg-dark);
  border-color: var(--border);
  box-shadow: none;
  color: var(--fg);
}

.sk_theme .feature_name span {
  color: var(--main-fg);
}

/* ---------- ACE Editor ---------- */
#sk_editor {
  background: var(--bg-dark) !important;
  height: 50% !important;
  /* Remove this to restore the default editor size */
}

.ace_dialog-bottom {
  border-top: 1px solid var(--bg) !important;
}

.ace-chrome .ace_print-margin,
.ace_gutter,
.ace_gutter-cell,
.ace_dialog {
  background: var(--bg) !important;
}

.ace-chrome {
  color: var(--fg) !important;
}

.ace_gutter,
.ace_dialog {
  color: var(--fg) !important;
}

.ace_cursor {
  color: var(--fg) !important;
}

.normal-mode .ace_cursor {
  background-color: var(--fg) !important;
  border: var(--fg) !important;
  opacity: 0.7 !important;
}

.ace_marker-layer .ace_selection {
  background: var(--select) !important;
}

.ace_editor,
.ace_dialog span,
.ace_dialog input {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
`;
