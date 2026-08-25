package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Typeface;
import android.widget.TextView;
import java.io.Serializable;
/* renamed from: c5  reason: default package */
/* loaded from: classes.dex */
public final class c5 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public c5(TextView textView, Typeface typeface, int i) {
        this.a = 0;
        this.c = textView;
        this.d = typeface;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.c;
        int i2 = this.b;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                ((TextView) obj).setTypeface((Typeface) obj2, i2);
                return;
            case 1:
                ga gaVar = (ga) obj2;
                Serializable serializable = (Serializable) ((c9) obj).b;
                String str = (String) gaVar.a.get(Integer.valueOf(i2));
                if (str != null) {
                    w1 w1Var = (w1) gaVar.e.get(str);
                    if (w1Var != null) {
                        s1 s1Var = w1Var.a;
                        if (gaVar.d.remove(str)) {
                            s1Var.a(serializable);
                            return;
                        }
                        return;
                    }
                    gaVar.g.remove(str);
                    gaVar.f.put(str, serializable);
                    return;
                }
                return;
            default:
                ((ga) obj2).a(i2, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) obj));
                return;
        }
    }

    public /* synthetic */ c5(ga gaVar, int i, Object obj, int i2) {
        this.a = i2;
        this.d = gaVar;
        this.b = i;
        this.c = obj;
    }
}
