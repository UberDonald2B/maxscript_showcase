# How to add maxscripts to the Troy_Tools 3dsmax environment

The simplest way to to add a new `.ms` file in the `src/` that is encased in a `macroscript` (because all scripts in the `src/` directory are immediately ran on 3dsmax start, avoid scripts that aren't `macroscripts`).

---

## Example

Create the file `MyFirstTest.ms` in the `src/` directory.

```c
macroScript mcr_TB_MyFirstTest category:"TroyBuckleyScripts" tooltip:"My First Test" (
    print "I do nothing currently, except print"
)
```

## Add the script to the Troy_Tools menu

Edit the `zCreateTBMenus.ms` file to put an entry in the `menu_entries` array using the `macroscript` name (e.g. `mcr_TB_MyFirstTest`)

## After
```c
local menu_entries = #(
	(TBMenuEntry name:"mcr_TB_MergeMaxFilesToLayers" category:"TroyBuckleyScripts"),
	(TBMenuEntry name:"mcr_TB_LayersFromObjectNames" category:"TroyBuckleyScripts"),	<---- make sure to add a comma!!
	(TBMenuEntry name:"mcr_TB_MyFirstTest" category:"TroyBuckleyScripts")          		<---- this line was added
)
```