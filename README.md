# Legacy Elasticsearch (DO NOT USE!)

This is a build of a very, very old version of Elasticsearch. If you're looking
to use Elasticsearch, go to the [official Elasticsearch site](https://elastic.co) instead.

You can run this by doing:
```
docker run -d -p 9200:9200 -v $(pwd)/data:/elasticsearch/data madsen/legacy-elasticsearch
```

... or similar with Docker Compose and the likes.

