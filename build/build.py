import re
import glob
import os.path

from smartypants import smartypants
from unidecode import unidecode

from md_html_build import BASEDIR, md_to_html_inner, md_to_html

def html_substitutions(content):
    content = unidecode(content)
    content = content.replace('--', '&mdash;')
    content = content.replace('(c)', '&copy;')
    content = content.replace('&quot;', '"')
    content = smartypants(content)
    content = content.replace('(*)', '*').replace('*', '<sup>*</sup>')
    content = re.sub(r'(\[(\d)\])', r'<sup><a href="appendix#\2">\1</a></sup>', content)
    return content

def render_chapter_html(infile):
    name = os.path.split(infile)[-1].split('.')[0]
    if name.isdigit():
        number = int(name)
    elif name == 'title':
        number = -1
    elif name == 'foreword':
        number = 0
    else:
        number = -10
        # print 'WARNING: Invalid filename: {0}'.format(infile)
        # raise Exception("Invalid filename: {0}".format(infile))
    words = md_to_html_inner(infile)
    return [name, number, words]

def make_content(infiles):
    content = []
    for infile in glob.glob(infiles):
        content.append(render_chapter_html(infile))
    return sorted(content, key=lambda (name, number, words): number) # sort by chapter number!

def main(basedir, project, page):
    infiles = os.path.join(basedir, project, 'build', page, '*.md')
    tmpfile = os.path.join(basedir, project, 'build', page + '.mako')
    outfile = os.path.join(basedir, project, page + '.html')
    content = make_content(infiles)
    # if page == 'index':
    # elif page == 'glossary':
    #     content = []
    # elif page == 'appendix':
    #     content = []
    md_to_html(content, tmpfile, outfile, html_substitutions)

def build_speak_neuron(basedir):
    main(basedir, 'speak-neuron', 'index')
    main(basedir, 'speak-neuron', 'glossary')
    main(basedir, 'speak-neuron', 'appendix')

if __name__ == '__main__':
    build_speak_neuron(BASEDIR)
