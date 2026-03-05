---
title: "Triangle Sports Analytics Competition"
format: html
css: styles.css
page-layout: full
editor: 
  markdown: 
    wrap: 72
---

```{=html}
<!--
This Quarto page builds a scrolling one‑page website.  As visitors scroll down
the page they travel across a fixed background image of a basketball court while
a bouncing basketball follows them along the right side of the viewport.  The
layout and color palette are inspired by the dark, animated aesthetic of the
TreeHacks website (dark backdrop, simple white headings and vibrant accents)
【129026186528667†L27-L41】.  Custom CSS and JavaScript implement the
animation and styling.
-->
```


<!-- Ball element (positioned by scripts.js) -->

::: {#ball}
:::

<!-- Hero section -->

::: hero
<h1>Triangle Sports Analytics Competition 2026</h1>

<h2>Submissions due February 6 &#127936; Register [Here](https://forms.gle/5ZXVLvWgk8FsTtfJ8)</h2>

<p>Represent your school in data science and take home the title</p>
:::

<section id="all">

### About

The 2nd annual **Triangle Sports Analytics Competition** aims to bring together students from Duke, UNC, Chapel Hill, and NC State who love
sports analytics to compete in a prediction contest. All undergraduate and graduate students are eligible to compete. The scope of the competition is to predict all **ACC Men's Basketball** games between **February 7, 2026** and **March 7, 2026**. **Students may work individually or in a team of 2-5**.

<!-- ### Competition -->

<!-- - Point spread is the difference in points scored between Home and Away teams. Your job is to create a statistical model that predicts the point spread of ACC Men's Basketball games. [Click here to learn more](/task.html#Objective) -->

<!-- - Looking to go the extra mile? You can **optionally** submit prediction intervals as well. These will be judged separately. [Click here to learn more](/task.html#optional-advanced-objective-prediction-intervals) -->



::: {.cell}

:::



### Leaderboard: Point Spreads


::: {.cell}
::: {.cell-output-display}

```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-b3956f813c3e56775f2e" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-b3956f813c3e56775f2e">{"x":{"filter":"none","vertical":false,"data":[[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41],["Not Cute Anymore","devig to ball knowledge","DerrickWhiteEnjoyer","Healthy Kids","Buzzer Beaters","Ball Knower","Torvik Tryhard","arjun","fleiAnalytics","Caleb's Hammer","MIDSTERS","Freaky Forecasts","Mustard","One Ram Band","Grayson Alpha","CalebTruthers","FIBA Analytics","(Money)ball is life","I2A","Gaussian Eliminators","Heels Excel","Naman","RedReckoning","MillerAndSons","Henri Febre","Definitely Not Overfit","Twilight Wolfpack Analytics","CMMT","Fuqua Devils","Ball in the Family","Pandalytics","BIOS Bros","Baracuda Boys","Trust Me Bro Analytics","UNCSigmaChiF24","Beat Dook","Levin's Lucky Layups","Caleb Goated Wilson","HTN Heaven","Roll the Dice","Lobryjakar"],[8.7498,8.764200000000001,8.8256,9.1046,9.1881,9.197900000000001,9.204000000000001,9.217700000000001,9.2532,9.4536,9.531599999999999,9.6149,9.6227,9.6631,9.6768,9.6897,9.7362,9.7669,9.7896,9.8184,9.8264,9.879099999999999,9.9011,10.1744,10.3333,10.3604,10.611,10.6671,10.6712,10.6803,10.8666,10.9019,11.0955,11.158,11.1798,11.4103,11.5894,11.7378,12.058,12.8261,15.8726]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th>Rank<\/th>\n      <th>Team<\/th>\n      <th>MAE<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":45,"dom":"t","columnDefs":[{"className":"dt-right","targets":[0,2]},{"name":"Rank","targets":0},{"name":"Team","targets":1},{"name":"MAE","targets":2}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[10,25,45,50,100]}},"evals":[],"jsHooks":[]}</script>
```

:::
:::

Scoreboard updated on Thu Mar  5 11:54:07 2026.
<br> 
<br>
Please help check the actual point spreads [here](https://github.com/triangle-sports/triangle-sports.github.io/blob/main/predictions/tsa_pt_spread_actual_2026.csv). Also, you should be able to calculate your own $MAE$ to confirm accuracy of $MAE$. 
<br>
<br>
Contact [Mario Giacomazzo (UNC)](mailto:mgiacoma@email.unc.edu) if you notice an error in the actual point spreads. 



::: {.cell}

:::





### Leaderboard: Prediction Intervals


::: {.cell}
::: {.cell-output-display}

```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-267418dd433234fb6304" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-267418dd433234fb6304">{"x":{"filter":"none","vertical":false,"data":[[1,2,3,4,5,6,7,8,null,null,null,null,null,null,null,null,null,null,null],["CalebTruthers","devig to ball knowledge","Not Cute Anymore","MIDSTERS","FIBA Analytics","Healthy Kids","Definitely Not Overfit","Twilight Wolfpack Analytics","Arjun","Baracuda Boys","BIOS Bros","Caleb Goated Wilson","Freaky Forecasts","Fuqua Devils","MillerAndSons","Mustard","Naman","Torvik Tryhard","Grayson Alpha"],[72.45999999999999,72.45999999999999,73.91,76.81,73.91,72.45999999999999,72.45999999999999,73.91,69.56999999999999,69.56999999999999,66.67,55.07,68.12,27.54,69.56999999999999,40.58,69.56999999999999,60.87,66.67],["No","No","No","No","No","No","No","No","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes","Yes"],[22.77,22.8,24.04,24.5,25.29,26.04,27.55,29.51,null,null,null,null,null,null,null,null,null,null,null]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th>Rank<\/th>\n      <th>Team<\/th>\n      <th>%<\/th>\n      <th>DQ<\/th>\n      <th>PIW<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":20,"dom":"t","columnDefs":[{"className":"dt-right","targets":[0,2,4]},{"name":"Rank","targets":0},{"name":"Team","targets":1},{"name":"%","targets":2},{"name":"DQ","targets":3},{"name":"PIW","targets":4}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[10,20,25,50,100]}},"evals":[],"jsHooks":[]}</script>
```

:::
:::


Scoreboard updated on Thu Mar  5 11:54:09 2026.
<br> 
<br>
Please help check the actual point spreads [here](https://github.com/triangle-sports/triangle-sports.github.io/blob/main/predictions/tsa_pt_spread_actual_2026.csv). Also, you should be able to calculate your own coverage percentage and $PIW$ to verify our cacluations are correct.
<br>
<br>
Contact [Mario Giacomazzo (UNC)](mailto:mgiacoma@email.unc.edu) if you notice an error in the percentage or the $PIW$.


### Questions?

Contact your school's organizer:

[Alexander Fisher (Duke)](mailto:alexander.fisher@duke.edu), [Elijah Meyer (NC State)](mailto:esmeyer2@ncsu.edu), [Mario Giacomazzo (UNC)](mailto:mgiacoma@email.unc.edu).
</section>

<!-- Include the animation script -->


```{=html}
<script src="scripts.js"></script>
```

