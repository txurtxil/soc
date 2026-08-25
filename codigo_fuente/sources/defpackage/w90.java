package defpackage;

import android.content.Context;
import android.os.Handler;
/* renamed from: w90  reason: default package */
/* loaded from: classes.dex */
public abstract class w90 {
    private final Handler c;
    private final Context mContext;
    private final v90 r;

    public w90(Context context, v90 v90Var, Handler handler) {
        this.mContext = context;
        this.r = v90Var;
        this.c = handler;
    }

    public v90 getConnectionCallback() {
        return this.r;
    }

    public Context getContext() {
        return this.mContext;
    }

    public Handler getEventHandler() {
        return this.c;
    }
}
