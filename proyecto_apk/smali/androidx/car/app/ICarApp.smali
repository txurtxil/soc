.class public interface abstract Landroidx/car/app/ICarApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/ICarApp$Stub;,
        Landroidx/car/app/ICarApp$Default;
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
    const-string v2, "androidx$car$app$ICarApp"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/car/app/ICarApp;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract getAppInfo(Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract getManager(Ljava/lang/String;Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onAppCreate(Landroidx/car/app/ICarHost;Landroid/content/Intent;Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onAppPause(Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onAppResume(Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onAppStart(Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onAppStop(Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onHandshakeCompleted(Lx7;Landroidx/car/app/IOnDoneCallback;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;Landroidx/car/app/IOnDoneCallback;)V
.end method
