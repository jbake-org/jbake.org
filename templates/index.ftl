<#include "header.ftl">

	<#include "menu.ftl">

      <div class="jumbotron">
        <h1>Bake your own site!</h1>
        <p class="lead">JBake is a Java based, open source, static site/blog generator for developers & designers</p>
        <a class="btn btn-large btn-success" href="/download.html">Download</a>
        <p></p>
        <div class="alert alert-info">
			<strong>Latest News:</strong> <a href="/news/jbake-v2-6-5-released.html">JBake v2.6.5 released</a>
		</div>
      </div>

      <hr>

      <h2>Get started with just 5 commands</h2>
      <p>The following 5 commands will install the latest version of JBake and get you started with a simple static site you can work with.</p>
<pre>
$ curl -s "https://get.sdkman.io" | bash
$ sdk install jbake
$ mkdir awesome-jbake && cd awesome-jbake
$ jbake -i
$ jbake -b -s
</pre>
      <p>Then browse to <a href="http://localhost:8820">http://localhost:8820</a> in your web browser to see your static site</p>

      <hr>

      <h2>Features</h2>
      <div class="row-fluid marketing">
        <div class="span6">
          <h4>Open Source</h4>
          <p>Source available on <a href="http://github.com">GitHub</a>, licensed under MIT License</p>

          <h4>Cross platform support</h4>
          <p>The binary distribution runs on Windows, Unix/Linux and Mac OS X.</p>

          <h4>Content Formats</h4>
          <p>Supports <a href="http://asciidoctor.org/">AsciiDoc</a>, <a href="http://daringfireball.net/projects/markdown/">Markdown</a> and good old HTML formatted content.</p>

          <h4>Open Structure</h4>
          <p>Structure your content any way you see fit.</p>

          <h4>Blog Aware</h4>
          <p>RSS/Atom feed, archive and tag support.</p>

          <h4>Draft support</h4>
          <p>View your draft content before publishing it and making it available to the world.</p>
        </div>
        <div class="span6">
          <h4>Self contained</h4>
          <p>Binary distribution contains everything you need apart from a JRE, no complicated environment setup with 3rd party dependencies.</p>

          <h4>Build tools</h4>
          <p>
          Plugins available for <a href="https://gradle.org/">Gradle</a>,
          <a href="https://maven.apache.org/">Maven</a>,
          <a href="https://www.lihaoyi.com/mill/">mill</a>,
          <a href="http://sbuild.org/">SBuild</a>
          and <a href="https://www.scala-sbt.org/">sbt.</a>
          </p>

          <h4>Template Support</h4>
          <p><a href="http://freemarker.org/">Freemarker</a>, <a href="http://www.groovy-lang.org/">Groovy</a>, <a href="http://www.thymeleaf.org/">Thymeleaf</a> and <a href="https://github.com/neuland/jade4j">Jade</a> based templates & scripting support.</p>

          <h4>CSS Framework Support</h4>
          <p>Easily integrate CSS frameworks such as <a href="http://getbootstrap.com/">Bootstrap</a> and <a href="http://foundation.zurb.com/">Foundation</a>.</p>

          <h4>Custom Metadata</h4>
          <p>Add as much metadata to content as you like, also exposed to templates.</p>

          <h4>Storage Support</h4>
          <p>Store your site content in Dropbox, CVS, SVN, Git or whatever you want.</p>
        </div>
      </div>

      <div class="row-fluid marketing">
		<div class="span3 text-center">
			<a href="https://twitter.com/javabake" class="twitter-follow-button" data-show-count="false" data-dnt="true">Follow @javabake</a>
			<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
		</div>

        <div class="span3 text-center">
        	<script type="text/javascript" src="https://www.ohloh.net/p/634040/widgets/project_thin_badge.js"></script>
        </div>

        <div class="span3 text-center">
        	<a href="https://travis-ci.org/jbake-org/jbake"><img src="https://travis-ci.org/jbake-org/jbake.png?branch=master" /></a>
        </div>

        <div class="span3 text-center">
        	IRC: <a href="irc://irc.freenode.org/#jbake">#jbake on Freenode</a>
        </div>

      </div>

      <hr />

<#include "footer.ftl">
