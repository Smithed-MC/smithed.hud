import json

letters_p = ['A','B','C','D','E','F','G','H','I','J','K','L']
letters_n = ['a','b','c','d','e','f','g','h','i','j','k','l']
entries_p = {}
entries_n = {}
entries = {}

for i in range(1, 4097):
    combo = ""
    for bit in range(12):
        if i & (1 << bit):
            combo += letters_p[bit]
    entries[f"smithed.hud.space.{i}"] = combo

for i in range(1, 4097):
    combo = ""
    for bit in range(12):
        if i & (1 << bit):
            combo += letters_n[bit]
    entries[f"smithed.hud.space.-{i}"] = combo

with open('en_us.json', 'w') as f:
    json.dump(entries, f, indent=2)