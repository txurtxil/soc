.class public interface abstract Lidv/lzn/screenonauto/privileged/IPrivilegedService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lidv/lzn/screenonauto/privileged/IPrivilegedService$_Parcel;,
        Lidv/lzn/screenonauto/privileged/IPrivilegedService$Stub;,
        Lidv/lzn/screenonauto/privileged/IPrivilegedService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "idv.lzn.screenonauto.privileged.IPrivilegedService"


# virtual methods
.method public abstract attachClient(Landroid/os/IBinder;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract displayPowerModeStatus()I
.end method

.method public abstract injectKeyCode(I)V
.end method

.method public abstract injectMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract isTouchInjectionSupported()Z
.end method

.method public abstract setDisplayPowerMode(I)Z
.end method
