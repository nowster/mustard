<html>
  <head>
    <title>MUSTARD</title>
    <link rel="stylesheet" type="text/css" href="/public/style.css"/>
    <script type="text/javascript" src="/public/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="/public/effects.js"></script>
  </head>
  <body>
    <div id="body">
      <h1>{{repository.project.title}}</h1>
      {{!repository.project.description}}
      <div id="nav">
        <ul>
          % if repository.requirements():
            <li><a href="/requirements">Requirements</a></li>
          % end
          % if repository.architectures():
            <li><a href="/architectures">Architectures</a></li>
          % end
          % if repository.components():
            <li><a href="/components">Components</a></li>
          % end
          % if repository.tags():
            <li><a href="/tags">Tags</a></li>
          % end
        </ul>
      </div>
      <div id="content">
        %include
      </div>
    </div>
  </body>
</html>
