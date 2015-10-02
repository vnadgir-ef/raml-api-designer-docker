#!/bin/bash
PORT_NUMBER="${$1:-3000}"
docker run  -i -t -p 3000:3000 vnadgir/raml-designer
