---
layout: documentation
---

# Configuration

The template is fully configurable through `couscous.yml` or (to a lesser extend) through the header in Markdown files.

## Site-wide variables

Variables can be defined in `couscous.yml` and the yaml-header of Markdown files.

| Variable      | Description                                                            |
| ------------- | ---------------------------------------------------------------------- |
| `title`       | The title is displayed in the top-left corner and the window name      |
| `description` | A description of the project.                                          |
| `baseUrl`     | The base-URL of the webpage                                            |
| `githubUrl`   | The URL of the repository on Github; used for "edit on GitHub" buttons |

## Header

You can add links to the header that is displayed on every page. Add the following
code snippet to `couscous.yml`:

```yaml
header:
    items:
        getting-started:
            text:                      Getting started
            url:                       getting-started.html
        next-item:
            text:                      <My link text>
            url:                       <My link url>
```

> Note that urls are passed without processing. You have to use the *final* location of files if referencing a generated page.

## Side menu

The `documentation` layout displays a left-hand menu. The content of that menu is fully configurable through the `menu.items` variable. To add a new section with links add

```yaml
menu:
    items:
        introduction:
            section:                   Introduction
            items:
                getting-started:
                    text:                Getting started
                    url:                 getting-started.html
                best-practices:
                    text:                "\"Best practices\" guide"
                    url:                 best-practices.html
```
> Note that urls are passed without processing. You have to use the *final* location of files if referencing a generated page.

## Syntax highlighting

The template uses [Prism.js](https://prismjs.com/) for fast and reliable syntax highlighting. To keep Prism lightweight, only *Markup*, *CSS*, *C-Like*, and *JavaScript* are enabled by default, although [Prism supports much more languages](https://prismjs.com/#languages-list) out-of-the-box.

You can enable custom languages by adding them to the `highlight.languages` array in `couscous.yml`:

```yaml
highlight:
    languages:
        - yaml
```

> See the [Prism documentation](https://prismjs.com/#languages-list) for a list of support languages.
