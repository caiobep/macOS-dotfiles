module.exports = {
  config: {

    fontSize: 13,

    fontFamily: 'Space Mono, Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

    cursorColor: 'rgba(248,28,229,0.8)',

    cursorShape: 'BLOCK',

    cursorBlink: true,

    foregroundColor: '#fff',

    backgroundColor: '#000',

    borderColor: '#333',

    css: '',

    termCSS: '',

    showHamburgerMenu: '',

    showWindowControls: '',

    padding: '5px 10px',

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },

    shell: '',

    shellArgs: ['--login'],

    env: {},

    bell: 'SOUND',

    copyOnSelect: true,

    backgroundOpacity: '0.2'

  },

  plugins: [
    "nord-hyper",
    "hyper-tab-icons",
    "hyper-stylesheet",
    "gitrocket",
    "hyper-statusline",
    "hypercwd",
    "hyper-space",
    "hyper-ligatures"
  ],

  localPlugins: []
};
