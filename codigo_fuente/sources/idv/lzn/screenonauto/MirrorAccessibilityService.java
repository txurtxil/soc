package idv.lzn.screenonauto;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.GestureDescription;
import android.content.Intent;
import android.graphics.Path;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.accessibility.AccessibilityEvent;
/* loaded from: classes.dex */
public final class MirrorAccessibilityService extends AccessibilityService {
    public static MirrorAccessibilityService s;
    public GestureDescription.StrokeDescription b;
    public float c;
    public float d;
    public boolean e;
    public float f;
    public float g;
    public boolean h;
    public float i;
    public float j;
    public boolean m;
    public float o;
    public float q;
    public final Handler a = new Handler(Looper.getMainLooper());
    public final aq k = new aq(this);
    public final xp l = new xp(this, 3);
    public float n = 1.0f;
    public final xp r = new xp(this, 4);

    public final void a(float f, float f2) {
        float f3;
        float f4;
        GestureDescription.StrokeDescription strokeDescription;
        Object cyVar;
        float f5 = b00.c;
        float f6 = b00.d;
        GestureDescription.StrokeDescription strokeDescription2 = this.b;
        this.b = null;
        if (f5 != 0.0f && f6 != 0.0f) {
            if (strokeDescription2 != null) {
                f3 = this.c;
            } else {
                f3 = f5 / 2.0f;
            }
            if (strokeDescription2 != null) {
                f4 = this.d;
            } else {
                f4 = f6 / 2.0f;
            }
            float i = gn.i((f * 0.2f) + f3, 1.0f, f5 - 1.0f);
            float i2 = gn.i((f2 * 0.2f) + f4, 1.0f, f6 - 1.0f);
            if (f3 == i && f4 == i2) {
                return;
            }
            Path path = new Path();
            path.moveTo(f3, f4);
            path.lineTo(i, i2);
            if (strokeDescription2 != null && Build.VERSION.SDK_INT >= 26) {
                try {
                    cyVar = strokeDescription2.continueStroke(path, 0L, 200L, false);
                } catch (Throwable th) {
                    cyVar = new cy(th);
                }
                if (dy.a(cyVar) != null) {
                    cyVar = new GestureDescription.StrokeDescription(path, 0L, 200L);
                }
                strokeDescription = (GestureDescription.StrokeDescription) cyVar;
            } else {
                strokeDescription = new GestureDescription.StrokeDescription(path, 0L, 200L);
            }
            GestureDescription build = new GestureDescription.Builder().addStroke(strokeDescription).build();
            build.getClass();
            s8.i = SystemClock.uptimeMillis();
            dispatchGesture(build, null, null);
        }
    }

    public final void b(float f, float f2) {
        Object cyVar;
        float f3 = b00.c;
        float f4 = b00.d;
        if (f3 != 0.0f && f4 != 0.0f) {
            GestureDescription.StrokeDescription strokeDescription = this.b;
            if (strokeDescription == null) {
                this.c = f3 / 2.0f;
                this.d = f4 / 2.0f;
            }
            float i = gn.i(this.c - f, 0.0f, f3);
            float i2 = gn.i(this.d - f2, 0.0f, f4);
            if (this.c != i || this.d != i2) {
                Path path = new Path();
                path.moveTo(this.c, this.d);
                path.lineTo(i, i2);
                this.c = i;
                this.d = i2;
                try {
                    if (strokeDescription != null) {
                        cyVar = strokeDescription.continueStroke(path, 0L, 16L, true);
                    } else {
                        cyVar = d0.c(path);
                    }
                } catch (Throwable th) {
                    cyVar = new cy(th);
                }
                if (dy.a(cyVar) != null) {
                    this.b = null;
                    cyVar = d0.c(path);
                }
                GestureDescription.StrokeDescription strokeDescription2 = (GestureDescription.StrokeDescription) cyVar;
                this.b = strokeDescription2;
                this.e = true;
                GestureDescription build = new GestureDescription.Builder().addStroke(strokeDescription2).build();
                build.getClass();
                aq aqVar = this.k;
                s8.i = SystemClock.uptimeMillis();
                if (!dispatchGesture(build, aqVar, null)) {
                    this.b = null;
                    this.e = false;
                }
            }
        }
    }

    public final void c() {
        GestureDescription.StrokeDescription continueStroke;
        GestureDescription.StrokeDescription strokeDescription = this.b;
        if (strokeDescription != null) {
            this.b = null;
            Path path = new Path();
            path.moveTo(this.c, this.d);
            path.lineTo(this.c + 1.0f, this.d);
            try {
                continueStroke = strokeDescription.continueStroke(path, 0L, 16L, false);
                this.e = true;
                GestureDescription build = new GestureDescription.Builder().addStroke(continueStroke).build();
                build.getClass();
                aq aqVar = this.k;
                s8.i = SystemClock.uptimeMillis();
                if (!dispatchGesture(build, aqVar, null)) {
                    this.e = false;
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() {
        super.onServiceConnected();
        s = this;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        s = null;
        return super.onUnbind(intent);
    }
}
