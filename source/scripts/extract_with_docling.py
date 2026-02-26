from __future__ import annotations

import json
from pathlib import Path
from typing import Any

from docling.document_converter import DocumentConverter

ROOT = Path(__file__).resolve().parents[2]
INPUT_DIR = ROOT / "source" / "data"
OUT_DIR = ROOT / "source" / "processed" / "docling"

PDFS = [
    INPUT_DIR / "report01.pdf",
    INPUT_DIR / "report02.pdf",
    INPUT_DIR / "report03.pdf",
]


def export_markdown(doc: Any) -> str:
    for name in ("export_to_markdown", "to_markdown", "export_markdown"):
        fn = getattr(doc, name, None)
        if callable(fn):
            return fn()
    return ""


def export_text(doc: Any) -> str:
    for name in ("export_to_text", "to_text", "text"):
        fn = getattr(doc, name, None)
        if callable(fn):
            return fn()
    return ""


def export_json(doc: Any) -> str:
    for name in ("model_dump_json", "json", "to_json"):
        fn = getattr(doc, name, None)
        if callable(fn):
            try:
                return fn(indent=2)
            except TypeError:
                return fn()
    try:
        return json.dumps(doc.__dict__, indent=2, ensure_ascii=True, default=str)
    except Exception:
        return "{}"


def main() -> None:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    converter = DocumentConverter()

    index: list[dict[str, Any]] = []

    for pdf in PDFS:
        if not pdf.exists():
            raise FileNotFoundError(f"Missing input PDF: {pdf}")

        result = converter.convert(str(pdf))
        doc = result.document

        stem = pdf.stem
        md = export_markdown(doc)
        txt = export_text(doc)
        js = export_json(doc)

        md_path = OUT_DIR / f"{stem}.md"
        txt_path = OUT_DIR / f"{stem}.txt"
        json_path = OUT_DIR / f"{stem}.json"

        md_path.write_text(md, encoding="utf-8")
        txt_path.write_text(txt, encoding="utf-8")
        json_path.write_text(js, encoding="utf-8")

        index.append(
            {
                "source_pdf": str(pdf.relative_to(ROOT)),
                "markdown": str(md_path.relative_to(ROOT)),
                "text": str(txt_path.relative_to(ROOT)),
                "json": str(json_path.relative_to(ROOT)),
                "markdown_chars": len(md),
                "text_chars": len(txt),
                "json_chars": len(js),
            }
        )

    (OUT_DIR / "index.json").write_text(
        json.dumps(index, indent=2, ensure_ascii=True), encoding="utf-8"
    )

    print(f"Extracted {len(index)} reports to {OUT_DIR}")


if __name__ == "__main__":
    main()
