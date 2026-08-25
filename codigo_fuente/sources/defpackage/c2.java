package defpackage;

import android.os.IInterface;
import androidx.car.app.IAppHost;
import java.io.FileNotFoundException;
/* renamed from: c2 */
/* loaded from: classes.dex */
public final /* synthetic */ class c2 implements ai {
    public static /* synthetic */ void a() {
        throw new AssertionError();
    }

    public static /* synthetic */ void b(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) ": Duplicate id 0x");
        sb.append(obj2);
        sb.append((Object) ", tag ");
        sb.append(obj3);
        sb.append((Object) ", or parent id 0x");
        sb.append(obj4);
        sb.append((Object) " with another fragment for ");
        sb.append(obj5);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void c(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void d(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void f(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void g(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void h(String str, int i, Object obj) {
        throw new IllegalArgumentException(str + i + obj);
    }

    public static /* synthetic */ void i(String str, int i, Object obj, int i2) {
        throw new IndexOutOfBoundsException(str + i + obj + i2);
    }

    public static /* synthetic */ void j(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void k(Throwable th) {
        throw new RuntimeException(th);
    }

    public static /* synthetic */ void l() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void n(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void o(Object obj, String str) {
        throw new FileNotFoundException(str + obj);
    }

    public static /* synthetic */ void p(Object obj, String str) {
        throw new IllegalStateException(str + obj);
    }

    @Override // defpackage.ai
    public void e(IInterface iInterface) {
        ((IAppHost) iInterface).invalidate();
    }
}
