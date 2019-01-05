def wrap(list):
    return [ '"' + x + '"' for x in list]

class FilterModule(object):
    def filters(self):
        return {
            'wrap': wrap
        }

def dblquote(item):
    return [ '"' + item + '"' ]

class FilterModule(object):
    def filters(self):
        return {
            'dblquote': dblquote
        }

