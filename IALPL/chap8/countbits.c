int main() {
    int sum = 0;
    int i = 0;
    unsigned long data = 0xfedcba9876543210;

    while ( i < 64 ) {
        sum += data & 1;
        data = data >> 1;
        i++;
    }

    return sum;
}
