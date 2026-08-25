package defpackage;

import android.content.ComponentName;
/* renamed from: ty  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class ty implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ yy b;
    public final /* synthetic */ ComponentName c;
    public final /* synthetic */ int d;

    public /* synthetic */ ty(yy yyVar, ComponentName componentName, int i, int i2) {
        this.a = i2;
        this.b = yyVar;
        this.c = componentName;
        this.d = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        int i2 = this.d;
        ComponentName componentName = this.c;
        yy yyVar = this.b;
        switch (i) {
            case 0:
                componentName.getClassName();
                yyVar.j(i2, componentName);
                return;
            default:
                componentName.getClassName();
                yyVar.j(-1, componentName);
                yyVar.h(i2);
                return;
        }
    }
}
