# PhxVue

Original Vue tie in came from using article:
<br/>https://medium.com/@yjchen.taiwan/phoenix-1-4-with-vue-on-raspberry-pi-214085a4b003

Setup for a Phoenix application:

```bash
mix deps.get; cd assets; yarn install; cd ..; mix phx.server;
```
Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
```
# mac:     $ open http://localhost:4000
# linux:   $ xdg-open http://localhost:4000
# windows: $ start http://localhost:4000
```

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Want your own vue-cli built with the configuration you intend? see below:

### Implemented using minimal changes 

### Following the directions in [note](*https://github.com/jax-ex-public-repos/phx_vue/blob/d7fcce46054445e8e716f9a64349db7a7a63ec1b/note.md) you can tie in the latest from vue-cli: 
The below documentation is sourced from: [note](https://github.com/jax-ex-public-repos/phx_vue/blob/d7fcce46054445e8e716f9a64349db7a7a63ec1b/note.md)
# begin document note.md

## Note, at the onset a direct replcement rm -rf assets and vue create does not work
<br> becuase of specific files: assets/webpack.config.js assets/js/socket.js assets/js/app.js
```
npm install -g @vue/cli;
vue create assets; cd assets
```
## Begin Automatic

## What need to be  reverted for this change:
```
assets/webpack.config.js
assets/js/socket.js
assets/js/app.js
```

## Automatic 1) Alternative script to put the correct files back:
```
forgetStaged(){ git reset HEAD $1; git checkout $1;}; 
forgetStaged assets/webpack.config.js assets/js/socket.js assets/js/app.js
forgetStaged(){ echo "function has been retired for your safety"; };
```

## Automatic 2) commands to put essential packages back in assets/package.json
```
 cd assets/; yarn add -D webpack-cli; cd ..; mix phx.server;
 cd assets/; yarn add -D uglifyjs-webpack-plugin; cd ..; mix phx.server;
 cd assets/; yarn add -D optimize-css-assets-webpack-plugin; cd ..; mix phx.server;
```

## End Automatic

## Begin Manual 
Manually add the following scripts and dependencies back into assets/package.json
+    "phoenix": "file:../deps/phoenix",
+    "phoenix_html": "file:../deps/phoenix_html",

+    "deploy": "webpack --mode production",
+    "watch": "webpack --mode development --watch",

// note: "..." means leave the rest of packages.
  "scripts": {
    "deploy": "webpack --mode production",
    "watch": "webpack --mode development --watch",
    "..."
  },  
  "dependencies": {
    "phoenix": "file:../deps/phoenix",
    "phoenix_html": "file:../deps/phoenix_html",
    "..."
  },  


# end document note.md

# Other links related to phoenix:

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

