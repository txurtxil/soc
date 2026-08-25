.class public Landroidx/car/app/IAppHost$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/car/app/IAppHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/IAppHost;
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

.method public dismissAlert(I)V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public openMicrophone(Lx7;)Lx7;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public sendLocation(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public setSurfaceCallback(Landroidx/car/app/ISurfaceCallback;)V
    .locals 0

    return-void
.end method

.method public showAlert(Lx7;)V
    .locals 0

    .line 1
    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method
