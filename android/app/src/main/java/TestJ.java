import android.util.Log;

public class TestJ {
    public static void test() {
        Integer a = 1;
        Integer b = 2;
        Integer c = 3;
        Integer d = 3;
        Integer e = 32;
        Integer f = 32;
        Long g = 3L;
        Log.d("tag", String.valueOf(c == d));
        Log.d("tag", String.valueOf(e == f));
        Log.d("tag", String.valueOf(c == (a + b)));
        Log.d("tag", String.valueOf(c.equals(a + b)));
        Log.d("tag", String.valueOf(g == (a + b)));
        Log.d("tag", String.valueOf(g.equals(a + b)));
    }

}
