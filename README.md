<p align="center">
  <h1 align="center">Gathos</h1>
  <p align="center"><strong>Open-source Gamma alternative. Plug into any AI agent.<br>Turn ideas into stunning presentations — with video and voiceover.</strong></p>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/works_with-Claude_Code-blueviolet?style=for-the-badge" />
  <img src="https://img.shields.io/badge/works_with-Gemini_CLI-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/works_with-Cursor-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/works_with-Windsurf-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/works_with-Any_Agent-black?style=for-the-badge" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-lightgrey?style=flat-square" />
  <img src="https://img.shields.io/badge/price-free-brightgreen?style=flat-square" />
  <img src="https://img.shields.io/badge/skills-agent_agnostic-blue?style=flat-square" />
</p>

---

## The problem

You have an idea. You need a presentation. So you either:

- Spend **2 hours** fighting PowerPoint templates
- Pay **$10-20/month** for Gamma, Beautiful.ai, or Tome — and stay locked in their editor
- Use ChatGPT to generate bullet points, then still design everything yourself

**None of these give you a finished presentation with AI-generated visuals and voiceover.**

## The solution

```bash
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/install.sh | bash
```

One command. Gathos drops into your AI agent. Then:

```
You: "Create a presentation about why most startups fail"
```

Your agent handles everything — design system, slide images, narration, PowerPoint, video. You get a `.pptx` and an `.mp4`. Done.

---

## What Gathos actually does

Gathos is a **skill** — a single file that turns any AI coding agent into a full presentation studio.

It plugs into the agent you already use. No new app. No new subscription. No new workflow.

```
Your idea
    ↓
Your AI agent + Gathos skill
    ↓
Unified design system (colors, typography, motifs)
    ↓
AI-generated slide images (16:9, visually consistent)
    ↓
Narration scripts (calibrated to timing)
    ↓
.pptx PowerPoint file
    ↓
.mp4 video with AI voiceover
```

### Works with every agent

| Agent | How to install | How to use |
|-------|---------------|------------|
| **Claude Code** (CLI, Desktop, VS Code, JetBrains) | `~/.claude/commands/` | `/idea-to-presentation` |
| **Gemini CLI** | `~/.gemini/commands/` | Ask naturally |
| **Cursor** | `.cursor/rules/` | Ask naturally |
| **Windsurf** | `.windsurf/rules/` | Ask naturally |
| **Aider** | Paste as system prompt | Ask naturally |
| **Copilot** | Add as context file | Ask naturally |
| **Any agent that can run shell commands** | Drop the file in | Ask naturally |

It's a `.md` file. If your agent can read a file and run `curl` + `python3`, it works.

---

## Use cases

### YouTube creators
Generate visually stunning presentation videos for explainers, tutorials, and faceless content. Pick a voice. Get an `.mp4`. Upload.

### Founders & startups
Pitch decks in minutes, not days. Consistent design system across every slide. Iterate by talking to your agent: *"Make slide 3 more impactful"* — done.

### Educators & students
Turn any topic into a visual lecture. The agent builds narrative arcs, diagrams, and narration scripts calibrated to timing. Works for classroom presentations or online courses.

### Developers & technical talks
Conference talks, internal demos, architecture overviews. The skill adapts — educational content gets diagrams and code snippets, technical content gets flowcharts and annotated layouts.

### Content creators
Blog post to presentation. Thread to slides. Idea to video. Any visual style — minimalist flat, neon cyberpunk, watercolor, crayon sketch, corporate clean. You describe it, the agent builds it.

---

## Why Gathos vs. the rest

| | Gamma | Beautiful.ai | Tome | **Gathos** |
|---|:---:|:---:|:---:|:---:|
| Price | $10/mo | $12/mo | $20/mo | **Free** |
| Open source | No | No | No | **Yes** |
| Video with voiceover | No | No | No | **Yes** |
| Works in your IDE/terminal | No | No | No | **Yes** |
| Any visual style | Limited presets | Limited presets | Limited presets | **Unlimited** |
| Agent-agnostic | N/A | N/A | N/A | **Yes** |
| Presentation + video | Slides only | Slides only | Slides only | **.pptx + .mp4** |
| Lock-in | Their editor | Their editor | Their editor | **None** |
| Iterate with AI | Basic | Basic | Basic | **Full conversation** |

---

## Install

### One command (recommended)

```bash
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/install.sh | bash
```

Auto-detects your agent and installs the skill in the right place.

### Manual install

<details>
<summary><strong>Claude Code</strong></summary>

```bash
mkdir -p ~/.claude/commands
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o ~/.claude/commands/idea-to-presentation.md
```
Then type: `/idea-to-presentation`
</details>

<details>
<summary><strong>Gemini CLI</strong></summary>

```bash
mkdir -p ~/.gemini/commands
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o ~/.gemini/commands/idea-to-presentation.md
```
Then ask: *"Create a presentation about [your idea]"*
</details>

<details>
<summary><strong>Cursor</strong></summary>

```bash
mkdir -p .cursor/rules
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o .cursor/rules/idea-to-presentation.md
```
Then ask: *"Create a presentation about [your idea]"*
</details>

<details>
<summary><strong>Windsurf</strong></summary>

```bash
mkdir -p .windsurf/rules
curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/idea-to-presentation.md \
  -o .windsurf/rules/idea-to-presentation.md
```
Then ask: *"Create a presentation about [your idea]"*
</details>

<details>
<summary><strong>Any other agent</strong></summary>

Download `idea-to-presentation.md` and either:
- Add it to your agent's system prompt / rules directory
- Paste the contents as context at the start of your conversation

The skill is self-contained — it tells the agent exactly what to do.
</details>

---

## Connect Gathos APIs (optional)

**Steps 1-4 are completely free.** Without any API key, you get:
- Unified design system (colors, typography, mood)
- Detailed image prompts for every slide
- On-screen text with exact placement
- Narration scripts calibrated to timing
- Structured JSON you can feed into ANY image generator or TTS

**To unlock one-click AI slide generation + voiceover**, get your API keys at **[gathos.com](https://gathos.com)**:

```bash
# Add to your shell profile (~/.zshrc or ~/.bashrc)
export GATHOS_IMAGE_API_KEY="your_key_here"
export GATHOS_TTS_API_KEY="your_key_here"
```

That's it. Your agent now generates slide images and voiceover automatically.

**Available TTS voices:** josh, koko, pixxy, prof, rochie, spraky

### What each key unlocks

| What you get | API key needed? |
|---|:---:|
| Design system + image prompts + narration scripts | No — free |
| AI-generated slide images (16:9 PNG) | `GATHOS_IMAGE_API_KEY` |
| PowerPoint `.pptx` assembly | No — free (needs `python-pptx`) |
| AI voiceover in your chosen voice | `GATHOS_TTS_API_KEY` |
| Video `.mp4` assembly | No — free (needs `ffmpeg`) |

### System requirements (for full pipeline)

```bash
pip3 install python-pptx Pillow    # PowerPoint assembly
brew install ffmpeg                 # Video assembly (Mac)
# or: sudo apt install ffmpeg       # Video assembly (Linux)
```

---

## How it works under the hood

```
You give an idea
      │
      ▼
┌─────────────────────────────┐
│  Step 1: Collect inputs      │  Idea, tone, audience, visual style, slide count
│  Step 2: Design system       │  Color palette, motifs, typography, narrative arc
│  Step 3: Expand slides       │  Image prompts, on-screen text, narration for every slide
│  Step 4: Write JSON          │  Structured blueprint saved to disk
└─────────────┬───────────────┘
              │  FREE — no API key needed
              ▼
┌─────────────────────────────┐
│  Step 5: Generate images     │  Gathos Image API → 16:9 slide PNGs
│  Step 6: Assemble .pptx      │  Full-bleed slides + speaker notes
│  Step 7: Generate voiceover  │  Gathos TTS API → narration audio
│  Step 8: Assemble .mp4       │  ffmpeg → final video with voiceover
└─────────────────────────────┘
              │
              ▼
        .pptx + .mp4
```

Every slide gets:
- **Image prompt** — 4-8 sentences with hex colors, text placement, style details, visual continuity
- **On-screen text** — headlines, stats, bullet points, callouts, code snippets, footnotes
- **Narration** — voiceover script at ~3 words/second, matching the tone, never just reading the slide

The agent maintains visual continuity across all slides — same color palette, recurring motifs, narrative flow from opening hook to closing statement.

---

## Editing & iteration

Talk to your agent to refine:

- **"Redo slide 3"** — regenerates just that slide, keeps everything else
- **"Change the style to watercolor"** — new design system, all slides regenerated
- **"Add 2 more slides about the competition"** — recalculates pacing, expands
- **"Make it more hype"** — adjusts tone across narration
- **"Show me the outline first"** — preview the structure before committing

This is the advantage of living inside your agent — iteration is a conversation, not a UI.

---

## License

MIT — use it, fork it, ship it, sell it. Do whatever you want.

---

<p align="center">
  <strong>One idea. One command. Stunning presentation.</strong><br><br>
  <code>curl -sL https://raw.githubusercontent.com/yashaiguy-dev/gathos/main/install.sh | bash</code><br><br>
  <a href="https://gathos.com">Get API keys at gathos.com</a>
</p>
