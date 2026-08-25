package defpackage;
/* renamed from: d8  reason: default package */
/* loaded from: classes.dex */
public final class d8 implements Runnable {
    public final /* synthetic */ int a = 1;

    public /* synthetic */ d8() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.a) {
            case 0:
                return;
            default:
                try {
                    int i = n50.a;
                    m50.a("EmojiCompat.EmojiCompatInitializer.run");
                    if (td.j != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        td.a().c();
                    }
                    m50.b();
                    return;
                } catch (Throwable th) {
                    int i2 = n50.a;
                    m50.b();
                    throw th;
                }
        }
    }

    public d8(c9 c9Var, int i) {
    }

    private final void a() {
    }
}
