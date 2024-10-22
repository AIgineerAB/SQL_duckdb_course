# Setup duckdb


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
