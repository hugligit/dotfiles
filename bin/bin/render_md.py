import sys
from rich.console import Console
from rich.markdown import Markdown

console = Console()
markdown_text = sys.stdin.read()
md = Markdown(markdown_text)
console.print(md)

