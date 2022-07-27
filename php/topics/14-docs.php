<?php

declare(strict_types=1);

$heredoc = <<<DOC
  first line,
  second line,
  third line,
  fourht line
DOC;

echo $heredoc;

$nowdoc = <<<HTML
  <section>
    <div>
      <h1> title </h1>
      <p> content </p>
      <a href="http://google.com"> google </a>
    </div>
  </section>
HTML;

print($nowdoc);
