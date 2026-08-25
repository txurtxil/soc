#!/usr/bin/env python3
import sys
from lxml import etree

sep = sys.argv.index("--")
files, attrs = sys.argv[1:sep], set(sys.argv[sep+1:])

for path in files:
    tree = etree.parse(path)
    root = tree.getroot()
    changed = False
    for elem in root.iter():
        for full_attr in list(elem.attrib):
            local = full_attr.split('}')[-1]
            if local in attrs:
                del elem.attrib[full_attr]
                changed = True
    if changed:
        tree.write(path, xml_declaration=True, encoding='utf-8', standalone=True)
        print(f"OK: {path}")
    else:
        print(f"sin cambios: {path}")
