<p align="right">
  English /
  <a href="https://github.com/BinaryHusk/typora-theme-apaper/blob/main/README_CN.md">
    简体中文
  </a>
</p>

<h1 align="center">
  Typora Theme - Apaper
</h1>

<p align="center">
  A clean Typora theme for editing AstroPaper-style Markdown posts.
</p>

<div align="center">
  <img alt="License" src="https://img.shields.io/github/license/BinaryHusk/typora-theme-apaper?style=for-the-badge&color=006cac">
  <img alt="Release Version" src="https://img.shields.io/github/v/release/BinaryHusk/typora-theme-apaper?style=for-the-badge&color=ff6b01">
</div>

## Preview

| Light | Dark |
| :--: | :--: |
| <img src="images/apaper-writing-overview.png" alt="Apaper writing overview" width="100%"> | <img src="images/apaper-dark-writing-overview.png" alt="Apaper Dark writing overview" width="100%"> |

## Features

- Matches the visual rhythm of an AstroPaper-based technical blog.
- Uses a compact, text-first layout for long-form Markdown editing.
- Covers headings, lists, blockquotes, tables, code fences, math, diagrams, raw HTML blocks, TOC, footnotes, and YAML front matter.
- Provides separate Apaper and Apaper Dark theme files, so dark mode can be selected without changing the system color mode.
- Bundles Maple Mono CN for consistent Chinese and English text rendering.

## Installation

1. Download this repository or the latest release archive.
2. In Typora, open **Preferences** > **Appearance** > **Open Theme Folder**.
3. Copy `apaper.css`, `apaper-dark.css`, and the `apaper` folder into Typora's theme folder.
4. Restart Typora and select **Apaper** or **Apaper Dark** from the theme menu.

## Theme Selection

| System or App Appearance | Typora Theme |
| :-- | :-- |
| Light | **Apaper** |
| Dark | **Apaper Dark** |
| Keep the system light, but use a dark Typora editor | **Apaper Dark** |

Typora treats `apaper.css` and `apaper-dark.css` as two separate themes, so switch between them from Typora's theme menu when your preferred appearance changes.

## Files

```text
apaper.css
apaper-dark.css
apaper/
└── fonts/
    └── maple-mono-cn/
```

## Credits

- Inspired by [AstroPaper](https://github.com/satnaing/astro-paper).
- Font assets come from [Maple Mono](https://github.com/subframe7536/maple-font).
- Theme structure and installation notes follow common Typora theme conventions, with [Lapis](https://github.com/YiNNx/typora-theme-lapis) as a reference.

## License

Apaper is released under the [MIT License](./LICENSE).

Bundled Maple Mono CN font files are licensed separately under the SIL Open Font License 1.1.
