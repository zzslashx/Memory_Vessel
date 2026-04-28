void drawGradientRect(float cx, float cy, float w, float h, color c1, color c2) {
  noStroke();
  for (int i = 0; i < h; i++) {
    float t = map(i, 0, h, 0, 1);
    color c = lerpColor(c1, c2, t);
    stroke(c);
    line(cx, cy + i, cx + w, cy + i);
  }
}

void drawRain() {
  stroke(200, 220, 240, 150);
  strokeWeight(1.5);
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);
    line(x, y, x + 2, y + 14);
  }
}


void drawPuddles() {
  if (opacity <= 80) opacity += 1;
  noStroke();
  fill(200, 220, 240, opacity);
  ellipse(150, 480, 120, 18);
  ellipse(350, 500, 180, 20);
  ellipse(580, 470, 90, 14);
}

void drawPuddles2() {
  if (opacity2 <= 80) opacity2 += 1;
  noStroke();
  fill(200, 220, 240, opacity2);
  ellipse(80, 520, 100, 20);
  ellipse(450, 540, 140, 18);
  ellipse(680, 510, 80, 15);
}
