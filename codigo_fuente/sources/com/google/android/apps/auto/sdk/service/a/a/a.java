package com.google.android.apps.auto.sdk.service.a.a;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.util.Log;
import com.google.android.gms.car.CarAudioManager;
import com.google.android.gms.car.CarNotConnectedException;
import com.google.android.gms.car.CarNotSupportedException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public final class a extends ta0 {
    private static final AudioFormat c = new AudioFormat.Builder().setEncoding(2).setChannelMask(16).setSampleRate(16000).build();
    private final AudioManager a;
    private final CarAudioManager b;

    public a(AudioManager audioManager, CarAudioManager carAudioManager) {
        this.a = audioManager;
        this.b = carAudioManager;
    }

    private static AudioAttributes a(int i, int i2) {
        return new AudioAttributes.Builder().setContentType(i).setUsage(i2).build();
    }

    public final void abandonAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes) {
        this.a.abandonAudioFocus(onAudioFocusChangeListener);
    }

    public final ua0 createCarAudioRecord(int i) {
        try {
            return new b(this.b.createCarAudioRecord(0, 0, i));
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        } catch (CarNotSupportedException e2) {
            throw new UnsupportedOperationException(e2);
        }
    }

    public final AudioAttributes getAudioAttributesForCarUsage(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
                return a(2, 1);
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return a(1, 12);
            case 8:
            case 9:
                return a(4, 13);
            default:
                StringBuilder sb = new StringBuilder(64);
                sb.append("An unknown audio usage was passed in.  Audio usage = ");
                sb.append(i);
                Log.i("CarAudioManagerGms", sb.toString());
                return a(0, 0);
        }
    }

    public final AudioFormat getAudioRecordAudioFormat() {
        return c;
    }

    public final int getAudioRecordMaxBufferSize() {
        return 524288;
    }

    public final int getAudioRecordMinBufferSize() {
        try {
            return this.b.getAudioRecordMinBufferSize(0, 0);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        } catch (CarNotSupportedException e2) {
            throw new UnsupportedOperationException(e2);
        }
    }

    public final boolean isAudioRecordSupported() {
        try {
            return this.b.isAudioRecordStreamSupported(0);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final boolean isMediaMuted() {
        return false;
    }

    public final void onCarDisconnected() {
    }

    public final int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes, int i, int i2) {
        try {
            Class<?> cls = this.a.getClass();
            Class cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("requestAudioFocus", AudioManager.OnAudioFocusChangeListener.class, AudioAttributes.class, cls2, cls2).invoke(this.a, onAudioFocusChangeListener, audioAttributes, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.w("CarAudioManagerGms", "Audio focus request failed", e);
            return 0;
        }
    }

    public final boolean setMediaMute(boolean z) {
        return false;
    }

    public final int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, AudioAttributes audioAttributes, int i) {
        return requestAudioFocus(onAudioFocusChangeListener, audioAttributes, i, 0);
    }
}
