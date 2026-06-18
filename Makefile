THEME_NAME := apaper
THEME_FILE := $(THEME_NAME).css
THEME_ASSET_DIR := $(THEME_NAME)/fonts
PREVIEW_ROOT ?= ../typora-theme-toolkit/html-preview/theme
PREVIEW_FILE := $(PREVIEW_ROOT)/test.css
PREVIEW_ASSET_DIR := $(PREVIEW_ROOT)/$(THEME_NAME)/fonts
TARGET_DIR ?= /home/amos/.config/Typora/themes
TARGET_FILE := $(TARGET_DIR)/$(THEME_NAME).css
TARGET_ASSET_DIR := $(TARGET_DIR)/$(THEME_NAME)/fonts

.PHONY: help check sync-preview deploy

help:
	@printf 'Targets:\n'
	@printf '  make check        Validate local theme files\n'
	@printf '  make sync-preview Copy apaper.css into typora-theme-toolkit preview slot\n'
	@printf '  make deploy       Install apaper.css into the Typora theme folder\n'

check:
	@test -f "$(THEME_FILE)"
	@test -f "$(THEME_ASSET_DIR)/maple-mono-cn/result.css"
	@test ! -f README.md
	@case "$(THEME_NAME)" in *[A-Z\ ]*) echo "Theme name must be lowercase and contain no spaces"; exit 1;; esac
	@node -e 'const fs=require("fs"); const f=process.argv[1]; const s=fs.readFileSync(f,"utf8"); let b=0; for (const ch of s) { if (ch==="{") b++; else if (ch==="}") b--; if (b<0) throw new Error("extra closing brace"); } if (b!==0) throw new Error("unbalanced braces: "+b); if (!s.includes("@import url(\"./apaper/fonts/maple-mono-cn/result.css\")")) throw new Error("font import path is not root-relative"); console.log(f+": ok");' "$(THEME_FILE)"

sync-preview: check
	@mkdir -p "$(PREVIEW_ROOT)"
	@cp -a "$(THEME_FILE)" "$(PREVIEW_FILE)"
	@mkdir -p "$(PREVIEW_ASSET_DIR)"
	@cp -a "$(THEME_ASSET_DIR)/maple-mono-cn" "$(PREVIEW_ASSET_DIR)/"
	@printf 'Synced %s -> %s\n' "$(THEME_FILE)" "$(PREVIEW_FILE)"

deploy: sync-preview
	@mkdir -p "$(TARGET_DIR)"
	@install -m 0644 "$(THEME_FILE)" "$(TARGET_FILE)"
	@mkdir -p "$(TARGET_ASSET_DIR)"
	@cp -a "$(THEME_ASSET_DIR)/maple-mono-cn" "$(TARGET_ASSET_DIR)/"
	@printf 'Installed %s\n' "$(TARGET_FILE)"
