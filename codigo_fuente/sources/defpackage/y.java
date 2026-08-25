package defpackage;

import android.media.session.MediaSessionManager;
import android.text.PrecomputedText;
import android.text.TextPaint;
/* renamed from: y  reason: default package */
/* loaded from: classes.dex */
public abstract /* synthetic */ class y {
    public static /* synthetic */ PrecomputedText.Params.Builder h(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    public static /* synthetic */ void o(int i, int i2, String str) {
        new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public static /* bridge */ /* synthetic */ boolean u(CharSequence charSequence) {
        return charSequence instanceof PrecomputedText;
    }
}
