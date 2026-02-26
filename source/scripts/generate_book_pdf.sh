#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

OUT_PDF="docs/assets/downloads/amazonface-data-curation-book.pdf"
ARCHIVE_PDF="source/processed/pdf/amazonface-data-curation-book.pdf"
OUT_ODT="source/processed/pdf/amazonface-data-curation-book.odt"
MANIFEST="source/processed/pdf/book-manifest.txt"

BOOK_FILES=(
  "docs/index.md"
  "docs/foundations/01-purpose-and-scope.md"
  "docs/foundations/02-dataset-context-and-taxonomy.md"
  "docs/foundations/03-governance-and-compliance-standards.md"
  "docs/pipeline-standards/04-pipeline-overview-e2e.md"
  "docs/pipeline-standards/05-ingestion-and-validation.md"
  "docs/pipeline-standards/06-annotation-and-labeling-standards.md"
  "docs/pipeline-standards/07-data-cleaning-and-normalization.md"
  "docs/pipeline-standards/08-quality-assurance-and-acceptance-gates.md"
  "docs/operations/09-observability-and-metrics.md"
  "docs/operations/10-release-versioning-and-change-control.md"
  "docs/operations/11-incident-response-and-exception-handling.md"
  "docs/appendices/glossary.md"
  "docs/appendices/checklists.md"
  "docs/appendices/faq.md"
  "docs/appendices/source-traceability.md"
)

mkdir -p "$(dirname "$OUT_PDF")" "$(dirname "$ARCHIVE_PDF")"

for f in "${BOOK_FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing chapter file: $f" >&2
    exit 1
  fi
done

if ! command -v soffice >/dev/null 2>&1; then
  echo "Missing required command: soffice (LibreOffice)" >&2
  exit 1
fi

pandoc \
  --from=gfm \
  --toc \
  --toc-depth=3 \
  --number-sections \
  --metadata title="AmazonFace Data Curation Digital Book" \
  --metadata subtitle="Documentation and standards for dataset curation pipeline" \
  --metadata date="$(date +%Y-%m-%d)" \
  "${BOOK_FILES[@]}" \
  -o "$OUT_ODT"

soffice --headless --convert-to pdf --outdir "$(dirname "$OUT_PDF")" "$OUT_ODT" >/dev/null 2>&1

if [[ ! -f "$OUT_PDF" ]]; then
  echo "PDF conversion failed: $OUT_PDF was not created." >&2
  exit 1
fi

cp "$OUT_PDF" "$ARCHIVE_PDF"
{
  echo "Generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "Output: $OUT_PDF"
  echo "Archive: $ARCHIVE_PDF"
  echo "Intermediate ODT: $OUT_ODT"
  echo "---"
  printf '%s\n' "${BOOK_FILES[@]}"
} > "$MANIFEST"

echo "PDF generated at: $OUT_PDF"
echo "Archive copy: $ARCHIVE_PDF"
