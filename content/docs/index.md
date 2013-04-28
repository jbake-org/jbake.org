title=Documentation
date=2013-02-27
type=page
status=published
~~~~~~

## Installation

- Make sure you have a Java JRE of at least version 6 or above and that the java command is available in your path
- Download and unzip JBake into a folder on your hard disk
- Add the JBake folder to your path
- Open a command prompt and run `jbake -h` (or `jbake.bat -h` if you are on Windows) to confirm everything works, you should see usage help

## Usage

- Run `jbake` to do some baking, this will use the current folder as the source and place any baked output into an `output` 
folder in the current folder
- Or you can run `jbake <source_folder> <destination_folder>` if you want full control of the source & destination

Example source folder structure:

<pre>
.
|-- assets
|   |-- favicon.gif
|   |-- robots.txt
|   |-- css
|       |-- style.css
|-- content
|   |-- about.html
|   |-- 2013
|       |-- 02 
|           |-- weekly-links-1.html
|           |-- weekly-links-2.md
|-- templates
|   |-- index.ftl
|   |-- page.ftl
|   |-- post.ftl
|   |-- feed.ftl
|-- custom.properties
</pre>

A full example source folder is provided with the [source code](https://github.com/jonbullock/JBake/tree/master/misc).

Both [http://jonathanbullock.com](http://jonathanbullock.com) and [http://jbake.org](http://jbake.org) are built using JBake.

### assets

Place your static files in this folder and they will be copied to the root of the destination folder. Any folder structure you create will be maintained.

### content

Place your dynamic content in this folder, the content in the files in this folder will be "mixed" with the templates to generate your site. Again any folder structure you create will be maintained in the destination folder.

The extension of the file determines what content it contains:

- .html = raw html
- .md = Markdown

Each content file needs to have a meta-data header in it:

<pre>
title=Weekly Links #2
date=2013-02-01
type=post
tags=weekly links, java
status=published
~~~~~~
</pre>

The header MUST have at least the **status** & **type** fields, the rest are optional.

You can also add extra meta data to the header:

<pre>
summary=This is a summary of the larger post
</pre>

And access it from the template like so:

`<p>${content.summary}</p>`

Drafts are rendered along with published posts however they are given a "-draft" suffix, for example `first-post-draft.html`.

### templates

This is where your [Freemarker](http://freemarker.sourceforge.net) templates go.

Here's whats available to you in what template files:

**Common**

`${version}` outputs the version of JBake

The contents of the file is always available via `${content.body}`

**index.ftl / feed.ftl**

`${posts}` is a collection of content which can be iterated through (this collection only has files which doesn't have type=page, i.e. posts)

**post.ftl / page.ftl**

`${content}` is an object that contains the the header & body of the file

You can choose what template your content file will be "mixed" with by changing the *post* header field (i.e. type=post will use post.ftl, type=page will use page.ftl).

Some example templates are included in the `/misc/templates/` folder.

See the 
[Freemarker Manual](http://freemarker.sourceforge.net/docs/index.html) for more information on what you can do in Freemarker templates.

Why Freemarker? I've used them as part of the Hibernate reverse engineering system.

### custom.properties

The custom.properties file allows you to override the default configuration of JBake. You can change the name of the folder that stores your content or templates, decide whether to generate a an RSS feed or not. See default.properties for what options are available.

