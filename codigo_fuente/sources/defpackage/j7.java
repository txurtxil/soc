package defpackage;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: j7  reason: default package */
/* loaded from: classes.dex */
public final class j7 implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            p7 p7Var = (p7) message.obj;
            int i2 = message.arg1;
            o7 o7Var = p7Var.i;
            AccessibilityManager accessibilityManager = p7Var.q;
            if ((accessibilityManager == null || ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) != null && enabledAccessibilityServiceList.isEmpty())) && o7Var.getVisibility() == 0) {
                if (o7Var.getAnimationMode() == 1) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                    ofFloat.setInterpolator(p7Var.d);
                    ofFloat.addUpdateListener(new i7(p7Var, 0, (byte) 0));
                    ofFloat.setDuration(p7Var.b);
                    ofFloat.addListener(new h7(p7Var, i2, 0));
                    ofFloat.start();
                    return true;
                }
                ValueAnimator valueAnimator = new ValueAnimator();
                o7 o7Var2 = p7Var.i;
                int height = o7Var2.getHeight();
                ViewGroup.LayoutParams layoutParams = o7Var2.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                }
                valueAnimator.setIntValues(0, height);
                valueAnimator.setInterpolator(p7Var.e);
                valueAnimator.setDuration(p7Var.c);
                valueAnimator.addListener(new h7(p7Var, i2, 2));
                valueAnimator.addUpdateListener(new i7(p7Var, 3, (byte) 0));
                valueAnimator.start();
                return true;
            }
            p7Var.a();
            return true;
        }
        p7 p7Var2 = (p7) message.obj;
        o7 o7Var3 = p7Var2.i;
        if (o7Var3.getParent() == null) {
            o7Var3.getLayoutParams();
            ViewGroup viewGroup = p7Var2.g;
            o7Var3.k = true;
            viewGroup.addView(o7Var3);
            o7Var3.k = false;
            p7Var2.d();
            o7Var3.setVisibility(4);
        }
        WeakHashMap weakHashMap = u70.a;
        if (g70.c(o7Var3)) {
            p7Var2.c();
            return true;
        }
        p7Var2.p = true;
        return true;
    }
}
