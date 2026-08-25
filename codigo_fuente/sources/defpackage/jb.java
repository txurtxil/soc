package defpackage;

import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import idv.lzn.screenonauto.SettingsFragment;
/* renamed from: jb  reason: default package */
/* loaded from: classes.dex */
public final class jb extends ContentObserver {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb(m30 m30Var) {
        super(new Handler());
        this.b = m30Var;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.a) {
            case 0:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        Cursor cursor;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                m30 m30Var = (m30) obj;
                if (m30Var.b && (cursor = m30Var.c) != null && !cursor.isClosed()) {
                    m30Var.a = m30Var.c.requery();
                    return;
                }
                return;
            default:
                SettingsFragment settingsFragment = (SettingsFragment) obj;
                settingsFragment.T();
                settingsFragment.Q();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb(SettingsFragment settingsFragment, Handler handler) {
        super(handler);
        this.b = settingsFragment;
    }
}
