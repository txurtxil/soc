.class public final Lry;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Messenger;

.field public final synthetic b:Lsy;


# direct methods
.method public constructor <init>(Lsy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lry;->b:Lsy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Landroid/os/Messenger;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lry;->a:Landroid/os/Messenger;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lry;->b:Lsy;

    .line 2
    .line 3
    iget-object v0, p1, Lsy;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string v1, "extra.bundle"

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    const-string v2, "binder"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    sget-object v2, Lyy;->e:Lyy;

    .line 24
    .line 25
    const-string v2, "com.topjohnwu.superuser.internal.IRootServiceManager"

    .line 26
    .line 27
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    instance-of v3, v2, Lni;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    check-cast v2, Lni;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v2, Lmi;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v2, Lmi;->a:Landroid/os/IBinder;

    .line 46
    .line 47
    :goto_0
    :try_start_0
    iget-object p0, p0, Lry;->a:Landroid/os/Messenger;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {v2, p0}, Lni;->b(Landroid/os/IBinder;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Loy;

    .line 57
    .line 58
    invoke-direct {p0, p1, v2}, Loy;-><init>(Lsy;Lni;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "extra.daemon"

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iput-object p0, p1, Lsy;->b:Loy;

    .line 71
    .line 72
    iget p0, p1, Lsy;->c:I

    .line 73
    .line 74
    and-int/lit8 p0, p0, -0x3

    .line 75
    .line 76
    iput p0, p1, Lsy;->c:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iput-object p0, p1, Lsy;->a:Loy;

    .line 80
    .line 81
    iget p0, p1, Lsy;->c:I

    .line 82
    .line 83
    and-int/lit8 p0, p0, -0x2

    .line 84
    .line 85
    iput p0, p1, Lsy;->c:I

    .line 86
    .line 87
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    add-int/lit8 p0, p0, -0x1

    .line 92
    .line 93
    :goto_2
    if-ltz p0, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lky;

    .line 100
    .line 101
    iget-object p2, p1, Lky;->a:Lsy;

    .line 102
    .line 103
    iget-object v1, p1, Lky;->b:Landroid/content/Intent;

    .line 104
    .line 105
    iget-object v2, p1, Lky;->c:Ljava/util/concurrent/Executor;

    .line 106
    .line 107
    iget-object p1, p1, Lky;->d:Landroid/content/ServiceConnection;

    .line 108
    .line 109
    invoke-virtual {p2, v1, v2, p1}, Lsy;->a(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Lqy;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-nez p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    :cond_4
    add-int/lit8 p0, p0, -0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    :goto_3
    return-void

    .line 122
    :catch_0
    move-exception p0

    .line 123
    const-string p1, "IPC"

    .line 124
    .line 125
    invoke-static {p1, p0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
