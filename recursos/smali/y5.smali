.class public final synthetic Ly5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Ly5;->a:I

    iput-object p1, p0, Ly5;->b:Ljava/lang/Object;

    iput-object p3, p0, Ly5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ly5;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ly5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Ly5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Ld20;

    .line 11
    .line 12
    check-cast v1, Landroid/os/IBinder;

    .line 13
    .line 14
    iget-object v0, p0, Ld20;->a:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/ServiceConnection;

    .line 31
    .line 32
    iget-object v3, p0, Ld20;->b:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-interface {v2, v3, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lmq;

    .line 40
    .line 41
    check-cast v1, Llk;

    .line 42
    .line 43
    iget-object v0, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 44
    .line 45
    iget-object v2, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 46
    .line 47
    sget-object v3, Lmk;->b:Lmk;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    sget-object v2, Llk;->ON_DESTROY:Llk;

    .line 56
    .line 57
    if-ne v1, v2, :cond_1

    .line 58
    .line 59
    iget-object p0, p0, Lmq;->c:Lc2;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->e(Llk;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :pswitch_1
    check-cast p0, Lny;

    .line 69
    .line 70
    check-cast v1, Landroid/content/ServiceConnection;

    .line 71
    .line 72
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lpy;

    .line 75
    .line 76
    iget-object p0, p0, Lpy;->a:Lqy;

    .line 77
    .line 78
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Landroid/content/ComponentName;

    .line 81
    .line 82
    invoke-interface {v1, p0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_2
    check-cast p0, Landroid/content/ServiceConnection;

    .line 87
    .line 88
    check-cast v1, Lqy;

    .line 89
    .line 90
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Landroid/content/ComponentName;

    .line 93
    .line 94
    invoke-static {p0, v0}, Ly;->p(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_3
    check-cast p0, Lb5;

    .line 99
    .line 100
    check-cast v1, Landroid/graphics/Typeface;

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lb5;->b(Landroid/graphics/Typeface;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_4
    check-cast p0, Leq;

    .line 107
    .line 108
    check-cast v1, Landroid/view/Surface;

    .line 109
    .line 110
    iget-boolean v0, p0, Leq;->w:Z

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Leq;->h:Landroid/view/Surface;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {p0, v1}, Leq;->a(Landroid/view/Surface;)V

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0}, Leq;->e(Z)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_1
    return-void

    .line 133
    :pswitch_5
    check-cast p0, Leq;

    .line 134
    .line 135
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p0, v0}, Leq;->a(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :pswitch_6
    check-cast p0, Lc6;

    .line 151
    .line 152
    check-cast v1, Ljava/lang/Runnable;

    .line 153
    .line 154
    :try_start_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lc6;->a()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :catchall_1
    move-exception v0

    .line 162
    invoke-virtual {p0}, Lc6;->a()V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :pswitch_7
    check-cast p0, Lch;

    .line 167
    .line 168
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    invoke-interface {p0, v1}, Lch;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
