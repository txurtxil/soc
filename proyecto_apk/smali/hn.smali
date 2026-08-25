.class public final Lhn;
.super Lqn;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lkn;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lvn;


# direct methods
.method public constructor <init>(Lvn;Ljava/lang/String;Lkn;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhn;->g:Lvn;

    .line 2
    .line 3
    iput-object p3, p0, Lhn;->d:Lkn;

    .line 4
    .line 5
    iput-object p4, p0, Lhn;->e:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lhn;->f:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lqn;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lhn;->g:Lvn;

    .line 4
    .line 5
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 6
    .line 7
    iget-object v1, p0, Lhn;->d:Lkn;

    .line 8
    .line 9
    iget-object v2, v1, Lkn;->d:Lc9;

    .line 10
    .line 11
    iget-object v3, v1, Lkn;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, v2, Lc9;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Landroid/os/Messenger;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual {v0, v4, v5}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "MBServiceCompat"

    .line 27
    .line 28
    iget-object v5, p0, Lhn;->e:Ljava/lang/String;

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    sget-boolean p0, Lvn;->g:Z

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, "Not sending onLoadChildren result for connection that has been disconnected. pkg="

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " id="

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void

    .line 62
    :cond_1
    iget v0, p0, Lqn;->c:I

    .line 63
    .line 64
    and-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    iget-object p0, p0, Lhn;->f:Landroid/os/Bundle;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {p1, p0}, Lvn;->a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    :try_start_0
    invoke-virtual {v2, v5, p1, p0}, Lc9;->u(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p1, "Calling onLoadChildren() failed for id="

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " package="

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return-void
.end method
