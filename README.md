# Docker hledger

A docker image for [hledger](http://hledger.org/), the plain text accounting software.

This image provides both hledger and hledger-web.

## hledger-web

Web interface for hledger.

### Usage

```
docker run -d -v "$HOME/hledger-data:/data" -p 5000:5000 jeko/hledger
```

This will expose hledger-web on port 5000. Using data from file `$HOME/hledger-data/hledger.journal`.

### Environment variables

 * `HLEDGER_JOURNAL_FILE`
   * input file (default: /data/hledger.journal)
 * `HLEDGER_PORT`
   * set the tcp port (default: 5000)
 * `HLEDGER_DEBUG`
   * debug output (default: 1, increase for more)
 * `HLEDGER_BASE_URL`
   * set the base url (default: http://localhost:PORT)
 * `HLEDGER_FILE_URL`
   * set the static files url (default: BASEURL/static)
 * `HLEDGER_RULES_FILE`
   * CSV conversion rules file (default: /data/hledger.rules)

## hledger cli

Command-line interface for hledger.

### Usage

```
docker run --rm -v "$HOME/hledger-data:/data" jeko/hledger hledger -f /data/hledger.journal stats
```

