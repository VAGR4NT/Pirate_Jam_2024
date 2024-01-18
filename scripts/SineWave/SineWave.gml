function SineWave(time, period, amplitude, midpoint){
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}
