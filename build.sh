#!/bin/bash
# Build: concatenate sections into index.html
set -e
cd "$(dirname "$0")"
cat sections/01-head.html \
    sections/02-header.html \
    sections/03-hero.html \
    sections/04-trust.html \
    sections/05-capabilities.html \
    sections/06-industries.html \
    sections/07-whyus.html \
    sections/08-workflow.html \
    sections/09-cases.html \
    sections/10-rfq.html \
    sections/11-footer.html \
    sections/12-scripts.html > index.html

echo "✅ Built index.html — $(wc -l < index.html) lines, $(wc -c < index.html) bytes"
echo "Sections: $(ls sections/*.html | wc -l) files"
