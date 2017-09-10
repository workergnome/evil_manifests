---
title: Evil IIIF Manifests
---

# Evil IIIF Presentation Manifests

This is a collection of evil IIIF presentation manifests, each one crafted to break IIIF in some interesting way, or to demonstrate something odd that I wanted to try.

These are used for testing  [IIIF Presentation Manifests](http://iiif.io/api/presentation/2.1/).

Manifest Name                               |
--------------------------------------------|-----------
[Base Manifest](/iiif/garden/manifest.json) | This one isn't evil.  It's just here so that we have something to compare the rest of them to.
[Data URI Thumbnails](/iiif/garden/data_uri.json)  | This one has the thumbnails replaced with inline base64 encoded Data URIs.
[Inline HTML](/iiif/garden/inline_html.json) | This one has embedded HTML in the label.
[Inline JS](/iiif/garden/inline_js.json) | This one has embedded javascript in the label.
[Fork Bomb](/iiif/garden/fork.json) | This one has embedded self-referential collections.
[Everything A List](/iiif/garden/everything_a_list.json) | This one expresses everything that can possibly be an array, as an array.
[Incorrect Aspect Ratio](/iiif/garden/scaled.json) | This one has a portrait aspect ratio for the canvas, but tries to put a landscape image into it.




*[Source Available on Github](https://github.com/workergnome/evil_manifests)*