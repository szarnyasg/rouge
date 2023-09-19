import json
import itertools
import sys
from pathlib import Path

if len(sys.argv) < 2:
    print("Usage: extract_function_names.py path_to_duckdb_repository_root")
    exit(1)

duckdb_repository_root = sys.argv[1]

function_names = []

for path in Path(duckdb_repository_root).rglob('functions.json'):
    with open(path) as f:
        functions_json_doc = json.loads(f.read())

    function_names = function_names + [e['name'] for e in functions_json_doc]

# sort
function_names = sorted(function_names)

for function_name in function_names:
    print(function_name)
