README
======

Importing data
--------------

Import data with `rake db:data_import`

Notes
-----

So, this is the first time I've really worked with React. I chose react-rails instead
of react-on-rails because the latter seemed way more complicated with webpack and all
that. It was slow-going, but I worked out how to turn the standard Rails scaffolds into
React components. Added Bootstrap so it would look a little better.

I wanted to do something more substantial with React rather than just use static 
components so I implemented pagination on the UserShow component to paginate the albums.
React is actually pretty cool, I could see myself getting to know it as well as I
'get' jQuery. I don't like putting all the components in 
`app/assets/javascripts/components`, they're full-fledged views and they deserve
to be in `app/views/components` at least if not just `app/components`

That said, thanks for giving me the opportunity to dig into a new framework. Might start using this on my personal projects.