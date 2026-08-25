package defpackage;

import android.text.TextUtils;
import java.io.IOException;
/* renamed from: u7  reason: default package */
/* loaded from: classes.dex */
public final class u7 {
    public long a;

    public final q10 a(Process process) {
        try {
            q10 q10Var = new q10(this, process);
            synchronized (em.class) {
                if (em.b) {
                    q10[] q10VarArr = em.a;
                    synchronized (q10VarArr) {
                        q10VarArr[0] = q10Var;
                    }
                }
            }
            return q10Var;
        } catch (IOException e) {
            throw new RuntimeException("Unable to create a shell!", e);
        }
    }

    public final q10 b(String... strArr) {
        try {
            TextUtils.join(" ", strArr);
            return a(Runtime.getRuntime().exec(strArr));
        } catch (IOException e) {
            throw new RuntimeException("Unable to create a shell!", e);
        }
    }
}
