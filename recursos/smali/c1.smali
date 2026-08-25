.class public final Lc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgc;Ljava/util/ArrayList;Ls20;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lc1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lc1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lc1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 13
    iput p2, p0, Lc1;->a:I

    iput-object p1, p0, Lc1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 12
    iput p3, p0, Lc1;->a:I

    iput-object p1, p0, Lc1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lc1;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lc1;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object p0, p0, Lc1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lgf;

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lgf;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast v2, Lcf;

    .line 18
    .line 19
    check-cast p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 20
    .line 21
    iget-object v0, v2, Lcf;->b:Ljava/io/Serializable;

    .line 22
    .line 23
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Lji;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    :goto_0
    if-ge v1, v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    check-cast v5, Landroid/os/Bundle;

    .line 50
    .line 51
    const-string v6, "extra_session_binder"

    .line 52
    .line 53
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-static {v5, v6, v7}, Lv7;->b(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, v2, Lcf;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lln;

    .line 67
    .line 68
    iget-object p0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroid/media/session/MediaSession$Token;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    .line 77
    .line 78
    check-cast v2, Ls20;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object p0, v2, Ls20;->c:Lvf;

    .line 90
    .line 91
    iget-object p0, p0, Lvf;->F:Landroid/view/View;

    .line 92
    .line 93
    iget v0, v2, Ls20;->a:I

    .line 94
    .line 95
    invoke-static {p0, v0}, Lt20;->a(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void

    .line 99
    :pswitch_2
    check-cast p0, Lc9;

    .line 100
    .line 101
    check-cast v2, Landroid/graphics/Typeface;

    .line 102
    .line 103
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lb5;

    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lb5;->b(Landroid/graphics/Typeface;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_3
    :try_start_0
    sget-object v0, Lq1;->d:Ljava/lang/reflect/Method;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 116
    .line 117
    const-string v3, "AppCompat recreation"

    .line 118
    .line 119
    filled-new-array {v2, v1, v3}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    sget-object v0, Lq1;->e:Ljava/lang/reflect/Method;

    .line 128
    .line 129
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 130
    .line 131
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    const-string v0, "ActivityRecreator"

    .line 141
    .line 142
    const-string v1, "Exception while invoking performStopActivity"

    .line 143
    .line 144
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-class v1, Ljava/lang/RuntimeException;

    .line 154
    .line 155
    if-ne v0, v1, :cond_5

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "Unable to stop"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_4

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    throw p0

    .line 177
    :cond_5
    :goto_1
    return-void

    .line 178
    :pswitch_4
    check-cast p0, Landroid/app/Application;

    .line 179
    .line 180
    check-cast v2, Lp1;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_5
    check-cast p0, Lp1;

    .line 187
    .line 188
    iput-object v2, p0, Lp1;->a:Ljava/lang/Object;

    .line 189
    .line 190
    return-void

    .line 191
    :pswitch_6
    check-cast p0, La1;

    .line 192
    .line 193
    check-cast v2, Le1;

    .line 194
    .line 195
    iget-object v0, v2, Le1;->c:Lso;

    .line 196
    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    iget-object v3, v0, Lso;->e:Lqo;

    .line 200
    .line 201
    if-eqz v3, :cond_6

    .line 202
    .line 203
    invoke-interface {v3, v0}, Lqo;->m(Lso;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    iget-object v0, v2, Le1;->h:Lnp;

    .line 207
    .line 208
    check-cast v0, Landroid/view/View;

    .line 209
    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    invoke-virtual {p0}, Lep;->b()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_7

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_7
    iget-object v0, p0, Lep;->e:Landroid/view/View;

    .line 226
    .line 227
    if-nez v0, :cond_8

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    invoke-virtual {p0, v1, v1, v1, v1}, Lep;->d(IIZZ)V

    .line 231
    .line 232
    .line 233
    :goto_2
    iput-object p0, v2, Le1;->t:La1;

    .line 234
    .line 235
    :cond_9
    :goto_3
    const/4 p0, 0x0

    .line 236
    iput-object p0, v2, Le1;->v:Lc1;

    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
