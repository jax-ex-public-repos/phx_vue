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
## End Manual
