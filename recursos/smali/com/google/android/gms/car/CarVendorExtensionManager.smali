.class public interface abstract Lcom/google/android/gms/car/CarVendorExtensionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarVendorExtensionManager$CarVendorExtensionListener;
    }
.end annotation


# virtual methods
.method public abstract getServiceData()[B
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract registerListener(Lcom/google/android/gms/car/CarVendorExtensionManager$CarVendorExtensionListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract sendData([B)V
.end method

.method public abstract sendData([BII)V
.end method

.method public abstract unregisterListener()V
.end method
