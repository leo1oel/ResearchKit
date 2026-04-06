---
name: research
description: "Systematic research workflow: define question, collect sources, analyze, synthesize, and produce structured output. For deep dives into unfamiliar domains, competitive analysis, or technical investigation."
version: 1.0.0
allowed-tools:
  - Bash
  - Read
  - Write
  - Edit
  - Grep
  - Glob
  - WebSearch
  - WebFetch
  - AskUserQuestion
  - Agent
---

# Research: From Question to Structured Output

A four-phase workflow for turning a vague question into a clear, sourced answer.

## Phase 1: Scope

Before doing anything, clarify the research question with the user via AskUserQuestion:

- What exactly do you want to know?
- What is the output format? (summary, comparison table, report, decision brief)
- How deep? (quick scan: 15 min, standard: 1 hour, deep dive: unlimited)
- Any constraints? (specific sources, time range, language)

Do not proceed until scope is confirmed. A clear question saves hours of wasted reading.

## Phase 2: Collect

Gather primary sources relevant to the scoped question.

**Good sources:** official documentation, papers, blog posts from practitioners, source code, release notes, benchmark data.

**Bad sources:** aggregator summaries, listicles, undated forum posts without verification.

For each source:
1. Fetch and convert to Markdown using WebFetch
2. Save to a local `research/` directory, organized by sub-topic
3. Record: URL, title, date, one-line relevance note

```
research/
  sources/
    topic-a/
      source-1.md
      source-2.md
    topic-b/
      source-3.md
  notes.md        # running observations
  output.md       # final deliverable
```

Target source count by depth:
- Quick scan: 3-5 sources
- Standard: 8-12 sources
- Deep dive: 15-25 sources

## Phase 3: Analyze

Work through collected sources systematically:

1. **Extract key claims.** For each source, pull out the 2-3 most important claims or data points relevant to your question.
2. **Cross-reference.** Where do sources agree? Where do they contradict? Note conflicts explicitly.
3. **Identify gaps.** What does your question need that no source has answered? Go back to Phase 2 for targeted collection.
4. **Build a mental model.** Can you explain the answer to someone else without looking at your notes? If not, keep analyzing.

Write running observations in `research/notes.md` as you go.

## Phase 4: Synthesize and Deliver

Produce the agreed output format:

| Format | Structure |
|--------|-----------|
| **Summary** | 3-5 paragraphs, key findings first, sources cited inline |
| **Comparison table** | Dimensions as rows, options as columns, clear winner per dimension |
| **Report** | Executive summary, detailed sections, methodology note, source list |
| **Decision brief** | Recommendation, supporting evidence, risks, alternatives |

Rules for output:
- Lead with the answer, not the process
- Cite sources for every factual claim
- Flag uncertainty explicitly: "unclear", "conflicting data", "single source"
- Separate facts from interpretation

## When to Use This Skill

- Evaluating a new technology, framework, or tool
- Understanding a domain you have not worked in before
- Competitive analysis or market research
- Preparing background for a design decision
- Investigating a technical question with no obvious answer

## When NOT to Use This Skill

- Quick factual lookups (just use WebSearch directly)
- Reading a single URL (use /read instead)
- Writing prose from existing knowledge (use /write instead)
