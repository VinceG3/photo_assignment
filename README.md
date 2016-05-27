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
React components, with the exception of the forms, which would have required a lot of
work to redo. Also added Bootstrap so it would look a little better.

I wanted to do something more substantial with React rather than just use static 
components so I implemented pagination on the UserShow component to paginate the albums.
React is actually pretty cool, I could see myself getting to know it as well as I
'get' jQuery. I don't like putting all the components in 
`app/assets/javascripts/components`, they're full-fledged views and they deserve
to be in `app/views/components` at least if not just `app/components`

Going forward, I guess the next step would be to paginate the Album view, for that I
would first abstract the Pagination component so it can handle more than 4 results to a
page, then try to reuse it to display maybe 8-12 thumbnails at a time. I'd make
`elementsPerPage` a prop and modify the indexes in the render function to use them.

All that said, thanks for giving me the opportunity to dig into a new framework. Might start
using it on my personal projects.