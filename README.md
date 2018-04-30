# Prometheus Alertmanager in a Container

Source code for [hiveco/alertmanager](https://hub.docker.com/r/hiveco/alertmanager). This image is designed to be an extremely thin wrapper around the official `prom/alertmanager` image, providing support for supplying command line arguments in environment variables. See [#504](https://github.com/prometheus/alertmanager/issues/504) for details on why the Prometheus authors chose not to include this functionality in the official image.

Environment variables given to `docker run` that are prefixed with `ALERTMGR_` are converted into command line arguments to Alertmanager. Underscores are converted to periods and double-underscores to dashes.

Examples:

* To set `--log.level=error`, add the option `-e ALERTMGR_LOG_LEVEL=error`
* To set `--web.external-url=http://localhost:9093`, add the option `-e ALERTMGR_WEB_EXTERNAL__URL=http://localhost:9093`.

See also [hiveco/prometheus](https://hub.docker.com/r/hiveco/prometheus), the Prometheus sister image to this one.

> Another project by [Hive Collective](http://hivecollective.co). *DevOps-on-Demand, so you can focus on shipping features.*
