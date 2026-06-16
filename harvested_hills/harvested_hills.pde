ArrayList<Hill> hills;

final int carrying_capacity = 5;

class Hill {
    float a;
    float b;
    float c;

    Hill() {
        a = random(0, 20);
        b = random(0, 0.5);
        c = random(height/2, height);

    }

    void draw() {
        for (float i = 0; i < width; i+= 0.1) {
            point(i, a*sin(b*i) + c);
        }
    }

}


void setup() {
    size(800, 400);
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

