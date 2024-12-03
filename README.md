#  The PhD Thesis LaTeX Template for TRAIL, The Netherlands

![StandWithUkraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)

## Overview

**This LaTeX template** is designed for PhD students of the [Trail Research School](http://rstrail.nl/) in the Netherlands to easily organize their PhD theses using LaTeX. The format is checked and confirmed by Trail. If you're a PhD student facing challenges with LaTeX for your thesis, this is exactly what you need!

💡 Enjoy using it? Give us a "like" in your theis if possible, and give us a ⭐ in Github.

## Last update: 5th Dec 2024


<img src="https://raw.githubusercontent.com/vincentgong7/phd_thesis_latex_trail_template/master/ch-x-others/images/trail_thesis_cover.jpg" alt="drawing" width="780"/>

<img src="https://raw.githubusercontent.com/vincentgong7/phd_thesis_latex_trail_template/master/ch-x-others/images/overleaf.png" alt="drawing" height="300"/>
<img src="https://raw.githubusercontent.com/vincentgong7/phd_thesis_latex_trail_template/master/ch-x-others/images/trail_thesis_title.png" alt="drawing" height="300"/>

## Online Overleaf Demo (Read-only)

<img style="filter: drop-shadow(5px 5px 5px #c4c2c2);" src="https://images.ctfassets.net/nrgyaltdicpt/5doLOtX69is0i6WIiY4um/6cc9be15c75155e7b93cd4823b742e44/overleaf_wide_colour_green_bg.png" alt="drawing" width="200"/>

[Access the demo here](https://bit.ly/nl_trail_phd_thesis_template_v2_2)

## Download the LaTeX Template

You can download the LaTeX source files via **GitHub (recommended)** or **Overleaf**.

- On **Github**
<img style="filter: drop-shadow(5px 5px 5px #c4c2c2);" src="https://1000logos.net/wp-content/uploads/2021/05/GitHub-logo.png" alt="drawing" width="50"/>

	1. Visit the [Github repository](https://github.com/vincentgong7/phd_thesis_latex_trail_template). 
	2. Click the green **Code** button. 
	3. Select **Download ZIP**. 


- On **Overleaf**
<img style="filter: drop-shadow(5px 5px 5px #c4c2c2);" src="https://images.ctfassets.net/nrgyaltdicpt/5doLOtX69is0i6WIiY4um/6cc9be15c75155e7b93cd4823b742e44/overleaf_wide_colour_green_bg.png" alt="drawing" width="70"/>

	1. Visit **[Overleaf demo ](https://bit.ly/nl_trail_phd_thesis_template_v2_2)**
	2. Click the **Menu** (top-left corner).
	3. Select **Source** under the **Download** section.

## Usage
### Use it on your local laptop:
1. Download the project (as a ZIP file or by cloning it via Git).
2. Compile it using your preferred LaTeX tool, 
	- **TeX Live** or **miKTex** for Windows
	- **MacTex** with **Texifier** for Mac users. 

### Use it online (Overleaf) (**Recommended**):
Set up your thesis on Overleaf in **two** ways:

- **Option 1: Upload the ZIP File**
	1. Download the zip file of this template to your local computer folder.
	2. In your Overleaf project page, click **New Project** -> **Upload Project**
	3. Select the **zip file** of this LaTeX template on your local folder and upload it.
	4. **Recompile** it.

- **Option 2: Link to GitHub (Advanced user only)**
	1. **Fork** this project to your own GitHub repositories.
	2. On Overleaf, click **New Project** -> **Import from GitHub**. 
	3. Ensure your Overleaf account is linked to GitHub account. It's easy.
	4. Select your forked repository from your GitHub repositories and import it to your Overleaf.
	5. **Compile** the project (default mode **pdfLaTex**, important!).

#### Important, please compile this project using: pdfLaTex

## Quick info
I re-organized the folder structure for the latest update (2nd version). It is more clear and easy to use. It is strong recommended to finish reading all the following points before diving into the LaTeX files. It only takes you 5 minutes.

- **Main File:** `thesis.tex` in the root folder. The output is `thesis.pdf`.
- **Chapters:** Located in `ch-n-xxx` folders (e.g., `ch-1-introduction`), with images stored in `images` subfolders.
- **Supporting Chapters:** Found in `ch-x-others` (i.e. titel page, dedication, preface, bibliography, glossary, summary, author introduction and trail thesis series).
- **Appendices:** Stored in the `appendix` folder. Add multiple `.tex` files as needed.
- **User Configurations:** Add custom LaTeX packages in `config/defs_user.tex`.

Now, open `thesis.tex` and start editing your thesis!

## Optional Customizations

- **Add/Remove Base Packages:** Edit `config/defs_base.tex`.
- **Adjust Margins:** Modify `\geometry{left=1cm,right=1cm}` in `thesis.tex` (line 43).
- **Crop Lines:** Change color in `lib/trailthesis.cls` (line 167) from **"white"** to **"black"**. Only if you need.
- **Core Files:** Located in the `lib` folder. Modify only if necessary.


## History
- **2007–2009:** Original version by Rudy Negenborn.
- **2019:** Updated to meet TRAIL's new requirements; first GitHub release.
- **2024:** Major updates to folder structure, styles, and usability.

It is the most updated version for TRAIL now. It can be compiled directly without any changes.

**Rudy README.txt** has been archived in the folder of **historical**. Note, most of configuration has been changed to make the template as simple as possible.

## Credits

Thanks **Rudy Negenborn** for the original version.

Thanks **Conchita van der Stelt** from the [Trail Research School](http://rstrail.nl/) for reviewing this template.

Thanks **[Bellows Wang](https://bellowswang.github.io/)** for testing this project.

Thanks **Arjan de Ruijter** for checking the crop-line setting in more than 10 Trail theses and updating this setting.


## Contact
Feel free to let me know if you have any questions.

💌 vincent.gong7 [at] gmail.com

🌳 [*www.Gong.im*](http://gong.im)

<script type="text/javascript" src="//counter.websiteout.net/js/5/4/0/0"></script>
<br>
<div  style="float: left;"><script type='text/javascript' id='clustrmaps' src='//cdn.clustrmaps.com/map_v2.js?cl=ffffff&w=400&t=n&d=YaYngOWcCEKsLmRFjHSW7aOPBT8ueuevDUpYlOW-7Ks'></script></div>
