import pystache

def render(self, context):
    flatcontext = {}
    self.renderer = pystache.Renderer(search_dirs=None, file_extension="mustache")
    for d in context.dicts:
        flatcontext.update(d)

    return self.renderer.render(self.parsed, flatcontext)
