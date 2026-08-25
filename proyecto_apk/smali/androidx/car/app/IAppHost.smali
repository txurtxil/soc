.class public interface abstract Landroidx/car/app/IAppHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/IAppHost$Stub;,
        Landroidx/car/app/IAppHost$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, "androidx$car$app$IAppHost"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/car/app/IAppHost;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract dismissAlert(I)V
.end method

.method public abstract invalidate()V
.end method

.method public abstract openMicrophone(Lx7;)Lx7;
.end method

.method public abstract sendLocation(Landroid/location/Location;)V
.end method

.method public abstract setSurfaceCallback(Landroidx/car/app/ISurfaceCallback;)V
.end method

.method public abstract showAlert(Lx7;)V
.end method

.method public abstract showToast(Ljava/lang/CharSequence;I)V
.end method
