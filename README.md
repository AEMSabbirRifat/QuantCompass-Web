# QuantCompass Web

**Guided, academically sound statistics for students, in your browser. No installation, and your data never leaves your device.**

QuantCompass Web will run the same validated R engine as [QuantCompass Local](https://github.com/AEMSabbirRifat/QuantCompass-Local) directly in the browser (R compiled to WebAssembly via [webR](https://docs.r-wasm.org/webr/latest/)), hosted free on GitHub Pages. Upload a CSV or Excel file, answer a few questions about your hypotheses, and get valid tests, thesis-ready results and the exact R script for your appendix.

**Status: v0.1, Stage 1.** The statistical engine, 13 templates and the validation suite are in this repo (mirrored from QuantCompass Local). The browser interface is the next stage; see [ROADMAP.md](ROADMAP.md). Until then, use [QuantCompass Local](https://github.com/AEMSabbirRifat/QuantCompass-Local).

## How it will work

1. **Upload**: CSV or Excel; if the workbook has several sheets, you pick one from previews.
2. **Check**: the data is profiled in your browser (types, missing-value codes, decimal commas, item batteries).
3. **Questions**: purpose, research question, hypotheses.
4. **Suggestions**: for each hypothesis, the columns and the valid tests, or a clear "not possible, here's why and what to do instead".
5. **Results**: APA-style sentences, effect sizes, assumption checks, charts, and the exact script that ran.
6. **Explain** (optional AI, your own key): plain language, formula and a real-life example, cited from open textbooks.

## Privacy and AI keys

- All statistics run locally in your browser tab; files are never uploaded to a server.
- AI is optional. You can paste your **own** key (Gemini, Mistral, Claude, OpenAI-compatible, or a local Ollama model). It is kept only in your browser session, and only summaries are sent, never raw data.

## For developers

The engine lives in `engine/` and `templates/` and is developed in QuantCompass Local. Sync it with `bash scripts/sync-engine.sh`, then validate with `Rscript validation/run_validation.R`.

## License

Code: GPL-3.0. Explanatory content (from Stage 4): CC BY-SA 4.0.

Made by [Sabbir Rifat](https://github.com/AEMSabbirRifat).
