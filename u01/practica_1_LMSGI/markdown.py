
import markdown

open('index.html',  'x').write(markdown.markdown(open('post.md', 'r', errors='ignore').read()))