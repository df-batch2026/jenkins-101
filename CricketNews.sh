
#!/bin/sh

echo "Hello Rakesh! Today is $(date)"
echo ""
echo "========== TOP 5 CRICBUZZ NEWS =========="

API="https://api.opendata-api.com/en/cricbuzz-cricket/news-list.html"

RESPONSE=$(mktemp)
trap 'rm -f "$RESPONSE"' EXIT

HTTP_CODE=$(curl -sSL --max-time 30 \
    -o "$RESPONSE" \
    -w "%{http_code}" \
    "$API")

if [ "$HTTP_CODE" != "200" ]; then
    echo "Unable to fetch news. HTTP: $HTTP_CODE"
    exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
    echo "jq is required. Please install jq."
    exit 1
fi

jq -r '
.storyList
| map(select(.story != null))
| .[:5]
| to_entries[]
| "\(.key + 1). \(.value.story.hline)"
' "$RESPONSE"

echo "========================================="
