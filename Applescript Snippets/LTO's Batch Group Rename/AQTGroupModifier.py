## AQTGroupModifier.py: Modify specific groups inside a .bttpreset
# Laurent Bourgon 2020

## IMPORTS
# Librairies
import os
import sys
import json
import shutil

## VALUES
# USAGE VALUES
USAGE: str = " ".join(
    [
        "AQTConditionExcluder.py",
        "<input: *.bttpresetzip>",
        "<output: *.bttpresetzip>",
        "| OPTIONAL: ",
        "<modifiers: *.json>",
    ]
)

TEMP_DIR: str = "./AQTGM_TEMP"
DEFAULT_JSON = "./groups_to_modify.json"
PRESET_FILE = "presetjson.bttpreset"
# PROPERTY VALUES
BUTTON: str = '"BTTTouchBarButtonName" : "{}",\n          "BTTTriggerType" : 630,'
GROUP: str = '"BTTOpenGroupWithName" : "{}",'


## GET PARAMETERS
# INPUT / OUTPUT
try:
    preset_file_path: str = sys.argv[1]
    preset_output_path: str = sys.argv[2]
except IndexError:
    sys.exit(f"ERROR: Incorrect Usage\n{USAGE}\n")
# GROUPS TO MODIFY
try:
    modify_file_path: str = sys.argv[3]
except IndexError:
    modify_file_path: str = (
        DEFAULT_JSON
        if os.path.isfile(DEFAULT_JSON)
        else sys.exit(f"No JSON with the groups found, please specify one.\n{USAGE}\n")
    )


## DATA PREPARATION
# Create a temporary folder
shutil.unpack_archive(preset_file_path, extract_dir=TEMP_DIR, format="zip")
# Open the preset file and read data from it
with open(os.path.join(TEMP_DIR, PRESET_FILE), "r", encoding="utf-8") as preset_file:
    preset_data: str = preset_file.read()
# Open the modify file and load from json
with open(modify_file_path, "r") as modify_file:
    modify_json: dict = json.load(modify_file)

## DATA MODIFICATION
# Loop through groups to modify
for group in modify_json["groups"]:
    # Change button settings
    preset_data: str = preset_data.replace(
        BUTTON.format(group), BUTTON.format(f"{modify_json['prefix']} {group}")
    )
    # Change action settings
    preset_data: str = preset_data.replace(
        GROUP.format(group), GROUP.format(f"{modify_json['prefix']} {group}")
    )

## DATA WRITING
# Overwrite the current file
with open(
    os.path.join(TEMP_DIR, PRESET_FILE), "w", encoding="utf-8"
) as preset_output_file:
    preset_output_file.write(preset_data)
# Archive temp folder
shutil.make_archive(preset_output_path, format="zip", root_dir=TEMP_DIR)
# Rename temp folder to remove .zip extension
os.rename(f"{preset_output_path}.zip", preset_output_path)

## DATA CLEANING
# Delete temp folder
shutil.rmtree(TEMP_DIR)
