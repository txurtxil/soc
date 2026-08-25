.class public interface abstract Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;
    }
.end annotation


# static fields
.field public static final PERMISSION_VENDOR_EXTENSION:Ljava/lang/String; = "com.google.android.gms.permission.CAR_VENDOR_EXTENSION"


# virtual methods
.method public abstract getServiceData()[B
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract registerListener(Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract sendData([B)V
.end method

.method public abstract sendData([BII)V
.end method

.method public abstract unregisterListener()V
.end method
