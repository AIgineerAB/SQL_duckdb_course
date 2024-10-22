# Setup duckdb

In this lecture we'll setup duckdb for the system and for visual studio code. Start by installing duckdb for your system 

[duckdb installation](https://duckdb.org/docs/installation/?version=stable&environment=cli&platform=macos&download_method=package_manager)


## Duckdb in visual studio code
- install sql tools
- install duckdb driver for sql
- remove session in sqltools
- go to settings.json and add these 
  
```json
  "sqltools.autoOpenSessionFiles": false,
  "sqltools.results.reuseTabs": "connection"
```

This disables a session file that opens automatically when connecting to a database and the second prevents sqltools to open new tabs each time you run a selection with cmd+E cmd+E or ctrl+E ctrl+E.

## Other videos 📹

## Read more 👓
