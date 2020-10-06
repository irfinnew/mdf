---
title: This is the title
author: Written by me
date: 12 Februari 2020
---

# # Header 1

## ## Header 2

### ### Header 3

#### #### Header 4

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

You can force a line break␣␣  
by ending a line in two spaces.

You can also force a page break (closing the element is mandatory):  
`<pagebreak></pagebreak>`
<pagebreak></pagebreak>



## Formatting

<style>
  div.syntax + table tbody tr:nth-child(odd) { background: none; }
  div.syntax + table td,th { padding: 1px 30px; }
</style>
<div class="syntax"></div>

| | |
| :--: | :--: |
| **bold** | \*\*bold\*\* |
| _italic_ | \_italic\_ |
| ~~strikethrough~~ | \~\~strikethrough\~\~ |
| `verbatim` | \`verbatim\` |
| ^super^script | \^super\^script |
| ~sub~script | \~sub\~script |
| <span style="font-weight: bold; color: white; text-shadow: 0 0 4pt #f00;">custom HTML</span> | \<span style="font-weight: bold; color: white; text-shadow: 0 0 4pt #f00;">custom HTML\</span> |

En-dashes are made with two dashes: -- rulers with three: \-\-\-

---


## Unordered lists

 - \- Start each line with a dash
 * \* Or an asterisk
   - \- Nested lists by indenting at least 2 spaces deeper



## Block quotes

> \> He said.
>
> > \> \> She said.


## Code blocks

\`\`\`
```
class Concat(Token):
	def __init__(self, *tokens, **kwargs):
		Token.__init__(self, **kwargs)
		self.tokens = tokens
```
\`\`\`



## Ordered lists

 1. 1\. Start the line with any number and a dot.
 1. 1\. Really, the number doesn't matter.



## Links

<div class="syntax"></div>
| | |
| :--: | :--: |
| <https://example.com/> | \<https://example.com/> |
| [Link with description](https://example.com/) | \[Link with description](https://example.com/) |
| See the footnote[^1].  | See the footnote\[\^1]. |
| | \[\^1]: This is a footnote. |

[^1]: This is a footnote.



## Images

![\!\[Caption.\](image.png){width=10cm}](image.png){width=10cm}



## Tables

  Right    Left       Center    Default
-------    ------   ---------   -------
12         12       12          12  
123        123      123         123  
1          1        1           1

<style>
  div.tablezzz + pre { width: 50%; margin-left: 50%; margin-top: -150px; }
</style>
<div class="tablezzz"></div>
```
  Right    Left       Center    Default
-------    ------   ---------   -------
12         12       12          12  
123        123      123         123  
1          1        1           1
```


## Task lists (supported in Pandoc 2.6)

 - [ ] not done
 - [x] done

