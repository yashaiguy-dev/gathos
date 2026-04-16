<p align="center">
  <h1 align="center">Gathos</h1>
  <p align="center"><strong>The open-source Gamma alternative that lives inside your AI coding agent.</strong></p>
  <p align="center">One idea in. Stunning presentation out. With AI voiceover.</p>
</p>

<p align="center">
  <a href="#one-line-install">Install in 5 seconds</a> &bull;
  <a href="#how-it-works">How it works</a> &bull;
  <a href="#works-everywhere">Works everywhere</a> &bull;
  <a href="https://gathos.com">Get API keys</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/works_with-Claude_Code-blueviolet?style=flat-square" />
  <img src="https://img.shields.io/badge/works_with-Gemini_CLI-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/works_with-Cursor-green?style=flat-square" />
  <img src="https://img.shields.io/badge/works_with-Windsurf-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/license-MIT-lightgrey?style=flat-square" />
</p>

---

## Why this exists

**Gamma charges $10/month.** Beautiful.ai charges $12/month. Tome charges $20/month. And they all lock you into their editor.

This skill gives you the same output — stunning, visually consistent presentations with AI-generated slides and voiceover — **for free**, running inside tools you already use.

No new app. No subscription. No lock-in. Just type `/idea-to-presentation` and go.

---

## One-line install

```bash
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/install.sh | bash
```

That's it. The installer auto-detects your agent (Claude Code, Gemini CLI, Cursor, Windsurf) and drops the skill in the right place.

### Manual install

<details>
<summary>Claude Code</summary>

```bash
mkdir -p ~/.claude/commands
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o ~/.claude/commands/idea-to-presentation.md
```

Then type: `/idea-to-presentation`

</details>

<details>
<summary>Gemini CLI</summary>

```bash
mkdir -p ~/.gemini/commands
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o ~/.gemini/commands/idea-to-presentation.md
```

Then ask: "Create a presentation about [your idea]"

</details>

<details>
<summary>Cursor</summary>

```bash
mkdir -p .cursor/rules
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o .cursor/rules/idea-to-presentation.md
```

Then ask: "Create a presentation about [your idea]"

</details>

<details>
<summary>Windsurf</summary>

```bash
mkdir -p .windsurf/rules
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o .windsurf/rules/idea-to-presentation.md
```

Then ask: "Create a presentation about [your idea]"

</details>

---

## How it works

```
You: "A presentation about how neural networks learn"

  Step 1  →  Agent asks: tone, audience, visual style, slide count
  Step 2  →  Generates unified design system + narrative outline
  Step 3  →  Expands every slide: image prompts, text, narration
  Step 4  →  Writes structured JSON blueprint
             ↳ FREE — no API key needed

  Step 5  →  Generates slide images via Gathos API
  Step 6  →  Assembles .pptx PowerPoint file
  Step 7  →  Generates voiceover via Gathos TTS
  Step 8  →  Stitches final video with ffmpeg

You get: presentation.pptx + presentation.mp4
```

### What you get at each stage

| Stage | Output | Needs API key? |
|-------|--------|:--------------:|
| Design system + prompts | JSON with color palette, image prompts, narration scripts | No |
| Slide images | AI-generated 16:9 slides as PNG | Yes (Image) |
| PowerPoint | `.pptx` with full-bleed slides + speaker notes | No |
| Voiceover | AI narration in your chosen voice | Yes (TTS) |
| Video | Final `.mp4` with slides + voiceover | No (uses ffmpeg) |

---

## Works everywhere

This is a **single markdown file** — a prompt that tells any AI agent exactly what to do. No SDK. No runtime. No framework.

| Agent | Install location | How to run |
|-------|-----------------|------------|
| **Claude Code** (CLI, Desktop, VS Code, JetBrains) | `~/.claude/commands/` | `/idea-to-presentation` |
| **Gemini CLI** | `~/.gemini/commands/` | Ask naturally |
| **Cursor** | `.cursor/rules/` | Ask naturally |
| **Windsurf** | `.windsurf/rules/` | Ask naturally |
| **Aider** | Paste as system prompt | Ask naturally |
| **Any agent** | Paste the file contents | Ask naturally |

---

## Unlock AI-generated slides + voiceover

Steps 1-4 are **completely free** — you get the full presentation blueprint (design system, image prompts, narration scripts) without any API key. Use them with any image generator or TTS you want.

To unlock **one-click AI slide generation + voiceover**, get your API keys at **[gathos.com](https://gathos.com)**:

```bash
# Add to ~/.zshrc or ~/.bashrc
export GATHOS_IMAGE_API_KEY="your_key_here"
export GATHOS_TTS_API_KEY="your_key_here"
```

**Available voices:** josh, koko, pixxy, prof, rochie, spraky

### Requirements for full pipeline

| Feature | Requirement |
|---------|-------------|
| Design + prompts | Nothing |
| Slide images | `GATHOS_IMAGE_API_KEY` |
| PowerPoint | `pip3 install python-pptx Pillow` |
| Voiceover | `GATHOS_TTS_API_KEY` |
| Video assembly | `ffmpeg` (`brew install ffmpeg` / `apt install ffmpeg`) |

---

## What makes this different

| | Gamma | Beautiful.ai | Tome | **This** |
|---|:---:|:---:|:---:|:---:|
| Price | $10/mo | $12/mo | $20/mo | **Free** |
| Open source | No | No | No | **Yes** |
| Works offline (prompts) | No | No | No | **Yes** |
| Custom visual styles | Limited | Limited | Limited | **Unlimited** |
| Video with voiceover | No | No | No | **Yes** |
| Works in your IDE | No | No | No | **Yes** |
| Agent-agnostic | N/A | N/A | N/A | **Yes** |
| Lock-in | Their editor | Their editor | Their editor | **None** |

---

## Examples

**Input:**
> Idea: "Why most startups fail" | Tone: storytelling | Audience: founders | Style: neon cyberpunk | 10 slides

**Output:**
- Unified design system with consistent colors, typography, and motifs
- 10 detailed image prompts with hex colors, text placement, and continuity
- 10 narration scripts calibrated to slide duration
- `.pptx` with AI-generated slides + speaker notes
- `.mp4` video with AI voiceover

---

## Editing & iteration

The agent handles all of these mid-conversation:

- **"Redo slide 3"** — regenerates just that slide
- **"Change the style to watercolor"** — regenerates all slides with new design system
- **"Add 2 more slides"** — recalculates pacing and expands
- **"Show me the outline first"** — preview before committing

---

## License

MIT — do whatever you want with it.

---

<p align="center">
  <strong>One idea. One command. Presentation done.</strong><br>
  <a href="https://gathos.com">Get Gathos API keys</a> to unlock the full pipeline.
</p>
