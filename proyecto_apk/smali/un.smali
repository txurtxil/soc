.class public final Lun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc9;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lgy;

.field public final synthetic e:Lc9;


# direct methods
.method public constructor <init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/Bundle;Lgy;)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Lun;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lun;->e:Lc9;

    iput-object p2, p0, Lun;->b:Lc9;

    iput-object p3, p0, Lun;->c:Ljava/lang/String;

    iput-object p5, p0, Lun;->d:Lgy;

    return-void
.end method

.method public constructor <init>(Lc9;Lc9;Ljava/lang/String;Lgy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lun;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lun;->e:Lc9;

    .line 8
    .line 9
    iput-object p2, p0, Lun;->b:Lc9;

    .line 10
    .line 11
    iput-object p3, p0, Lun;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lun;->d:Lgy;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lun;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lun;->d:Lgy;

    .line 5
    .line 6
    const-string v3, "MBServiceCompat"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lun;->e:Lc9;

    .line 10
    .line 11
    iget-object v6, p0, Lun;->b:Lc9;

    .line 12
    .line 13
    iget-object p0, p0, Lun;->c:Ljava/lang/String;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v6, Lc9;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/os/Messenger;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v5, v5, Lc9;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Lvn;

    .line 29
    .line 30
    iget-object v5, v5, Lvn;->d:Lu6;

    .line 31
    .line 32
    invoke-virtual {v5, v0, v4}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lkn;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "search for callback that isn\'t registered query="

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lin;

    .line 59
    .line 60
    invoke-direct {v0, p0, v1, v2}, Lin;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    iput v1, v0, Lqn;->c:I

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lqn;->b(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, v0, Lqn;->b:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "onSearch must call detach() or sendResult() before returning for query="

    .line 75
    .line 76
    invoke-static {p0, v0}, Lc2;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, v6, Lc9;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Landroid/os/Messenger;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v5, v5, Lc9;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Lvn;

    .line 91
    .line 92
    iget-object v5, v5, Lvn;->d:Lu6;

    .line 93
    .line 94
    invoke-virtual {v5, v0, v4}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lkn;

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "getMediaItem for callback that isn\'t registered id="

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/4 p0, 0x2

    .line 121
    and-int/2addr p0, p0

    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    const/4 p0, -0x1

    .line 125
    invoke-virtual {v2, p0, v4}, Lgy;->b(ILandroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v0, "media_item"

    .line 135
    .line 136
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1, p0}, Lgy;->b(ILandroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
