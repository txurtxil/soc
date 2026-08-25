.class public Lidv/lzn/screenonauto/privileged/IPrivilegedService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lidv/lzn/screenonauto/privileged/IPrivilegedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lidv/lzn/screenonauto/privileged/IPrivilegedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public attachClient(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public displayPowerModeStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public injectKeyCode(I)V
    .locals 0

    return-void
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public isTouchInjectionSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayPowerMode(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
