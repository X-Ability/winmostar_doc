- To build Japanese version,
 make html
 make latexpdf

- To edit and build English version,

1) Write documents in Japanese on source/*.rst.

2) "make html" to generate Japanese websites.

3) "bash rst2po.sh" to create locale/en/LC_MESSAGES/*.po.

4) Translate at locale/en/LC_MESSAGES/*.po.

5) "bash po2target.sh" to generate English websites.


- To build automatically,
  sphinx-autobuild -b html source build/html
