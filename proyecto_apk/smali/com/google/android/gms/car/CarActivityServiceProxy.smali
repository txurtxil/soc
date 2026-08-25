.class public interface abstract Lcom/google/android/gms/car/CarActivityServiceProxy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/car/CarActivityServiceProxy$ServiceCallbacks;
    }
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getActivityInstance()Ljava/lang/Object;
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/app/Service;Lcom/google/android/gms/car/CarActivityServiceProxy$ServiceCallbacks;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onUnbind(Landroid/content/Intent;)Z
.end method
