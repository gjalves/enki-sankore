GITSHA1=$(shell git rev-parse HEAD)

MSI=enki-w32-${GITSHA1}.msi

${MSI}: enki.wixobj startupHints.wixobj i18n.wixobj
	light -sice:ICE60 -o ${MSI} $^

enki.wixobj: enki.wxs
	candle $<


i18n.wxs:
	heat dir "..\..\resources\i18n" -o i18n.wxs -scom -frag -sreg -gg -cg i18n -dr APPLICATIONROOTDIRECTORY -var var.sourcedir

i18n.wixobj: i18n.wxs
	candle $< -dsourcedir="..\..\resources\i18n"

startupHints.wxs:
	heat dir "..\..\resources\startupHints" -o startupHints.wxs -scom -frag -sreg -gg -cg startupHints -dr APPLICATIONROOTDIRECTORY -var var.startupHints


startupHints.wixobj: startupHints.wxs
	candle $< -dstartupHints="..\..\resources\startupHints"

clean:
	rm -f enki.wixobj ${MSI} startupHints.wxs i18n.wxs *.wixpdb *.wixobj

deploy: ${MSI}
	scp ${MSI} devel@192.168.200.252:deploy/enki/
