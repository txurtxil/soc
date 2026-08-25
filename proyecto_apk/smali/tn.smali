.class public final Ltn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc9;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lc9;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/Bundle;Lgy;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ltn;->a:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn;->e:Lc9;

    iput-object p2, p0, Ltn;->b:Lc9;

    iput-object p3, p0, Ltn;->c:Ljava/lang/String;

    iput-object p4, p0, Ltn;->d:Landroid/os/Bundle;

    iput-object p5, p0, Ltn;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc9;Lc9;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ltn;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ltn;->e:Lc9;

    .line 8
    .line 9
    iput-object p2, p0, Ltn;->b:Lc9;

    .line 10
    .line 11
    iput-object p3, p0, Ltn;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Ltn;->f:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Ltn;->d:Landroid/os/Bundle;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Ltn;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget-object v2, p0, Ltn;->f:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Ltn;->d:Landroid/os/Bundle;

    .line 7
    .line 8
    iget-object v4, p0, Ltn;->c:Ljava/lang/String;

    .line 9
    .line 10
    const-string v5, "MBServiceCompat"

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v7, p0, Ltn;->e:Lc9;

    .line 14
    .line 15
    iget-object p0, p0, Ltn;->b:Lc9;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/os/Messenger;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object v0, v7, Lc9;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lvn;

    .line 31
    .line 32
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 33
    .line 34
    invoke-virtual {v0, p0, v6}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lkn;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "sendCustomAction for callback that isn\'t registered action="

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", extras="

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    check-cast v2, Lgy;

    .line 69
    .line 70
    invoke-virtual {v2, v1, v6}, Lgy;->b(ILandroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Landroid/os/Messenger;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget-object v0, v7, Lc9;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lvn;

    .line 85
    .line 86
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 87
    .line 88
    invoke-virtual {v0, p0, v6}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lkn;

    .line 93
    .line 94
    if-nez p0, :cond_1

    .line 95
    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "addSubscription for callback that isn\'t registered id="

    .line 99
    .line 100
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_1
    iget-object v0, p0, Lkn;->e:Ljava/util/HashMap;

    .line 116
    .line 117
    iget-object v5, v7, Lc9;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v5, Lvn;

    .line 120
    .line 121
    check-cast v2, Landroid/os/IBinder;

    .line 122
    .line 123
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Ljava/util/List;

    .line 128
    .line 129
    if-nez v6, :cond_2

    .line 130
    .line 131
    new-instance v6, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_7

    .line 145
    .line 146
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Lbt;

    .line 151
    .line 152
    iget-object v9, v8, Lbt;->a:Ljava/lang/Object;

    .line 153
    .line 154
    if-ne v2, v9, :cond_3

    .line 155
    .line 156
    iget-object v8, v8, Lbt;->b:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v8, Landroid/os/Bundle;

    .line 159
    .line 160
    if-ne v3, v8, :cond_4

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_4
    const-string v9, "android.media.browse.extra.PAGE_SIZE"

    .line 164
    .line 165
    const-string v10, "android.media.browse.extra.PAGE"

    .line 166
    .line 167
    if-nez v3, :cond_5

    .line 168
    .line 169
    invoke-virtual {v8, v10, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-ne v10, v1, :cond_3

    .line 174
    .line 175
    invoke-virtual {v8, v9, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-ne v8, v1, :cond_3

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    if-nez v8, :cond_6

    .line 183
    .line 184
    invoke-virtual {v3, v10, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-ne v8, v1, :cond_3

    .line 189
    .line 190
    invoke-virtual {v3, v9, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-ne v8, v1, :cond_3

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {v3, v10, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    invoke-virtual {v8, v10, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-ne v11, v10, :cond_3

    .line 206
    .line 207
    invoke-virtual {v3, v9, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    invoke-virtual {v8, v9, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-ne v10, v8, :cond_3

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_7
    new-instance v1, Lbt;

    .line 219
    .line 220
    invoke-direct {v1, v2, v3}, Lbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v4, p0, v3}, Lvn;->d(Ljava/lang/String;Lkn;Landroid/os/Bundle;)V

    .line 230
    .line 231
    .line 232
    :goto_1
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
