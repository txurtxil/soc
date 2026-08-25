.class public interface abstract Lcom/google/android/gms/car/CarApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarApi$CarConnectionCallback;
    }
.end annotation


# virtual methods
.method public abstract getCarConnectionType()I
.end method

.method public abstract getCarManager(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getVendorExtensionManager(Ljava/lang/String;)Lcom/google/android/gms/car/CarVendorExtensionManager;
.end method

.method public abstract isConnectedToCar()Z
.end method

.method public abstract registerCarConnectionListener(Lcom/google/android/gms/car/CarApi$CarConnectionCallback;)V
.end method

.method public abstract unregisterCarConnectionListener(Lcom/google/android/gms/car/CarApi$CarConnectionCallback;)V
.end method
