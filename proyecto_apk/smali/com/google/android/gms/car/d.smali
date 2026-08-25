.class public abstract Lcom/google/android/gms/car/d;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/car/CarActivityServiceProxy$ServiceCallbacks;


# instance fields
.field private a:Lcom/google/android/gms/car/CarActivityServiceProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/car/CarActivityServiceProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public abstract getCarActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lbb0;",
            ">;"
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0}, Lza0;->c(Landroid/content/Context;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "newCarActivityServiceProxy"

    .line 13
    .line 14
    const-class v2, Landroid/content/Context;

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/gms/car/CarActivityServiceProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .line 35
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception p0

    .line 41
    new-instance v0, Lab0;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0
    :try_end_1
    .catch Lab0; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_0
    const-string v0, "CAR.PROJECTION"

    .line 48
    .line 49
    const-string v1, "Error loading car activity host"

    .line 50
    .line 51
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lc2;->k(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    .line 59
    .line 60
    invoke-interface {v0, p0, p0}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onCreate(Landroid/app/Service;Lcom/google/android/gms/car/CarActivityServiceProxy$ServiceCallbacks;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {v0}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {p0}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onLowMemory()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/car/d;->a:Lcom/google/android/gms/car/CarActivityServiceProxy;

    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarActivityServiceProxy;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
