Unified Assets (v0.0.1)
=======================

The unified-assets gem is a small utility for unifying (and minifying) static
javascript and css asset files, either at build time or at run-time.

You declare a list of source files, and the gem will unify and minify them.

The gem also provides a simple rack-based web server that will serve up your
static website files and automatically recreate the unified files if the underlying
source files have been modified.

NOTE
----

This gem is really for my own personal use when building some of my HTML-only games. They
consist of pure client-side html, javascript and css, with no dynamic server back end, but I 
still want to auto-generate unified and minified scripts and styles.

You will almost certainly be better off with more robust tools such as:

 * [sprockets](https://github.com/sstephenson/sprockets) - if you have a ruby/rails back end
 * [gears](https://github.com/gears/gears) - if you have a python back end
 * [mincer](https://github.com/nodeca/mincer) - if you have a node back end

This is just a tiny little gem that works well for my specific purposes and might not be the
best tool for others. Use your own judgement.

Installation
============

    $ gem install unified-assets

Usage
=====

To generate a unified/minified `scripts.js` and `styles.css` add tasks to your Rakefile

    require 'unified_assets/tasks'

    UnifiedAssets::Tasks.new do |t|
      t.minify = true
      t.assets = {

        "scripts.js"  => [
          'js/game/vendor/stats.js',            # https://github.com/mrdoob/stats.js
          'js/game/vendor/sizzle.js',           # http://sizzlejs.com/
          'js/game/vendor/animator.js',         # http://berniesumption.com/software/animator/
          'js/game/vendor/audio-fx.js',         # https://github.com/jakesgordon/javascript-audio-fx
          'js/game/vendor/state-machine.js',    # https://github.com/jakesgordon/javascript-state-machine
          'js/game/base.js',
          'js/game/game.js',
          'js/game/dom.js',
          'js/game/menu.js',
          'js/game/key.js',
          'js/game/math.js',
          'js/game/vector.js',
          'js/snakes.js'
        ],

        "styles.css" => [
          'css/vendor/normalize.css',
          'css/snakes.css'
        ]

      }
    end

Will make 3 rake tasks available to you:

    > rake -T

    rake assets:clear     # clear unified asset files
    rake assets:create    # create unified asset files
    rake assets:server    # simple webserver that auto-regenerates assets if they are out of date

Use `rake assets:create` whenever your source files have changed to recreate the unified/minified versions.

Use `rake assets:server` to run a simple rack-based web server that can serve up your static website
and will automatically regenerate your unified assets if the source files have been changed.

TODO
====

 * command line scripts
 * support templating (e.g. sass, coffeescript, erb)

License
=======

[MIT](http://en.wikipedia.org/wiki/MIT_License) license.

Contact
=======

If you have any ideas, feedback, requests or bug reports, you can reach me at
[jake@codeincomplete.com](mailto:jake@codeincomplete.com), or via
my website: [Code inComplete](http://codeincomplete.com).

