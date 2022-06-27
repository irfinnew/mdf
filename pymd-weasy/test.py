#! /bin/python3

import markdown
import weasyprint
import time

with open('example.md') as fd:
    md = fd.read()

extensions = [
	'fenced_code',
	'md_in_html',
	'tables',
	'attr_list',
]
sw = time.time()
html = markdown.markdown(md, extensions=extensions)
sw = time.time() - sw
print(f'to html: {sw}')

with open('example.html', 'w') as fd:
	fd.write(html)

from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
	def __init__(self, *args, **kwargs):
		super().__init__(*args, **kwargs)
		self.output = ''

	def handle_starttag(self, tag, attrs):
		if tag == 'img':
			print('IMAGE', attrs)

parser = MyHTMLParser()

parser.feed(html)


sw = time.time()
weasyprint.HTML(string=html, base_url='.').write_pdf('example.pdf', stylesheets=[weasyprint.CSS(filename='style.css')], presentational_hints=True)
sw = time.time() - sw
print(f'to pdf: {sw}')
