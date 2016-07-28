DIR=./ShowdownBot
MODDIR=./ShowdownBot/modules
CS_FILES := $(wildcard ./ShowdownBot/*.cs)
MODULE_FILES := $(wildcard ./ShowdownBot/modules/*.cs)
PROPERTIES_FILES := $(wildcard ./ShowdownBot/Properties/*.cs)
all:
	mcs $(CS_FILES) $(MODULE_FILES) $(PROPERTIES_FILES) /reference:./ShowdownBot/lib/WebDriver.dll /reference:./ShowdownBot/lib/WebDriver.Support.dll /reference:System.Drawing.dll /reference:System.Data.dll /reference:System.Windows.Forms.dll -out:sdb.exe

x:
	xbuild /p:Configuration=Release

clean:
	rm sdb.exe botInfo.txt error.txt
