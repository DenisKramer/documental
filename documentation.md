---
layout: documentation
---

# Configuration

The template is fully configurable through `_config.yml` or (to a lesser extend) through the header in Markdown files.

## Site-wide variables

Variables can be defined in `_config.yml` and the yaml-header of Markdown files.

| Variable        | Description                                                               |
| --------------- | ------------------------------------------------------------------------- |
| `title`         | The title is displayed in the top-left corner and the window name         |
| `description`   | A description of the project.                                             |
| `baseUrl`       | The base-URL of the webpage                                               |
| `github.url`    | The URL of the repository on Github; used for "edit on GitHub" buttons    |
| `github.branch` | The branch of the repository on Github; used for "edit on GitHub" buttons |

## Header

You can add links to the header that is displayed on every page. Add the following
code snippet to `_config.yml`:

```yaml
header:
    items:
    - text:  Getting started
      url:   getting-started.html
    - text:  <My link text>
      url:   <My link url>
```

> Note that urls are passed without processing. You have to use the _final_ location of files if referencing a generated page.

## Side menu

The `documentation` layout displays a left-hand menu. The content of that menu is fully configurable through the `menu.items` variable. To add a new section with links add

```yaml
menu:
    items:
        - section:      Introduction
          items:
          - text:       Getting started
            url:        getting-started.html
          - text:       "\"Best practices\" guide"
            url:        best-practices.html
```

> Note that urls are passed without processing. You have to use the _final_ location of files if referencing a generated page.

## Syntax highlighting

The template uses [Prism.js](https://prismjs.com/) for fast and reliable syntax highlighting. To keep Prism lightweight, only _Markup_, _CSS_, _C-Like_, and _JavaScript_ are enabled by default, although [Prism supports much more languages](https://prismjs.com/#languages-list) out-of-the-box.

Currently, the template supports a fixed number of languages, which include:

- JavaScript
- Bash
- Yaml
- C-like languages
- Matlab
- Python



> See the [Prism documentation](https://prismjs.com/#languages-list) for a list of all available languages and guidelines to download custom prism.js and prism.css files.
