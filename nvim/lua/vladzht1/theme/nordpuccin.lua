-- The official colors from the website (with one added dark color.)
local np = require 'alex.theme.utils'.get_nord_palette()
-- The colors provided by nordfox.
local nf = require 'alex.theme.utils'.get_nordfox_palette()
-- Use all nord colors?
local pure_nord = true

-- For settings.
local setup = {}

-- Version of catpuccin to use.
-- Frappe works best with the nord background.
local using = "frappe"
setup.flavour = using

-- Set the specific styles. Available styles:
-- bold, underline, undercurl, underdouble, underdotted, underdashed, 
-- strikethrough, reverse, inverse, italic, standout, nocombine, NONE
setup.styles = {
   comments     = { "italic" },
   strings      = { },
   keywords     = { },
   types        = { },
   conditionals = { },
   constants    = { },
   functions    = { },
   numbers      = { },
   operators    = { },
   variables    = { },
}

-- Integrations.
setup.integrations = {
    gitsigns            = true,
    leap                = true,
    telescope           = true,
    which_key           = true,
    notify              = true,
    treesitter_context  = true,
    dap                 = {
        enabled = true,
        enable_ui = true
    }
}

-- Override colors.
setup.color_overrides  = {}
-- Use catpuccin colors, with nord backgrounds.
setup.color_overrides[using] = {
    -- Backgrounds.
    base = np.gray0,
    mantle = np.black,
    crust = np.black,
}
-- Use all nord colors.  Catppuccin has more colors than nord, so have to combine
-- some of them into one color.
if pure_nord then
    -- Remappings.
    setup.color_overrides[using].text       = nf.white.dim
    setup.color_overrides[using].teal       = np.cyan
    setup.color_overrides[using].yellow     = np.yellow
    setup.color_overrides[using].red        = nf.red.bright
    setup.color_overrides[using].blue       = np.blue2
    setup.color_overrides[using].green      = nf.green.base
    setup.color_overrides[using].maroon     = nf.white.dim
    -- Pinks.
    setup.color_overrides[using].mauve      = nf.magenta.bright
    setup.color_overrides[using].pink       = nf.magenta.bright
    -- Oranges.
    setup.color_overrides[using].peach      = nf.orange.bright
    setup.color_overrides[using].rosewater  = nf.orange.bright
    -- This is used for brackets.
    setup.color_overrides[using].flamingo   = nf.white.dim
    -- Grays.
    setup.color_overrides[using].surface0   = np.black
    setup.color_overrides[using].surface1   = np.gray2
    setup.color_overrides[using].surface2   = np.gray4
    -- Whites.
    setup.color_overrides[using].overlay0   = np.gray4
    setup.color_overrides[using].overlay1   = nf.black.base -- Unsure.
    setup.color_overrides[using].overlay2   = nf.white.dim  -- Commas, operators.
end

-- Custom highlight groups.
if pure_nord then
    setup.custom_highlights = function(_)
        return {

            -- Syntax HL Section
            -----------------------
            -- Magentas.
            ["@constant"] = { fg = nf.magenta.bright },
            ["Number"] = { fg = nf.magenta.bright },
            ["@number"] = { fg = nf.magenta.bright },
            ["@float"] = { fg = nf.magenta.bright },
            ["@boolean"] = { fg = nf.magenta.bright },
            ["@constant.macro"] = { fg = nf.magenta.bright },
            -- Oranges (Keywords).
            ["@keyword"] = { fg = np.orange, style = { 'bold' } },
            ["@keyword.return"] = { fg = np.orange, style = { 'bold' } },
            ["@keyword.function"] = { fg = np.orange, style = { 'bold' } },
            ["@keyword.export"] = { fg = np.orange, style = { 'bold' } },
            ["@keyword.operator"] = { fg = np.orange, style = { 'bold' } },
            ["@repeat"] = { fg = np.orange, style = { 'bold' } },
            ["@conditional"] = { fg = np.orange, style = { 'bold' } },
            ["@operator"] = { fg = nf.orange.bright, style = { 'bold' }},
            ["@class"] = { fg = np.orange, style = { 'bold' }},
            ["@type.qualifier"] = { fg = np.orange, style = { 'bold' }},
            ["@storageclass"] = { fg = np.orange, style = { 'bold' }},
            -- Reds.
            ["@preproc"] = { fg = np.red, style = { 'bold' } },
            ["@attribute"] = { fg = np.red, style = { 'bold' } },
            ["@include"] = { fg = np.red, style = { 'bold' } },
            ["@macro"] = { fg = np.red, style = { 'bold' } },
            ["@function.macro"] = { fg = np.red, style = { 'bold' } },
            ["@define"] = { fg = np.red, style = { 'bold' } },
            ["@exception"] = { fg = np.red, style = { 'bold' } },
            ["@punctuation.special"] = { fg = np.red, style = { 'bold' } },
            -- Blues.
            ["@function"] = { fg = np.blue2 },
            ["@method"] = { fg = np.blue2 },
            ["@method.call"] = { fg = np.blue2 },
            ["@function.call"] = { fg = np.blue2 },
            ["@function.builtin"] = { fg = np.blue2 },
            ["@variable.builtin"] = { fg = np.blue0, style = { 'italic'} },
            -- Cyan.
            ["@field"] = { fg = np.cyan },
            ["@property"] = { fg = np.cyan },
            ["@property.cpp"] = { fg = np.cyan },
            -- Yellows.
            ["@namespace"] = { fg = nf.yellow.dim, style = { "italic" } },
            ["@type"] = { fg = np.yellow, style = { } },
            ["@type.builtin"] = { fg = np.yellow },
            ["@type.definition"] = { fg = np.yellow },
            -----------------------

            -- Tree.
            ["NvimTreeFolderIcon"] = { fg = nf.yellow.dim },
            ["NvimTreeFolderName"] = { fg = np.blue1 },
            ["NvimTreeEmptyFolderName"] = { fg = np.blue1 },
            ["NvimTreeOpenedName"] = { fg = np.blue1 },
            ["NvimTreeRootFolder"] = { fg = nf.yellow.base },

            -- Cursorline.
            ["CursorLineNr"] = { fg = np.gray5, style = { "bold" }},
            ["CursorLine"] = { bg = np.black, fg = "" },
            ["Visual"] = { bg = np.black },

            -- Dashboard.
            ["DashboardHeader"] = { fg = nf.yellow.base, style = { "bold" } },
            ["DashboardFooter"] = { fg = nf.cyan.base, style = { "italic" } },
            ["DashboardCenter"] = { fg = nf.green.base },

            -- Indentblankline.
            ["IndentBlanklineContextChar"] = { fg = np.gray3 },
            ["IndentBlanklineChar"] = { fg = np.gray2 },

            -- Telescope.
            ["TelescopePromptNormal"] = { bg = np.gray1 },
            ["TelescopePromptBorder"] = { bg = np.gray1 },
            ["TelescopeResultsNormal"] = { bg = np.black },
            ["TelescopeResultsBorder"] = { bg = np.black },
            ["TelescopePreviewNormal"] = { bg = np.black },
            ["TelescopePreviewBorder"] = { bg = np.black },
            ["TelescopeTitle"] = { bg = nf.orange.base, fg = np.black, style = { 'bold' } },
            ["TelescopeSelection"] = { bg = np.gray1, fg = np.white0 },
            ["TelescopeSelectionCaret"] = { fg = nf.yellow.bright, bg = np.gray1, style = { "bold" } },

            -- Trouble.
            ["TroubleNormal"] = { bg = np.black },

            -- Babar.
            ["BufferCurrent"] = { fg = nf.white.dim, bg = np.gray0, style = { 'bold' } },
            ["BufferCurrentSign"] = { fg = nf.orange.bright, bg = np.gray0, style = { 'bold' } },
            ["BufferCurrentMod"] = { fg = nf.white.dim, bg = np.gray0, style = { 'bold' } },
            ["BufferVisible"] = { fg = nf.white.dim, bg = np.black },
            ["BufferVisibleSign"] = { fg = np.black, bg = np.black, style = { 'bold' } },
            ["BufferVisibleMod"] = { fg = nf.white.dim, bg = np.black },
            ["BufferVisibleError"] = { fg = nf.red.bright, bg = np.black },
            ["BufferInactiveMod"] = { fg = "#888888", bg = np.black },

            -- Diagnostic colors.
            ["DiagnosticSignError"] = { fg = nf.red.bright, style = { 'bold' } },
            ["DiagnosticSignWarning"] = { fg = nf.yellow.base, style = { 'bold' } },
            ["DiagnosticSignInfo"] = { fg = nf.blue.bright, style = { 'bold' } },
            ["DiagnosticSignHint"] = { fg = nf.green.bright, style = { 'bold' } },
            ["DiagnosticError"] = { fg = nf.red.bright, style = { 'bold' } },
            ["DiagnosticWarning"] = { fg = nf.yellow.base, style = { 'bold' } },
            ["DiagnosticInfo"] = { fg = nf.blue.bright, style = { 'bold' } },
            ["DiagnosticHint"] = { fg = nf.green.bright, style = { 'bold' } },

            -- Diagnostics.
            ["LspDiagnosticsVirtualTextWarning"] = { fg = nf.black.base, style = { 'bold' } },

            -- LSP Saga.
            ["SagaBorder"] = { fg = np.white0 },
            ["DefinitionBorder"] = { fg = np.white0 },
            ["DefinitionNormal"] = { fg = np.gray0 },

            -- Cmp.
            ["BorderBG"] = { fg = np.white0 },
            ["PmenuSel"] = { bg = np.yellow, fg = np.black, style = { 'bold' } },

            -- Floating window.
            ["FloatBorder"] = { bg = np.black, fg = np.cyan, style = { 'bold' } },

            -- Gitsigns.
            ["GitSignsChange"] = { fg = np.blue1 },

            -- Leap.
            ["LeapLabelPrimary"] = { fg = np.black, bg = nf.yellow.dim, style = { 'bold' } },

            -- Matched bracket.
            ["MatchParen"] = { fg = nf.yellow.bright, style = { 'bold' } },

            -- Dap.
            ["DapUIStop"] = { fg = nf.red.bright, style = { 'bold' } },
            ["DapUIRestart"] = { fg = nf.green.bright, style = { 'bold' } },
            ["DapUIPlayPause"] = { fg = nf.green.bright, style = { 'bold' } },
            ["DapUIStepInto"] = { fg = np.blue2, style = { 'bold' } },
            ["DapUIStepOver"] = { fg = np.blue2, style = { 'bold' } },
            ["DapUIStepOut"] = { fg = np.blue2, style = { 'bold' } },
            ["DapUIStepBack"] = { fg = np.blue2, style = { 'bold' } },
            ["DapUIValue"] = { fg = nf.magenta.bright },
            ["DapUIWatchesValue"] = { fg = nf.green.bright },
            ["DapUIType"] = { fg = np.yellow },
            ["DapUIFloatBorder"] = { fg = np.orange, bg = np.black },
            ["DapUIFloatNormal"] = { bg = np.gray0 },
            ["DapUILineNumber"] = { fg = nf.green.bright },
        }
    end
end

-- Other settings.
setup.term_colors = true

-- Setup.
require 'catppuccin' .setup(setup)

-- Set the catpuccin theme that was overridden.
vim.cmd.colorscheme("catppuccin-" .. using)
