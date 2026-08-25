.class public interface abstract Lcom/google/android/gms/car/CarSensorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;,
        Lcom/google/android/gms/car/CarSensorManager$RawEventData;
    }
.end annotation


# virtual methods
.method public abstract getLatestSensorEvent(I)Lcom/google/android/gms/car/CarSensorManager$RawEventData;
.end method

.method public abstract getSupportedSensors()[I
.end method

.method public abstract isSensorSupported(I)Z
.end method

.method public abstract registerListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;II)Z
.end method

.method public abstract unregisterListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;)V
.end method

.method public abstract unregisterListener(Lcom/google/android/gms/car/CarSensorManager$CarSensorEventListener;I)V
.end method
