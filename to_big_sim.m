function A = to_big_sim(sim)
A = [
    sim(1)  -sim(4) sim(3)  sim(5)
    sim(4)  sim(1)  -sim(2) sim(6)
    -sim(3) sim(2)  sim(1)  sim(7)
    0       0       0       1
];