package defpackage;

import android.os.FileObserver;
import java.io.File;
/* renamed from: vy  reason: default package */
/* loaded from: classes.dex */
public final class vy extends FileObserver {
    public final String a;

    public vy(yy yyVar, File file) {
        super(file.getParent(), 1984);
        file.getParent();
        this.a = file.getName();
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        if (i != 1024 && !this.a.equals(str)) {
            return;
        }
        System.exit(0);
    }
}
