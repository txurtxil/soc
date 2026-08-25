package defpackage;

import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
/* renamed from: fo  reason: default package */
/* loaded from: classes.dex */
public abstract class fo {
    public boolean c;
    public db0 e;
    public final Object a = new Object();
    public final eo b = new eo(this);
    public WeakReference d = new WeakReference(null);

    public final void a(go goVar, Handler handler) {
        long j;
        boolean z;
        boolean z2;
        if (this.c) {
            boolean z3 = false;
            this.c = false;
            handler.removeMessages(1);
            PlaybackStateCompat playbackStateCompat = goVar.f;
            if (playbackStateCompat == null) {
                j = 0;
            } else {
                j = playbackStateCompat.e;
            }
            if (playbackStateCompat != null && playbackStateCompat.a == 3) {
                z = true;
            } else {
                z = false;
            }
            if ((516 & j) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((j & 514) != 0) {
                z3 = true;
            }
            if (z && z3) {
                d();
            } else if (!z && z2) {
                e();
            }
        }
    }

    public boolean c(Intent intent) {
        go goVar;
        db0 db0Var;
        KeyEvent keyEvent;
        long j;
        if (Build.VERSION.SDK_INT < 27) {
            synchronized (this.a) {
                goVar = (go) this.d.get();
                db0Var = this.e;
            }
            if (goVar != null && db0Var != null && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null && keyEvent.getAction() == 0) {
                lo b = goVar.b();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 79 && keyCode != 85) {
                    a(goVar, db0Var);
                    return false;
                } else if (keyEvent.getRepeatCount() == 0) {
                    if (this.c) {
                        db0Var.removeMessages(1);
                        this.c = false;
                        PlaybackStateCompat playbackStateCompat = goVar.f;
                        if (playbackStateCompat == null) {
                            j = 0;
                        } else {
                            j = playbackStateCompat.e;
                        }
                        if ((j & 32) != 0) {
                            g();
                        }
                        return true;
                    }
                    this.c = true;
                    db0Var.sendMessageDelayed(db0Var.obtainMessage(1, b), ViewConfiguration.getDoubleTapTimeout());
                    return true;
                } else {
                    a(goVar, db0Var);
                    return true;
                }
            }
        }
        return false;
    }

    public void b() {
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public void h() {
    }

    public void j() {
    }

    public void i(long j) {
    }
}
