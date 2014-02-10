LearningProcessing
==================

Placeholder project to hold all my Processing learnings

---

Day 1:

- Started watching https://vimeo.com/channels/natureofcode/ up to Video 1.2
- Created a random walker using black dots on a white background
.git
![2014-02-09](https://github.com/andyjamesdavies/LearningProcessing/raw/master/screenshots/2014_02_09.png)

- Created a random walker using colored ellipses
![2014-02-09](https://github.com/andyjamesdavies/LearningProcessing/raw/master/screenshots/2014_02_09_2.png)

- 'Random' is using a 25% choice to go either up/down/left/right and chooses a random stepSize using the noise() function seeded with time (t) which is an iterator that increases by 0.01 each 'tick' of draw (Perlin noise).

---

Day 2:

- Watched https://vimeo.com/channels/natureofcode/ from Video 1.3 & 1.4
- Updated 'Walker' to have a previous Location variable (pLocation) that allows me to draw a line from previous point to new point on each 'tick' of draw.
- Changed 'render' to draw a random line with a randomised color.
![2014-02-10](https://github.com/andyjamesdavies/LearningProcessing/raw/master/screenshots/2014_02_10.png)
