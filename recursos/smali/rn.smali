.class public final Lrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc9;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Lc9;


# direct methods
.method public constructor <init>(Lc9;Lc9;ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p6, 0x1

    iput p6, p0, Lrn;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrn;->f:Lc9;

    iput-object p2, p0, Lrn;->b:Lc9;

    iput p3, p0, Lrn;->c:I

    iput-object p4, p0, Lrn;->d:Ljava/lang/String;

    iput p5, p0, Lrn;->e:I

    return-void
.end method

.method public constructor <init>(Lc9;Lc9;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p6, 0x0

    .line 2
    iput p6, p0, Lrn;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrn;->f:Lc9;

    .line 8
    .line 9
    iput-object p2, p0, Lrn;->b:Lc9;

    .line 10
    .line 11
    iput-object p3, p0, Lrn;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput p4, p0, Lrn;->c:I

    .line 14
    .line 15
    iput p5, p0, Lrn;->e:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lrn;->a:I

    .line 2
    .line 3
    const-string v1, "MBServiceCompat"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lrn;->f:Lc9;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v10, p0, Lrn;->b:Lc9;

    .line 13
    .line 14
    iget-object v0, v10, Lc9;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/os/Messenger;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v5, v4, Lc9;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v5, Lvn;

    .line 25
    .line 26
    iget-object v5, v5, Lvn;->d:Lu6;

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object v4, v4, Lc9;->b:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v6, v4

    .line 34
    check-cast v6, Lvn;

    .line 35
    .line 36
    iget-object v4, v6, Lvn;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lkn;

    .line 53
    .line 54
    iget v7, v5, Lkn;->c:I

    .line 55
    .line 56
    iget v8, p0, Lrn;->c:I

    .line 57
    .line 58
    if-ne v7, v8, :cond_0

    .line 59
    .line 60
    iget-object v7, p0, Lrn;->d:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_1

    .line 67
    .line 68
    iget v7, p0, Lrn;->e:I

    .line 69
    .line 70
    if-gtz v7, :cond_2

    .line 71
    .line 72
    :cond_1
    move-object v3, v5

    .line 73
    new-instance v5, Lkn;

    .line 74
    .line 75
    iget-object v7, v3, Lkn;->a:Ljava/lang/String;

    .line 76
    .line 77
    iget v8, v3, Lkn;->b:I

    .line 78
    .line 79
    iget v9, v3, Lkn;->c:I

    .line 80
    .line 81
    invoke-direct/range {v5 .. v10}, Lkn;-><init>(Lvn;Ljava/lang/String;IILc9;)V

    .line 82
    .line 83
    .line 84
    move-object v3, v5

    .line 85
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 86
    .line 87
    .line 88
    :cond_3
    if-nez v3, :cond_4

    .line 89
    .line 90
    new-instance v5, Lkn;

    .line 91
    .line 92
    iget v8, p0, Lrn;->e:I

    .line 93
    .line 94
    iget v9, p0, Lrn;->c:I

    .line 95
    .line 96
    iget-object v7, p0, Lrn;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct/range {v5 .. v10}, Lkn;-><init>(Lvn;Ljava/lang/String;IILc9;)V

    .line 99
    .line 100
    .line 101
    move-object v3, v5

    .line 102
    :cond_4
    iget-object p0, v6, Lvn;->d:Lu6;

    .line 103
    .line 104
    invoke-virtual {p0, v0, v3}, Lj20;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :try_start_0
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    const-string p0, "IBinder is already dead."

    .line 112
    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v9, p0, Lrn;->b:Lc9;

    .line 118
    .line 119
    iget-object v0, v9, Lc9;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroid/os/Messenger;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v5, v4, Lc9;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v5, Lvn;

    .line 130
    .line 131
    iget-object v5, v5, Lvn;->d:Lu6;

    .line 132
    .line 133
    invoke-virtual {v5, v0}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-object v5, v4

    .line 137
    new-instance v4, Lkn;

    .line 138
    .line 139
    iget-object v5, v5, Lc9;->b:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v5, Lvn;

    .line 142
    .line 143
    iget v7, p0, Lrn;->c:I

    .line 144
    .line 145
    iget v8, p0, Lrn;->e:I

    .line 146
    .line 147
    iget-object v6, p0, Lrn;->d:Ljava/lang/String;

    .line 148
    .line 149
    invoke-direct/range {v4 .. v9}, Lkn;-><init>(Lvn;Ljava/lang/String;IILc9;)V

    .line 150
    .line 151
    .line 152
    new-instance p0, Ljn;

    .line 153
    .line 154
    invoke-direct {p0, v3}, Ljn;-><init>(Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    iput-object p0, v4, Lkn;->f:Ljn;

    .line 158
    .line 159
    :try_start_1
    iget-object p0, v5, Lvn;->d:Lu6;

    .line 160
    .line 161
    invoke-virtual {p0, v0, v4}, Lj20;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v4, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 165
    .line 166
    .line 167
    iget-object p0, v5, Lvn;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 168
    .line 169
    if-eqz p0, :cond_6

    .line 170
    .line 171
    iget-object v2, v4, Lkn;->f:Ljn;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    const-string v3, "root"

    .line 177
    .line 178
    iget-object v2, v2, Ljn;->a:Landroid/os/Bundle;

    .line 179
    .line 180
    if-nez v2, :cond_5

    .line 181
    .line 182
    new-instance v2, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    :cond_5
    const-string v4, "extra_service_version"

    .line 188
    .line 189
    const/4 v7, 0x2

    .line 190
    invoke-virtual {v2, v4, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    new-instance v4, Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v7, "data_media_item_id"

    .line 199
    .line 200
    invoke-virtual {v4, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v3, "data_media_session_token"

    .line 204
    .line 205
    invoke-virtual {v4, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    .line 207
    .line 208
    const-string p0, "data_root_hints"

    .line 209
    .line 210
    invoke-virtual {v4, p0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    const/4 p0, 0x1

    .line 214
    invoke-virtual {v9, p0, v4}, Lc9;->v(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :catch_1
    const-string p0, "Calling onConnect() failed. Dropping client. pkg="

    .line 219
    .line 220
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object p0, v5, Lvn;->d:Lu6;

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_1
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
