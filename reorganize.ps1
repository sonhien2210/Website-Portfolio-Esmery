# PowerShell script to reorganize Website portfolio
# Run this from inside "Website portfolio" folder
# cd "C:\Users\sonhi\Downloads\Website portfolio"
# .\reorganize.ps1

$ErrorActionPreference = "Stop"

# Create directory structure
New-Item -ItemType Directory -Force -Path "docs"
New-Item -ItemType Directory -Force -Path "images/ai-video"
New-Item -ItemType Directory -Force -Path "images/campaign"
New-Item -ItemType Directory -Force -Path "images/design"
New-Item -ItemType Directory -Force -Path "images/home"
New-Item -ItemType Directory -Force -Path "images/shared"
New-Item -ItemType Directory -Force -Path "images/unused"
New-Item -ItemType Directory -Force -Path "pages"
New-Item -ItemType Directory -Force -Path "scripts"

# Move HTML pages
if (Test-Path "AI-Video.dc.html") { Move-Item -Force "AI-Video.dc.html" "pages\AI-Video.dc.html" }
if (Test-Path "About.dc.html") { Move-Item -Force "About.dc.html" "pages\About.dc.html" }
if (Test-Path "Ads.dc.html") { Move-Item -Force "Ads.dc.html" "pages\Ads.dc.html" }
if (Test-Path "Automation.dc.html") { Move-Item -Force "Automation.dc.html" "pages\Automation.dc.html" }
if (Test-Path "Campaign.dc.html") { Move-Item -Force "Campaign.dc.html" "pages\Campaign.dc.html" }
if (Test-Path "Consultation.dc.html") { Move-Item -Force "Consultation.dc.html" "pages\Consultation.dc.html" }
if (Test-Path "Design.dc.html") { Move-Item -Force "Design.dc.html" "pages\Design.dc.html" }
if (Test-Path "Home.dc.html") { Move-Item -Force "Home.dc.html" "pages\Home.dc.html" }
if (Test-Path "In-house.dc.html") { Move-Item -Force "In-house.dc.html" "pages\In-house.dc.html" }
if (Test-Path "Report v1 (dark).dc.html") { Move-Item -Force "Report v1 (dark).dc.html" "pages\Report v1 (dark).dc.html" }
if (Test-Path "Report.dc.html") { Move-Item -Force "Report.dc.html" "pages\Report.dc.html" }
if (Test-Path "Website.dc.html") { Move-Item -Force "Website.dc.html" "pages\Website.dc.html" }

# Move scripts
if (Test-Path "support.js") { Move-Item -Force "support.js" "scripts\support.js" }

# Move docs
if (Test-Path "uploads\DESIGN-f3edc806.md") { Move-Item -Force "uploads\DESIGN-f3edc806.md" "docs\DESIGN-f3edc806.md" }
if (Test-Path "uploads\DESIGN.md") { Move-Item -Force "uploads\DESIGN.md" "docs\DESIGN.md" }

# Move images to organized folders
if (Test-Path "uploads\(P)Pizza Combo.jpg") { Move-Item -Force "uploads\(P)Pizza Combo.jpg" "images\campaign\(P)Pizza Combo.jpg" }
if (Test-Path "uploads\(P)combo 670.jpg") { Move-Item -Force "uploads\(P)combo 670.jpg" "images\campaign\(P)combo 670.jpg" }
if (Test-Path "uploads\0826 (1)(2)_compressed.mp4") { Move-Item -Force "uploads\0826 (1)(2)_compressed.mp4" "images\home\0826 (1)(2)_compressed.mp4" }
if (Test-Path "uploads\0826 (1)(2)_frame1-0eb874af.png") { Move-Item -Force "uploads\0826 (1)(2)_frame1-0eb874af.png" "images\ai-video\0826 (1)(2)_frame1-0eb874af.png" }
if (Test-Path "uploads\0826 (1)(2)_frame1.png") { Move-Item -Force "uploads\0826 (1)(2)_frame1.png" "images\home\0826 (1)(2)_frame1.png" }
if (Test-Path "uploads\0827 (1)(1).mp4") { Move-Item -Force "uploads\0827 (1)(1).mp4" "images\unused\0827 (1)(1).mp4" }
if (Test-Path "uploads\0827 (1)(1)_compressed.mp4") { Move-Item -Force "uploads\0827 (1)(1)_compressed.mp4" "images\ai-video\0827 (1)(1)_compressed.mp4" }
if (Test-Path "uploads\0827.mp4") { Move-Item -Force "uploads\0827.mp4" "images\ai-video\0827.mp4" }
if (Test-Path "uploads\1-6b690a7d.png") { Move-Item -Force "uploads\1-6b690a7d.png" "images\home\1-6b690a7d.png" }
if (Test-Path "uploads\1-95d700ff.png") { Move-Item -Force "uploads\1-95d700ff.png" "images\home\1-95d700ff.png" }
if (Test-Path "uploads\1.png") { Move-Item -Force "uploads\1.png" "images\unused\1.png" }
if (Test-Path "uploads\1765948906564_187963989490343589_5430947014159569504_15521a5250c8ea8770364ac7c2f2bb0e.jpg") { Move-Item -Force "uploads\1765948906564_187963989490343589_5430947014159569504_15521a5250c8ea8770364ac7c2f2bb0e.jpg" "images\unused\1765948906564_187963989490343589_5430947014159569504_15521a5250c8ea8770364ac7c2f2bb0e.jpg" }
if (Test-Path "uploads\1765948906582_187963989490343589_5430947014159569504_cc2a77e287bfa1eb2bcd13d88c69f919.jpg") { Move-Item -Force "uploads\1765948906582_187963989490343589_5430947014159569504_cc2a77e287bfa1eb2bcd13d88c69f919.jpg" "images\design\1765948906582_187963989490343589_5430947014159569504_cc2a77e287bfa1eb2bcd13d88c69f919.jpg" }
if (Test-Path "uploads\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec-dc1e6062.jpg") { Move-Item -Force "uploads\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec-dc1e6062.jpg" "images\unused\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec-dc1e6062.jpg" }
if (Test-Path "uploads\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec.jpg") { Move-Item -Force "uploads\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec.jpg" "images\design\1765948906591_187963989490343589_5430947014159569504_d31827b9bf84ef138398e7f3c18b24ec.jpg" }
if (Test-Path "uploads\1765948906597_187963989490343589_5430947014159569504_0dadd1157aa5a13acab45c56cfe1125b.jpg") { Move-Item -Force "uploads\1765948906597_187963989490343589_5430947014159569504_0dadd1157aa5a13acab45c56cfe1125b.jpg" "images\design\1765948906597_187963989490343589_5430947014159569504_0dadd1157aa5a13acab45c56cfe1125b.jpg" }
if (Test-Path "uploads\1765948906602_187963989490343589_5430947014159569504_338f7379fff5107b28f09546f6fdbad8.jpg") { Move-Item -Force "uploads\1765948906602_187963989490343589_5430947014159569504_338f7379fff5107b28f09546f6fdbad8.jpg" "images\design\1765948906602_187963989490343589_5430947014159569504_338f7379fff5107b28f09546f6fdbad8.jpg" }
if (Test-Path "uploads\1765948906607_187963989490343589_5430947014159569504_70b6856855c183ef0008d28a2aae3acb.jpg") { Move-Item -Force "uploads\1765948906607_187963989490343589_5430947014159569504_70b6856855c183ef0008d28a2aae3acb.jpg" "images\design\1765948906607_187963989490343589_5430947014159569504_70b6856855c183ef0008d28a2aae3acb.jpg" }
if (Test-Path "uploads\1765948906612_187963989490343589_5430947014159569504_df409b527e4ebf3522670bd136029587.jpg") { Move-Item -Force "uploads\1765948906612_187963989490343589_5430947014159569504_df409b527e4ebf3522670bd136029587.jpg" "images\design\1765948906612_187963989490343589_5430947014159569504_df409b527e4ebf3522670bd136029587.jpg" }
if (Test-Path "uploads\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd-6facfe58.jpg") { Move-Item -Force "uploads\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd-6facfe58.jpg" "images\unused\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd-6facfe58.jpg" }
if (Test-Path "uploads\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd.jpg") { Move-Item -Force "uploads\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd.jpg" "images\unused\1780384731737_135796295198072742_6531390906152927968_96c98c3a50eda42127ef9dc2f5c5f4cd.jpg" }
if (Test-Path "uploads\1786685017944_135796295198072742_6432886473194611458_8b925fd43afec92e57fbd7d8eef27ec0.jpg") { Move-Item -Force "uploads\1786685017944_135796295198072742_6432886473194611458_8b925fd43afec92e57fbd7d8eef27ec0.jpg" "images\home\1786685017944_135796295198072742_6432886473194611458_8b925fd43afec92e57fbd7d8eef27ec0.jpg" }
if (Test-Path "uploads\1787649733314_4224458604903737060_4224458604903737060_80fad362da27188b1e5c37ff0e88be40.jpg") { Move-Item -Force "uploads\1787649733314_4224458604903737060_4224458604903737060_80fad362da27188b1e5c37ff0e88be40.jpg" "images\home\1787649733314_4224458604903737060_4224458604903737060_80fad362da27188b1e5c37ff0e88be40.jpg" }
if (Test-Path "uploads\1787649734800_4224458604903737060_4224458604903737060_0386d03e894e84b53987f5c80000c5ae.jpg") { Move-Item -Force "uploads\1787649734800_4224458604903737060_4224458604903737060_0386d03e894e84b53987f5c80000c5ae.jpg" "images\home\1787649734800_4224458604903737060_4224458604903737060_0386d03e894e84b53987f5c80000c5ae.jpg" }
if (Test-Path "uploads\1787752267839_135796295198072742_6661159549201092917_6a1a9afc2d15835f45774066245617e9 (1).jpg") { Move-Item -Force "uploads\1787752267839_135796295198072742_6661159549201092917_6a1a9afc2d15835f45774066245617e9 (1).jpg" "images\campaign\1787752267839_135796295198072742_6661159549201092917_6a1a9afc2d15835f45774066245617e9 (1).jpg" }
if (Test-Path "uploads\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d-c804a2ed.jpg") { Move-Item -Force "uploads\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d-c804a2ed.jpg" "images\unused\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d-c804a2ed.jpg" }
if (Test-Path "uploads\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d.jpg") { Move-Item -Force "uploads\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d.jpg" "images\campaign\1787754106058_4224458604903737060_4224458604903737060_70719ff0ecd4de033b5b23190ab9971d.jpg" }
if (Test-Path "uploads\2-33864b6c.png") { Move-Item -Force "uploads\2-33864b6c.png" "images\home\2-33864b6c.png" }
if (Test-Path "uploads\2-8ab671f6.png") { Move-Item -Force "uploads\2-8ab671f6.png" "images\home\2-8ab671f6.png" }
if (Test-Path "uploads\2.png") { Move-Item -Force "uploads\2.png" "images\unused\2.png" }
if (Test-Path "uploads\3.png") { Move-Item -Force "uploads\3.png" "images\unused\3.png" }
if (Test-Path "uploads\4.png") { Move-Item -Force "uploads\4.png" "images\unused\4.png" }
if (Test-Path "uploads\505891427_122117815784851700_4939427835230869475_n-3042d677.jpg") { Move-Item -Force "uploads\505891427_122117815784851700_4939427835230869475_n-3042d677.jpg" "images\campaign\505891427_122117815784851700_4939427835230869475_n-3042d677.jpg" }
if (Test-Path "uploads\505891427_122117815784851700_4939427835230869475_n.jpg") { Move-Item -Force "uploads\505891427_122117815784851700_4939427835230869475_n.jpg" "images\unused\505891427_122117815784851700_4939427835230869475_n.jpg" }
if (Test-Path "uploads\511024346_122121423248851700_7116131487730531724_n.jpg") { Move-Item -Force "uploads\511024346_122121423248851700_7116131487730531724_n.jpg" "images\campaign\511024346_122121423248851700_7116131487730531724_n.jpg" }
if (Test-Path "uploads\511271470_122121185528851700_6795711131349615346_n.jpg") { Move-Item -Force "uploads\511271470_122121185528851700_6795711131349615346_n.jpg" "images\campaign\511271470_122121185528851700_6795711131349615346_n.jpg" }
if (Test-Path "uploads\515436077_122124572852851700_9174222774614644495_n.jpg") { Move-Item -Force "uploads\515436077_122124572852851700_9174222774614644495_n.jpg" "images\campaign\515436077_122124572852851700_9174222774614644495_n.jpg" }
if (Test-Path "uploads\515439368_122123256686851700_8171676917137238030_n.jpg") { Move-Item -Force "uploads\515439368_122123256686851700_8171676917137238030_n.jpg" "images\campaign\515439368_122123256686851700_8171676917137238030_n.jpg" }
if (Test-Path "uploads\516323680_122124339116851700_4251740690495979852_n.jpg") { Move-Item -Force "uploads\516323680_122124339116851700_4251740690495979852_n.jpg" "images\campaign\516323680_122124339116851700_4251740690495979852_n.jpg" }
if (Test-Path "uploads\518276138_122126145506851700_4427604629000733023_n.jpg") { Move-Item -Force "uploads\518276138_122126145506851700_4427604629000733023_n.jpg" "images\campaign\518276138_122126145506851700_4427604629000733023_n.jpg" }
if (Test-Path "uploads\522616400_122127250682851700_4521065404759451277_n.jpg") { Move-Item -Force "uploads\522616400_122127250682851700_4521065404759451277_n.jpg" "images\campaign\522616400_122127250682851700_4521065404759451277_n.jpg" }
if (Test-Path "uploads\587546969_122118594849020957_12653131538916922_n-e2288698.jpg") { Move-Item -Force "uploads\587546969_122118594849020957_12653131538916922_n-e2288698.jpg" "images\unused\587546969_122118594849020957_12653131538916922_n-e2288698.jpg" }
if (Test-Path "uploads\587546969_122118594849020957_12653131538916922_n.jpg") { Move-Item -Force "uploads\587546969_122118594849020957_12653131538916922_n.jpg" "images\campaign\587546969_122118594849020957_12653131538916922_n.jpg" }
if (Test-Path "uploads\588818404_122119701675020957_2465746379474069434_n.jpg") { Move-Item -Force "uploads\588818404_122119701675020957_2465746379474069434_n.jpg" "images\campaign\588818404_122119701675020957_2465746379474069434_n.jpg" }
if (Test-Path "uploads\60555144-e649-4b91-b75d-cb4e66925614.png") { Move-Item -Force "uploads\60555144-e649-4b91-b75d-cb4e66925614.png" "images\design\60555144-e649-4b91-b75d-cb4e66925614.png" }
if (Test-Path "uploads\71cefad5-a670-4497-a36a-2203fb32790f.png") { Move-Item -Force "uploads\71cefad5-a670-4497-a36a-2203fb32790f.png" "images\home\71cefad5-a670-4497-a36a-2203fb32790f.png" }
if (Test-Path "uploads\Artboard 1 copy 25.png") { Move-Item -Force "uploads\Artboard 1 copy 25.png" "images\design\Artboard 1 copy 25.png" }
if (Test-Path "uploads\Artboard 1 copy 26.png") { Move-Item -Force "uploads\Artboard 1 copy 26.png" "images\design\Artboard 1 copy 26.png" }
if (Test-Path "uploads\Artboard 1 copy 27-5c28aa3c.png") { Move-Item -Force "uploads\Artboard 1 copy 27-5c28aa3c.png" "images\design\Artboard 1 copy 27-5c28aa3c.png" }
if (Test-Path "uploads\Artboard 1 copy 27.png") { Move-Item -Force "uploads\Artboard 1 copy 27.png" "images\unused\Artboard 1 copy 27.png" }
if (Test-Path "uploads\Artboard 1 copy 28.png") { Move-Item -Force "uploads\Artboard 1 copy 28.png" "images\design\Artboard 1 copy 28.png" }
if (Test-Path "uploads\Artboard 1 copy 29.png") { Move-Item -Force "uploads\Artboard 1 copy 29.png" "images\design\Artboard 1 copy 29.png" }
if (Test-Path "uploads\BINJ2410.JPG") { Move-Item -Force "uploads\BINJ2410.JPG" "images\shared\BINJ2410.JPG" }
if (Test-Path "uploads\BINJ2442.JPG") { Move-Item -Force "uploads\BINJ2442.JPG" "images\shared\BINJ2442.JPG" }
if (Test-Path "uploads\DSC_7894.png") { Move-Item -Force "uploads\DSC_7894.png" "images\campaign\DSC_7894.png" }
if (Test-Path "uploads\Djirian 2.png") { Move-Item -Force "uploads\Djirian 2.png" "images\campaign\Djirian 2.png" }
if (Test-Path "uploads\Djirian 3.png") { Move-Item -Force "uploads\Djirian 3.png" "images\campaign\Djirian 3.png" }
if (Test-Path "uploads\Untitled design (1).png") { Move-Item -Force "uploads\Untitled design (1).png" "images\home\Untitled design (1).png" }
if (Test-Path "uploads\Untitled design-36c24498.png") { Move-Item -Force "uploads\Untitled design-36c24498.png" "images\campaign\Untitled design-36c24498.png" }
if (Test-Path "uploads\Untitled design.png") { Move-Item -Force "uploads\Untitled design.png" "images\unused\Untitled design.png" }
if (Test-Path "uploads\Untitled-1.PNG") { Move-Item -Force "uploads\Untitled-1.PNG" "images\shared\Untitled-1.PNG" }
if (Test-Path "uploads\Untitled-10-44682352.jpg") { Move-Item -Force "uploads\Untitled-10-44682352.jpg" "images\campaign\Untitled-10-44682352.jpg" }
if (Test-Path "uploads\Untitled-10.jpg") { Move-Item -Force "uploads\Untitled-10.jpg" "images\unused\Untitled-10.jpg" }
if (Test-Path "uploads\Untitled-11-c8c502e3.PNG") { Move-Item -Force "uploads\Untitled-11-c8c502e3.PNG" "images\campaign\Untitled-11-c8c502e3.PNG" }
if (Test-Path "uploads\Untitled-11.PNG") { Move-Item -Force "uploads\Untitled-11.PNG" "images\design\Untitled-11.PNG" }
if (Test-Path "uploads\Untitled-12.PNG") { Move-Item -Force "uploads\Untitled-12.PNG" "images\unused\Untitled-12.PNG" }
if (Test-Path "uploads\Untitled-2-4f66ba89.PNG") { Move-Item -Force "uploads\Untitled-2-4f66ba89.PNG" "images\campaign\Untitled-2-4f66ba89.PNG" }
if (Test-Path "uploads\Untitled-2.PNG") { Move-Item -Force "uploads\Untitled-2.PNG" "images\unused\Untitled-2.PNG" }
if (Test-Path "uploads\Untitled-3.PNG") { Move-Item -Force "uploads\Untitled-3.PNG" "images\design\Untitled-3.PNG" }
if (Test-Path "uploads\Untitled-4-47bc831b.PNG") { Move-Item -Force "uploads\Untitled-4-47bc831b.PNG" "images\campaign\Untitled-4-47bc831b.PNG" }
if (Test-Path "uploads\Untitled-4.PNG") { Move-Item -Force "uploads\Untitled-4.PNG" "images\design\Untitled-4.PNG" }
if (Test-Path "uploads\Untitled-5.PNG") { Move-Item -Force "uploads\Untitled-5.PNG" "images\home\Untitled-5.PNG" }
if (Test-Path "uploads\Untitled-6-5e66fb71.jpg") { Move-Item -Force "uploads\Untitled-6-5e66fb71.jpg" "images\campaign\Untitled-6-5e66fb71.jpg" }
if (Test-Path "uploads\Untitled-6.jpg") { Move-Item -Force "uploads\Untitled-6.jpg" "images\design\Untitled-6.jpg" }
if (Test-Path "uploads\Untitled-7-deb2e368.PNG") { Move-Item -Force "uploads\Untitled-7-deb2e368.PNG" "images\campaign\Untitled-7-deb2e368.PNG" }
if (Test-Path "uploads\Untitled-7.PNG") { Move-Item -Force "uploads\Untitled-7.PNG" "images\unused\Untitled-7.PNG" }
if (Test-Path "uploads\Untitled-8-46a700d6.PNG") { Move-Item -Force "uploads\Untitled-8-46a700d6.PNG" "images\campaign\Untitled-8-46a700d6.PNG" }
if (Test-Path "uploads\Untitled-8.PNG") { Move-Item -Force "uploads\Untitled-8.PNG" "images\design\Untitled-8.PNG" }
if (Test-Path "uploads\Untitled-9.PNG") { Move-Item -Force "uploads\Untitled-9.PNG" "images\unused\Untitled-9.PNG" }
if (Test-Path "uploads\VUS_9039.JPEG") { Move-Item -Force "uploads\VUS_9039.JPEG" "images\shared\VUS_9039.JPEG" }
if (Test-Path "uploads\VUS_9147.JPEG") { Move-Item -Force "uploads\VUS_9147.JPEG" "images\shared\VUS_9147.JPEG" }
if (Test-Path "uploads\VUS_9155.JPG") { Move-Item -Force "uploads\VUS_9155.JPG" "images\shared\VUS_9155.JPG" }
if (Test-Path "uploads\VUS_9156.PNG") { Move-Item -Force "uploads\VUS_9156.PNG" "images\shared\VUS_9156.PNG" }
if (Test-Path "uploads\VUS_9166.PNG") { Move-Item -Force "uploads\VUS_9166.PNG" "images\shared\VUS_9166.PNG" }
if (Test-Path "uploads\VUS_9227.JPG") { Move-Item -Force "uploads\VUS_9227.JPG" "images\unused\VUS_9227.JPG" }
if (Test-Path "uploads\VUS_9241.JPG") { Move-Item -Force "uploads\VUS_9241.JPG" "images\design\VUS_9241.JPG" }
if (Test-Path "uploads\VUS_9264.JPG") { Move-Item -Force "uploads\VUS_9264.JPG" "images\design\VUS_9264.JPG" }
if (Test-Path "uploads\VUS_9269.JPG") { Move-Item -Force "uploads\VUS_9269.JPG" "images\unused\VUS_9269.JPG" }
if (Test-Path "uploads\VUS_9272.JPG") { Move-Item -Force "uploads\VUS_9272.JPG" "images\design\VUS_9272.JPG" }
if (Test-Path "uploads\VUS_9290.JPG") { Move-Item -Force "uploads\VUS_9290.JPG" "images\design\VUS_9290.JPG" }
if (Test-Path "uploads\VUS_9298.JPG") { Move-Item -Force "uploads\VUS_9298.JPG" "images\design\VUS_9298.JPG" }
if (Test-Path "uploads\VUS_9319-b7d4f692.JPG") { Move-Item -Force "uploads\VUS_9319-b7d4f692.JPG" "images\unused\VUS_9319-b7d4f692.JPG" }
if (Test-Path "uploads\VUS_9319.JPG") { Move-Item -Force "uploads\VUS_9319.JPG" "images\design\VUS_9319.JPG" }
if (Test-Path "uploads\bf517465-2789-4e72-8f3b-91faeedda607-3d6b653f.png") { Move-Item -Force "uploads\bf517465-2789-4e72-8f3b-91faeedda607-3d6b653f.png" "images\unused\bf517465-2789-4e72-8f3b-91faeedda607-3d6b653f.png" }
if (Test-Path "uploads\bf517465-2789-4e72-8f3b-91faeedda607.png") { Move-Item -Force "uploads\bf517465-2789-4e72-8f3b-91faeedda607.png" "images\shared\bf517465-2789-4e72-8f3b-91faeedda607.png" }
if (Test-Path "uploads\hình 1-47187529.png") { Move-Item -Force "uploads\hình 1-47187529.png" "images\unused\hình 1-47187529.png" }
if (Test-Path "uploads\hình 1.png") { Move-Item -Force "uploads\hình 1.png" "images\design\hình 1.png" }
if (Test-Path "uploads\hình 2-26b23b52.png") { Move-Item -Force "uploads\hình 2-26b23b52.png" "images\campaign\hình 2-26b23b52.png" }
if (Test-Path "uploads\hình 2.png") { Move-Item -Force "uploads\hình 2.png" "images\design\hình 2.png" }
if (Test-Path "uploads\hình 3.png") { Move-Item -Force "uploads\hình 3.png" "images\design\hình 3.png" }
if (Test-Path "uploads\hình 4-8eeb0f56.png") { Move-Item -Force "uploads\hình 4-8eeb0f56.png" "images\campaign\hình 4-8eeb0f56.png" }
if (Test-Path "uploads\hình 4.png") { Move-Item -Force "uploads\hình 4.png" "images\design\hình 4.png" }
if (Test-Path "uploads\hình 5.png") { Move-Item -Force "uploads\hình 5.png" "images\design\hình 5.png" }
if (Test-Path "uploads\magnific_a-bold-bubbly-rounded-typ_IfQ1owUtvE.png") { Move-Item -Force "uploads\magnific_a-bold-bubbly-rounded-typ_IfQ1owUtvE.png" "images\unused\magnific_a-bold-bubbly-rounded-typ_IfQ1owUtvE.png" }
if (Test-Path "uploads\magnific_a-young-woman-with-short-_dtfuZF1XSL.mp4") { Move-Item -Force "uploads\magnific_a-young-woman-with-short-_dtfuZF1XSL.mp4" "images\ai-video\magnific_a-young-woman-with-short-_dtfuZF1XSL.mp4" }
if (Test-Path "uploads\magnific_fill-lai-background-tu-an_1lw5cqnr4r.png") { Move-Item -Force "uploads\magnific_fill-lai-background-tu-an_1lw5cqnr4r.png" "images\home\magnific_fill-lai-background-tu-an_1lw5cqnr4r.png" }
if (Test-Path "uploads\magnific_fill-lai-background-tu-an_4RGOIxD9Aa.png") { Move-Item -Force "uploads\magnific_fill-lai-background-tu-an_4RGOIxD9Aa.png" "images\home\magnific_fill-lai-background-tu-an_4RGOIxD9Aa.png" }
if (Test-Path "uploads\magnific_fill-lai-background-tu-an_fHKhyNlCDY.png") { Move-Item -Force "uploads\magnific_fill-lai-background-tu-an_fHKhyNlCDY.png" "images\home\magnific_fill-lai-background-tu-an_fHKhyNlCDY.png" }
if (Test-Path "uploads\magnific_photo-taken-on-a-smartpho_fHKaEUZCDY.png") { Move-Item -Force "uploads\magnific_photo-taken-on-a-smartpho_fHKaEUZCDY.png" "images\ai-video\magnific_photo-taken-on-a-smartpho_fHKaEUZCDY.png" }
if (Test-Path "uploads\magnific_product-mockup-photo-a-dj_ovhTI9K829.png") { Move-Item -Force "uploads\magnific_product-mockup-photo-a-dj_ovhTI9K829.png" "images\design\magnific_product-mockup-photo-a-dj_ovhTI9K829.png" }
if (Test-Path "uploads\magnific_static-camera-locked-shot_nVehQf7YQD.webm") { Move-Item -Force "uploads\magnific_static-camera-locked-shot_nVehQf7YQD.webm" "images\unused\magnific_static-camera-locked-shot_nVehQf7YQD.webm" }
if (Test-Path "uploads\magnific_them-bang-djirian-007-cua_6AA7eK5iJO.png") { Move-Item -Force "uploads\magnific_them-bang-djirian-007-cua_6AA7eK5iJO.png" "images\shared\magnific_them-bang-djirian-007-cua_6AA7eK5iJO.png" }
if (Test-Path "uploads\magnific_three-djirian-freezedried_rgluMJPxtc.png") { Move-Item -Force "uploads\magnific_three-djirian-freezedried_rgluMJPxtc.png" "images\campaign\magnific_three-djirian-freezedried_rgluMJPxtc.png" }
if (Test-Path "uploads\magnific_two-pairs-of-hands-passin_lJ7b0D3gv9.png") { Move-Item -Force "uploads\magnific_two-pairs-of-hands-passin_lJ7b0D3gv9.png" "images\campaign\magnific_two-pairs-of-hands-passin_lJ7b0D3gv9.png" }
if (Test-Path "uploads\magnific_vertical-916-aspect-ratio_8au1OFMIrU.webm") { Move-Item -Force "uploads\magnific_vertical-916-aspect-ratio_8au1OFMIrU.webm" "images\unused\magnific_vertical-916-aspect-ratio_8au1OFMIrU.webm" }
if (Test-Path "uploads\mobie.webm") { Move-Item -Force "uploads\mobie.webm" "images\unused\mobie.webm" }
if (Test-Path "uploads\pasted-1787627302368-0.png") { Move-Item -Force "uploads\pasted-1787627302368-0.png" "images\unused\pasted-1787627302368-0.png" }
if (Test-Path "uploads\pasted-1787635922151-0.png") { Move-Item -Force "uploads\pasted-1787635922151-0.png" "images\unused\pasted-1787635922151-0.png" }
if (Test-Path "uploads\pasted-1787635932932-0.png") { Move-Item -Force "uploads\pasted-1787635932932-0.png" "images\unused\pasted-1787635932932-0.png" }
if (Test-Path "uploads\pasted-1787637574571-0.png") { Move-Item -Force "uploads\pasted-1787637574571-0.png" "images\unused\pasted-1787637574571-0.png" }
if (Test-Path "uploads\pasted-1787649789618-0.png") { Move-Item -Force "uploads\pasted-1787649789618-0.png" "images\unused\pasted-1787649789618-0.png" }
if (Test-Path "uploads\pasted-1787649880550-0.png") { Move-Item -Force "uploads\pasted-1787649880550-0.png" "images\unused\pasted-1787649880550-0.png" }
if (Test-Path "uploads\pasted-1787667880111-0.png") { Move-Item -Force "uploads\pasted-1787667880111-0.png" "images\unused\pasted-1787667880111-0.png" }
if (Test-Path "uploads\pasted-1787668080950-0.png") { Move-Item -Force "uploads\pasted-1787668080950-0.png" "images\unused\pasted-1787668080950-0.png" }
if (Test-Path "uploads\pasted-1787668171657-0.png") { Move-Item -Force "uploads\pasted-1787668171657-0.png" "images\unused\pasted-1787668171657-0.png" }
if (Test-Path "uploads\pasted-1787668307159-0.png") { Move-Item -Force "uploads\pasted-1787668307159-0.png" "images\unused\pasted-1787668307159-0.png" }
if (Test-Path "uploads\pasted-1787668631807-0.png") { Move-Item -Force "uploads\pasted-1787668631807-0.png" "images\unused\pasted-1787668631807-0.png" }
if (Test-Path "uploads\pasted-1787668810224-0.png") { Move-Item -Force "uploads\pasted-1787668810224-0.png" "images\unused\pasted-1787668810224-0.png" }
if (Test-Path "uploads\pasted-1787668937766-0.png") { Move-Item -Force "uploads\pasted-1787668937766-0.png" "images\unused\pasted-1787668937766-0.png" }
if (Test-Path "uploads\pasted-1787670369208-0.png") { Move-Item -Force "uploads\pasted-1787670369208-0.png" "images\unused\pasted-1787670369208-0.png" }
if (Test-Path "uploads\pasted-1787670380808-0.png") { Move-Item -Force "uploads\pasted-1787670380808-0.png" "images\unused\pasted-1787670380808-0.png" }
if (Test-Path "uploads\pasted-1787670692574-0.png") { Move-Item -Force "uploads\pasted-1787670692574-0.png" "images\unused\pasted-1787670692574-0.png" }
if (Test-Path "uploads\pasted-1787754378031-0.png") { Move-Item -Force "uploads\pasted-1787754378031-0.png" "images\unused\pasted-1787754378031-0.png" }
if (Test-Path "uploads\pasted-1787800414171-0.png") { Move-Item -Force "uploads\pasted-1787800414171-0.png" "images\unused\pasted-1787800414171-0.png" }
if (Test-Path "uploads\pasted-1787817477469-0.png") { Move-Item -Force "uploads\pasted-1787817477469-0.png" "images\unused\pasted-1787817477469-0.png" }
if (Test-Path "uploads\pasted-1787819155349-0.png") { Move-Item -Force "uploads\pasted-1787819155349-0.png" "images\unused\pasted-1787819155349-0.png" }
if (Test-Path "uploads\pasted-1787819738426-0.png") { Move-Item -Force "uploads\pasted-1787819738426-0.png" "images\unused\pasted-1787819738426-0.png" }
if (Test-Path "uploads\pasted-1787821714164-0.png") { Move-Item -Force "uploads\pasted-1787821714164-0.png" "images\unused\pasted-1787821714164-0.png" }
if (Test-Path "uploads\pasted-1787821779400-0.png") { Move-Item -Force "uploads\pasted-1787821779400-0.png" "images\unused\pasted-1787821779400-0.png" }
if (Test-Path "uploads\pc-2-49ce78d9.webm") { Move-Item -Force "uploads\pc-2-49ce78d9.webm" "images\unused\pc-2-49ce78d9.webm" }
if (Test-Path "uploads\pc-2.webm") { Move-Item -Force "uploads\pc-2.webm" "images\unused\pc-2.webm" }
if (Test-Path "uploads\pc.webm") { Move-Item -Force "uploads\pc.webm" "images\unused\pc.webm" }
if (Test-Path "uploads\phone-2-2118cb8d.webm") { Move-Item -Force "uploads\phone-2-2118cb8d.webm" "images\unused\phone-2-2118cb8d.webm" }
if (Test-Path "uploads\phone-2.webm") { Move-Item -Force "uploads\phone-2.webm" "images\unused\phone-2.webm" }

# Move .thumbnail and other root files
# (Esmery Dark Gallery.zip stays at root)

# Clean up empty uploads/ folder
if ((Get-ChildItem "uploads" -ErrorAction SilentlyContinue | Measure-Object).Count -eq 0) {
    Remove-Item "uploads" -Force
}

Write-Host "Done! Folder reorganized successfully." -ForegroundColor Green