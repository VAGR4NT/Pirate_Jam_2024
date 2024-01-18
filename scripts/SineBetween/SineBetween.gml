function SineBetween(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return SineWave(time, period, amplitude, midpoint);
}