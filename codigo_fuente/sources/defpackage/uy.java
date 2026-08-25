package defpackage;

import android.content.ComponentName;
/* renamed from: uy  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class uy implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ yy b;
    public final /* synthetic */ ComponentName c;

    public /* synthetic */ uy(yy yyVar, ComponentName componentName, int i) {
        this.a = i;
        this.b = yyVar;
        this.c = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        ComponentName componentName = this.c;
        yy yyVar = this.b;
        switch (i) {
            case 0:
                componentName.getClassName();
                yyVar.j(-1, componentName);
                return;
            default:
                yyVar.b.remove(componentName);
                return;
        }
    }
}
