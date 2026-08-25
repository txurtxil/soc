.class public final synthetic Le6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai;
.implements Lix;
.implements Ls1;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le6;->a:Ljava/lang/Object;

    iput-object p2, p0, Le6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/car/app/CarAppPermissionActivity;

    .line 4
    .line 5
    iget-object p0, p0, Le6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/car/app/IOnRequestPermissionsListener;

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    sget v1, Landroidx/car/app/CarAppPermissionActivity;->t:I

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/Boolean;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p1, 0x0

    .line 78
    :try_start_0
    new-array v3, p1, [Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, [Ljava/lang/String;

    .line 85
    .line 86
    new-array p1, p1, [Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, [Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {p0, v1, p1}, Landroidx/car/app/IOnRequestPermissionsListener;->onRequestPermissionsResult([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "CarApp"

    .line 100
    .line 101
    const-string v1, "CarAppService dead when accepting/rejecting permissions"

    .line 102
    .line 103
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/car/app/IStartCarApp;

    .line 4
    .line 5
    iget-object p0, p0, Le6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/content/Intent;

    .line 8
    .line 9
    sget v1, Landroidx/car/app/notification/CarAppNotificationBroadcastReceiver;->a:I

    .line 10
    .line 11
    invoke-interface {v0, p0}, Landroidx/car/app/IStartCarApp;->startCarApp(Landroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public e(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/car/app/b;

    .line 4
    .line 5
    iget-object p0, p0, Le6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lko;

    .line 8
    .line 9
    check-cast p1, Landroidx/car/app/IAppHost;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroidx/car/app/utils/e;->h(Landroidx/lifecycle/a;Lko;)Landroidx/car/app/ISurfaceCallback;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p1, p0}, Landroidx/car/app/IAppHost;->setSurfaceCallback(Landroidx/car/app/ISurfaceCallback;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
