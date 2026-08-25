package idv.lzn.screenonauto.privileged;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.MotionEvent;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class PrivilegedInputInjector {
    private static final float FLING_SECONDS = 0.192f;
    private static final int FLING_STEPS = 12;
    private static final long FLING_STEP_MS = 16;
    private static final long PINCH_IDLE_MS = 300;
    private static final long STREAM_IDLE_MS = 50;
    private static final float X_PRECISION = 1.0f;
    private static final float Y_PRECISION = 1.0f;
    private static int flingGeneration;
    private static long forwardAnchorUptime;
    private static long forwardCarDownTime;
    private static float forwardLastX;
    private static float forwardLastY;
    private static boolean forwardStreamOpen;
    private static float pinchDesiredFocusX;
    private static float pinchDesiredFocusY;
    private static long pinchDownTime;
    private static float pinchFocusX;
    private static float pinchFocusY;
    private static boolean pinchOpen;
    private static float pinchSpan;
    private static long streamDownTime;
    private static boolean streamOpen;
    private static float streamX;
    private static float streamY;
    public static final PrivilegedInputInjector INSTANCE = new PrivilegedInputInjector();
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static int[] forwardPointerIds = new int[0];
    private static MotionEvent.PointerCoords[] forwardPointerCoords = new MotionEvent.PointerCoords[0];
    private static boolean pinchVertical = true;
    private static final Runnable pinchFinalizeRunnable = new ou(0);
    private static final Runnable finalizeRunnable = new ou(1);

    private PrivilegedInputInjector() {
    }

    private final void finalizePinch() {
        handler.removeCallbacks(pinchFinalizeRunnable);
        if (!pinchOpen) {
            return;
        }
        pinchOpen = false;
        sendPinch(pointerUpAction(1), 2);
        sendPinch(1, 1);
    }

    public static final void finalizeRunnable$lambda$8() {
        INSTANCE.finalizeStream();
    }

    private final void finalizeStream() {
        handler.removeCallbacks(finalizeRunnable);
        if (!streamOpen) {
            return;
        }
        streamOpen = false;
        sendPoint(1, streamX, streamY, streamDownTime, SystemClock.uptimeMillis());
    }

    private final boolean fling(float f, float f2) {
        finalizePinch();
        handler.removeCallbacks(finalizeRunnable);
        float f3 = b00.c;
        float f4 = b00.d;
        if (f3 == 0.0f || f4 == 0.0f) {
            return false;
        }
        if (!streamOpen && !openStream(f3 / 2.0f, f4 / 2.0f)) {
            return onSendFailed();
        }
        final float f5 = streamX;
        final float f6 = streamY;
        final float i = gn.i((f * FLING_SECONDS) + f5, 0.0f, maxX(f3));
        final float i2 = gn.i((f2 * FLING_SECONDS) + f6, 0.0f, maxY(f4));
        final int i3 = flingGeneration + 1;
        flingGeneration = i3;
        for (final int i4 = 1; i4 < 13; i4++) {
            final float f7 = i4 / 12.0f;
            handler.postDelayed(new Runnable() { // from class: pu
                @Override // java.lang.Runnable
                public final void run() {
                    PrivilegedInputInjector.fling$lambda$7(i3, f5, i, f7, f6, i2, i4);
                }
            }, i4 * FLING_STEP_MS);
        }
        return true;
    }

    public static final void fling$lambda$7(int i, float f, float f2, float f3, float f4, float f5, int i2) {
        if (i == flingGeneration && streamOpen) {
            PrivilegedInputInjector privilegedInputInjector = INSTANCE;
            if (!privilegedInputInjector.moveTo(((f2 - f) * f3) + f, ((f5 - f4) * f3) + f4)) {
                privilegedInputInjector.onSendFailed();
            } else if (i2 == 12) {
                privilegedInputInjector.finalizeStream();
            }
        }
    }

    private final float maxX(float f) {
        float f2 = f - 1.0f;
        if (f2 < 0.0f) {
            return 0.0f;
        }
        return f2;
    }

    private final float maxY(float f) {
        float f2 = f - 1.0f;
        if (f2 < 0.0f) {
            return 0.0f;
        }
        return f2;
    }

    private final boolean moveTo(float f, float f2) {
        streamX = f;
        streamY = f2;
        return sendPoint(2, f, f2, streamDownTime, SystemClock.uptimeMillis());
    }

    private final boolean onSendFailed() {
        streamOpen = false;
        pinchOpen = false;
        flingGeneration++;
        Handler handler2 = handler;
        handler2.removeCallbacks(finalizeRunnable);
        handler2.removeCallbacks(pinchFinalizeRunnable);
        return false;
    }

    private final boolean openStream(float f, float f2) {
        long uptimeMillis = SystemClock.uptimeMillis();
        streamDownTime = uptimeMillis;
        streamX = f;
        streamY = f2;
        streamOpen = true;
        return sendPoint(0, f, f2, uptimeMillis, uptimeMillis);
    }

    public static final void pinchFinalizeRunnable$lambda$4() {
        INSTANCE.finalizePinch();
    }

    private final int pointerDownAction(int i) {
        return (i << 8) | 5;
    }

    private final int pointerUpAction(int i) {
        return (i << 8) | 6;
    }

    private final boolean releaseAndDecline() {
        finalizeStream();
        finalizePinch();
        return false;
    }

    private final boolean scale(float f, float f2, float f3) {
        boolean z;
        float f4;
        float f5 = b00.c;
        float f6 = b00.d;
        float f7 = 0.0f;
        if (f5 == 0.0f || f6 == 0.0f || f3 <= 0.0f) {
            return false;
        }
        finalizeStream();
        Handler handler2 = handler;
        Runnable runnable = pinchFinalizeRunnable;
        handler2.removeCallbacks(runnable);
        if (f6 >= f5) {
            z = true;
        } else {
            z = false;
        }
        pinchVertical = z;
        float max = Math.max(f5, f6);
        float f8 = 0.8f * max;
        float applyDimension = max - (TypedValue.applyDimension(5, 10.0f, Resources.getSystem().getDisplayMetrics()) * 2.0f);
        if (applyDimension < 0.0f) {
            applyDimension = 0.0f;
        }
        if (f8 > applyDimension) {
            f8 = applyDimension;
        }
        float applyDimension2 = TypedValue.applyDimension(5, 34.0f, Resources.getSystem().getDisplayMetrics());
        float f9 = 0.9f * f8;
        if (applyDimension2 > f9) {
            applyDimension2 = f9;
        }
        if (!pinchOpen) {
            pinchSpan = (float) Math.sqrt(applyDimension2 * f8);
            pinchDesiredFocusX = f;
            pinchDesiredFocusY = f2;
        }
        float i = gn.i(pinchSpan * f3, applyDimension2, f8);
        pinchSpan = i;
        float f10 = i / 2.0f;
        float f11 = pinchDesiredFocusX;
        float maxX = maxX(f5);
        if (pinchVertical) {
            f4 = 0.0f;
        } else {
            f4 = f10;
        }
        pinchFocusX = em.b(f11, maxX, f4);
        float f12 = pinchDesiredFocusY;
        float maxY = maxY(f6);
        if (pinchVertical) {
            f7 = f10;
        }
        pinchFocusY = em.b(f12, maxY, f7);
        if (!pinchOpen) {
            pinchDownTime = SystemClock.uptimeMillis();
            pinchOpen = true;
            if (!sendPinch(0, 1)) {
                return onSendFailed();
            }
            if (!sendPinch(pointerDownAction(1), 2)) {
                return onSendFailed();
            }
        }
        if (!sendPinch(2, 2)) {
            return onSendFailed();
        }
        handler2.postDelayed(runnable, PINCH_IDLE_MS);
        return true;
    }

    private final boolean scroll(float f, float f2) {
        if (pinchOpen) {
            return true;
        }
        flingGeneration++;
        Handler handler2 = handler;
        Runnable runnable = finalizeRunnable;
        handler2.removeCallbacks(runnable);
        int i = b00.a;
        float f3 = b00.c;
        float f4 = b00.d;
        if (f3 == 0.0f || f4 == 0.0f) {
            return false;
        }
        if (!streamOpen && !openStream(f3 / 2.0f, f4 / 2.0f)) {
            return onSendFailed();
        }
        if (!moveTo(gn.i(streamX - f, 0.0f, maxX(f3)), gn.i(streamY - f2, 0.0f, maxY(f4)))) {
            return onSendFailed();
        }
        handler2.postDelayed(runnable, STREAM_IDLE_MS);
        return true;
    }

    private final boolean send(MotionEvent motionEvent) {
        boolean injectMotionEvent = PrivilegedManager.INSTANCE.injectMotionEvent(motionEvent);
        if (injectMotionEvent) {
            s8.i = SystemClock.uptimeMillis();
        }
        motionEvent.recycle();
        return injectMotionEvent;
    }

    private final boolean sendPinch(int i, int i2) {
        float[] fArr;
        float[] fArr2;
        float f = pinchSpan / 2.0f;
        boolean z = pinchVertical;
        if (z) {
            float f2 = pinchFocusX;
            fArr = new float[]{f2, f2};
        } else {
            float f3 = pinchFocusX;
            fArr = new float[]{f3 - f, f3 + f};
        }
        if (z) {
            float f4 = pinchFocusY;
            fArr2 = new float[]{f4 - f, f4 + f};
        } else {
            float f5 = pinchFocusY;
            fArr2 = new float[]{f5, f5};
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
            pointerProperties.id = i3;
            pointerProperties.toolType = 1;
            pointerPropertiesArr[i3] = pointerProperties;
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
            pointerCoords.x = fArr[i4];
            pointerCoords.y = fArr2[i4];
            pointerCoords.pressure = 1.0f;
            pointerCoords.size = 1.0f;
            pointerCoordsArr[i4] = pointerCoords;
        }
        MotionEvent obtain = MotionEvent.obtain(pinchDownTime, SystemClock.uptimeMillis(), i, i2, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 4098, 0);
        obtain.getClass();
        return send(obtain);
    }

    private final boolean sendPoint(int i, float f, float f2, long j, long j2) {
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 1;
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f;
        pointerCoords.y = f2;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        MotionEvent obtain = MotionEvent.obtain(j, j2, i, 1, pointerPropertiesArr, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0, 1.0f, 1.0f, 0, 0, 4098, 0);
        obtain.getClass();
        return send(obtain);
    }

    private final boolean tap(float f, float f2) {
        finalizeStream();
        finalizePinch();
        int i = b00.a;
        float i2 = gn.i(f, 0.0f, maxX(b00.c));
        float i3 = gn.i(f2, 0.0f, maxY(b00.d));
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!sendPoint(0, i2, i3, uptimeMillis, uptimeMillis)) {
            return onSendFailed();
        }
        if (!sendPoint(1, i2, i3, uptimeMillis, uptimeMillis)) {
            return onSendFailed();
        }
        return true;
    }

    public final void cancelForwardedStream() {
        if (forwardStreamOpen) {
            forwardStreamOpen = false;
            int length = forwardPointerIds.length;
            if (length == 0) {
                return;
            }
            MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[length];
            for (int i = 0; i < length; i++) {
                MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                pointerProperties.id = forwardPointerIds[i];
                pointerProperties.toolType = 1;
                pointerPropertiesArr[i] = pointerProperties;
            }
            MotionEvent obtain = MotionEvent.obtain(forwardAnchorUptime, SystemClock.uptimeMillis(), 3, length, pointerPropertiesArr, forwardPointerCoords, 0, 0, 1.0f, 1.0f, 0, 0, 4098, 0);
            obtain.getClass();
            send(obtain);
        }
    }

    public final boolean forward(MotionEvent motionEvent, float f, float f2, float f3) {
        boolean z;
        long j;
        int i;
        motionEvent.getClass();
        int i2 = b00.a;
        float f4 = b00.c;
        float f5 = b00.d;
        if (f4 == 0.0f || f5 == 0.0f || f <= 0.0f) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (motionEvent.getActionMasked() == 0 || motionEvent.getDownTime() != forwardCarDownTime) {
            forwardCarDownTime = motionEvent.getDownTime();
            forwardAnchorUptime = uptimeMillis;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            z = true;
        } else {
            z = false;
        }
        forwardStreamOpen = z;
        forwardLastX = gn.i((motionEvent.getX() - f2) / f, 0.0f, maxX(f4));
        forwardLastY = gn.i((motionEvent.getY() - f3) / f, 0.0f, maxY(f5));
        long eventTime = (motionEvent.getEventTime() - motionEvent.getDownTime()) + forwardAnchorUptime;
        long j2 = forwardAnchorUptime;
        if (j2 <= uptimeMillis) {
            if (eventTime < j2) {
                j = j2;
            } else if (eventTime > uptimeMillis) {
                j = uptimeMillis;
            } else {
                j = eventTime;
            }
            int pointerCount = motionEvent.getPointerCount();
            MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[pointerCount];
            for (int i3 = 0; i3 < pointerCount; i3++) {
                MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
                motionEvent.getPointerProperties(i3, pointerProperties);
                pointerProperties.toolType = 1;
                pointerPropertiesArr[i3] = pointerProperties;
            }
            MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[pointerCount];
            for (int i4 = 0; i4 < pointerCount; i4++) {
                MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
                motionEvent.getPointerCoords(i4, pointerCoords);
                PrivilegedInputInjector privilegedInputInjector = INSTANCE;
                pointerCoords.x = gn.i((pointerCoords.x - f2) / f, 0.0f, privilegedInputInjector.maxX(f4));
                pointerCoords.y = gn.i((pointerCoords.y - f3) / f, 0.0f, privilegedInputInjector.maxY(f5));
                pointerCoords.pressure = 1.0f;
                pointerCoords.size = 1.0f;
                pointerCoordsArr[i4] = pointerCoords;
            }
            MotionEvent obtain = MotionEvent.obtain(forwardAnchorUptime, j, motionEvent.getAction(), pointerCount, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), motionEvent.getButtonState(), 1.0f, 1.0f, 0, motionEvent.getEdgeFlags(), 4098, 0);
            if (motionEvent.getActionMasked() == 6) {
                i = motionEvent.getActionIndex();
            } else {
                i = -1;
            }
            nj I = gn.I(0, pointerCount);
            ArrayList arrayList = new ArrayList();
            for (Object obj : I) {
                if (((Number) obj).intValue() != i) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            int[] iArr = new int[size];
            for (int i5 = 0; i5 < size; i5++) {
                iArr[i5] = pointerPropertiesArr[((Number) arrayList.get(i5)).intValue()].id;
            }
            forwardPointerIds = iArr;
            int size2 = arrayList.size();
            MotionEvent.PointerCoords[] pointerCoordsArr2 = new MotionEvent.PointerCoords[size2];
            for (int i6 = 0; i6 < size2; i6++) {
                pointerCoordsArr2[i6] = pointerCoordsArr[((Number) arrayList.get(i6)).intValue()];
            }
            forwardPointerCoords = pointerCoordsArr2;
            obtain.getClass();
            return send(obtain);
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + uptimeMillis + " is less than minimum " + j2 + '.');
    }

    public final boolean handleFling(SharedPreferences sharedPreferences, float f, float f2) {
        sharedPreferences.getClass();
        if (!isAvailable(sharedPreferences)) {
            return releaseAndDecline();
        }
        return fling(f, f2);
    }

    public final boolean handleScale(SharedPreferences sharedPreferences, float f, float f2, float f3) {
        sharedPreferences.getClass();
        if (!isAvailable(sharedPreferences)) {
            return releaseAndDecline();
        }
        return scale(f, f2, f3);
    }

    public final boolean handleScroll(SharedPreferences sharedPreferences, float f, float f2) {
        sharedPreferences.getClass();
        if (!isAvailable(sharedPreferences)) {
            return releaseAndDecline();
        }
        return scroll(f, f2);
    }

    public final boolean handleTap(SharedPreferences sharedPreferences, float f, float f2) {
        sharedPreferences.getClass();
        if (!isAvailable(sharedPreferences)) {
            return releaseAndDecline();
        }
        return tap(f, f2);
    }

    public final boolean isAvailable(SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        if (sharedPreferences.getBoolean("root_touch_injection", false)) {
            PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
            if (privilegedManager.isConnected() && privilegedManager.getTouchInjectionSupported()) {
                return true;
            }
        }
        return false;
    }

    public final boolean sendGlobalKey(int i) {
        PrivilegedManager privilegedManager = PrivilegedManager.INSTANCE;
        if (privilegedManager.isConnected() && privilegedManager.getTouchInjectionSupported() && privilegedManager.injectKeyCode(i)) {
            s8.i = SystemClock.uptimeMillis();
            return true;
        }
        return false;
    }
}
