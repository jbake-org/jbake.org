title=Documentation
date=2013-02-27
type=page
status=published
~~~~~~

## Installation

- Make sure you have a [Java 6+ JRE](http://www.oracle.com/technetwork/java/javase/downloads/index.html) and that the `java` command is available in your path
- Download and unzip JBake into a folder on your hard disk
- Add the JBake folder to your path
- Open a command prompt and run `jbake -h` (or `jbake.bat -h` if you are on Windows) to confirm everything works, you should see usage help text

## Usage

- Run `jbake` to do some baking, this will use the current folder as the source and place any baked output into an `output` folder in the current folder
- Or you can run `jbake <source_folder> <destination_folder>` if you want full control over the source & destination folders

## Source structure

Here is an example source folder structure:

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

A full example source folder is provided with the [source code](https://github.com/jonbullock/JBake/tree/master/src/test/resources).

Both [http://jonathanbullock.com](http://jonathanbullock.com) and [http://jbake.org](http://jbake.org) are built using JBake.

### Assets

Place your static files in this folder and they will be copied to the root of the destination folder. Any folder structure you create will be maintained.

### Content

Place your dynamic content in this folder, the content in the files in this folder will be "mixed" with the templates to generate your site. Again any folder structure you create will be maintained in the destination folder.

The extension of the file determines what content it contains:

- .html = HTML content
- .md = Markdown content

#### Header

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

##### Status

You have 2 options for the status field: `draft` and `published`, drafts are rendered along with published posts however they are given a "-draft" suffix, for example `first-post-draft.html`.

##### Type

You can choose what template your content file will be "mixed" with by changing the type field (i.e. type=post will use post.ftl, type=page will use page.ftl).

#### Extra Header

You can also add extra meta data in the header that is also exposed to the templates:

<pre>
summary=This is a summary of the larger post
</pre>

And access it from the template like so:

`<p>${content.summary}</p>`

### Templates

This is the folder where your [Freemarker](http://freemarker.sourceforge.net) templates go. For more information on what you can do in Freemarker templates see the [Manual](http://freemarker.sourceforge.net/docs/index.html).

Here is the data that is available to you in your template files:

#### Global

This data is available to all templates regardless.

- `${version}` = version of JBake
- `${config.[options]}` = map of configuration data

All the configuration options in `default.properties` are available with any `.` in the property being replaced with `_`.
For example `template.index.file=index.ftl` is available via `${config.template_index_file}`.

- `${posts}` = collection of all posts (files that don't have `type=page`)
- `${pages}` = collection of all pages (files that have `type=page`)

You can loop through the above collections using:

<pre>
&lt;#list posts as post&gt;
	..
&lt;/#list&gt;
</pre>

Within the loop you can then access the options for each post or page: `${post.[options]}` or `${page.[options]}`

All of the header fields are available such as `${post.title}` and the body of the file is available via `${post.body}`.

#### Page / Post

These templates (page.ftl & post.ftl) as well as any custom templates you create yourself have the following data available to them:

- `${content.[options]}` = map of file contents

All of the header fields are available such as `${content.title}` and the body of the file is available via `${content.body}`.

#### Index / Feed / Archive

These templates (index.ftl, feed.ftl & archive.ftl) have the following extra data available to them:

- `${published_posts}` = collection of published posts
- `${published_date}` = date when file is generated (only available to Feed)

#### Tags

This template (tags.ftl) has the following extra data available to it:

- `${tag}` = tag being rendered
- `${tag_posts}` = collection posts for tag

## Configuration

The `custom.properties` file allows you to override the default configuration of JBake. You can change the name of the folder that stores your content or templates, decide whether to generate a an RSS feed or not. See [default.properties](https://github.com/jonbullock/JBake/blob/master/src/main/resources/default.properties) for what options are available.
