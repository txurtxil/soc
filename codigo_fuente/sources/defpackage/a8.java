package defpackage;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: a8  reason: default package */
/* loaded from: classes.dex */
public final class a8 implements AutoCloseable {
    public final String[] a;
    public final ArrayDeque b;

    public a8(Object obj, String str, ArrayDeque arrayDeque) {
        this.b = arrayDeque;
        if (obj != null) {
            arrayDeque.addFirst(new z7(obj, str));
            if (Log.isLoggable("CarApp.Bun", 2)) {
                int min = Math.min(arrayDeque.size(), 11);
                if (this.a == null) {
                    this.a = new String[12];
                }
                String str2 = this.a[min];
                if (str2 == null) {
                    char[] cArr = new char[min];
                    Arrays.fill(cArr, ' ');
                    String str3 = new String(cArr);
                    if (min == 11) {
                        str2 = str3.concat("...");
                    } else {
                        str2 = str3;
                    }
                    this.a[min] = str2;
                }
                Log.v("CarApp.Bun", str2.concat(c8.i(obj.getClass()) + " " + str));
            }
        }
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        ArrayDeque arrayDeque = this.b;
        int min = Math.min(arrayDeque.size(), 8);
        Iterator descendingIterator = arrayDeque.descendingIterator();
        while (descendingIterator.hasNext()) {
            int i = min - 1;
            if (min <= 0) {
                break;
            }
            sb.append(((z7) descendingIterator.next()).a());
            min = i;
        }
        if (descendingIterator.hasNext()) {
            sb.append("[...]");
        }
        return sb.toString();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.b.removeFirst();
    }
}
