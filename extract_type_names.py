import json
import itertools
import sys

if len(sys.argv) < 2:
    print("Usage: extract_type_names.py path_to_duckdb_repository_root")
    exit(1)

duckdb_repository_root = sys.argv[1]

types_json_file = f"{duckdb_repository_root}/src/include/duckdb/catalog/default/builtin_types/types.json"

with open(types_json_file) as f:
    types_json_doc = json.loads(f.read())

ids = [e['id'] for e in types_json_doc]
aliases = [e['names'] for e in types_json_doc]

# flatten aliases list
type_names = ids + list(itertools.chain.from_iterable(aliases))

# ensure types are spelt with UPPERCASE characters
type_names = [type_name.upper() for type_name in type_names]

# eliminate duplicates
type_names = list(set(type_names))

# sort
type_names = sorted(type_names)

for type_name in type_names:
    print(type_name)
