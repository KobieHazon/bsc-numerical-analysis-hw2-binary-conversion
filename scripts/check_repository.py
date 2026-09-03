#!/usr/bin/env python3
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FORBIDDEN = "".join(("208", "234", "161"))


def main() -> None:
    source = ROOT / "src" / "binary_convertor.m"
    text = source.read_text(encoding="utf-8")
    required = ["function str = binary_convertor", "while", "mod", "floor", "endfunction"]
    missing = [marker for marker in required if marker not in text]
    if missing:
        raise SystemExit(f"missing expected MATLAB markers: {missing}")
    for path in ROOT.rglob("*"):
        if ".git" in path.parts or path.is_dir():
            continue
        if path.suffix in {".m", ".md", ".py", ".txt"}:
            if FORBIDDEN in path.read_text(encoding="utf-8", errors="ignore"):
                raise SystemExit(f"forbidden student identifier remains in {path.relative_to(ROOT)}")
    print("validated MATLAB source and privacy scan")


if __name__ == "__main__":
    main()
