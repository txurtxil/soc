package com.google.android.gms.car;
/* loaded from: classes.dex */
public interface CarSensorManager {

    /* loaded from: classes.dex */
    public interface CarSensorEventListener {
        void onSensorChanged(int i, long j, float[] fArr, byte[] bArr);
    }

    /* loaded from: classes.dex */
    public static class RawEventData {
        public final byte[] byteValues;
        public final float[] floatValues;
        public final int sensorType;
        public final long timeStamp;

        public RawEventData(int i, long j, float[] fArr, byte[] bArr) {
            this.sensorType = i;
            this.timeStamp = j;
            this.floatValues = fArr;
            this.byteValues = bArr;
        }
    }

    RawEventData getLatestSensorEvent(int i);

    int[] getSupportedSensors();

    boolean isSensorSupported(int i);

    boolean registerListener(CarSensorEventListener carSensorEventListener, int i, int i2);

    void unregisterListener(CarSensorEventListener carSensorEventListener);

    void unregisterListener(CarSensorEventListener carSensorEventListener, int i);
}
