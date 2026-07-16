ArrayList<Hill> hills;

final int carrying_capacity = 5;

class Hill {
    float a;
    float b;
    float c;
    float m;

    Hill() {
        a = random(0, 20);
        b = random(0, 0.5);
        c = random(height/2, height);
        m = random(-0.5, 0.5);
    }

    void draw() {
        beginShape();

        vertex(0, height);   // bottom-left

        for (float x = 0; x <= width; x += 1) {
            float y = a * sin(b * x) + c + m * x;
            vertex(x, y);
        }

        vertex(width, height);  // bottom-right
        endShape(CLOSE);
    }
}


void setup() {
    size(800, 400);
    fill(0, 102, 204); 

    hills = new ArrayList();
}

void draw() {
    if (random(1) < 0.05 && hills.size() < carrying_capacity) {
        hills.add(new Hill());
    }

    for (Hill hill : hills) {
        hill.draw();
    }
}

