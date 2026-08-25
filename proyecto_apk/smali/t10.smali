.class public final Lt10;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    .line 1
    const-string v0, "moe.shizuku.server.IShizukuApplication"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eq p1, v1, :cond_7

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x2711

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const v1, 0x5f4e5446

    .line 18
    .line 19
    .line 20
    if-eq p1, v1, :cond_0

    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    return v5

    .line 50
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    .line 65
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    move-object v4, p1

    .line 70
    check-cast v4, Landroid/os/Bundle;

    .line 71
    .line 72
    :cond_3
    const-string p1, "shizuku:request-permission-reply-allowed"

    .line 73
    .line 74
    invoke-virtual {v4, p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    move v2, v3

    .line 81
    :cond_4
    sget-object p1, Lz10;->h:Ljava/util/ArrayList;

    .line 82
    .line 83
    monitor-enter p1

    .line 84
    :try_start_0
    sget-object p2, Lz10;->j:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    :goto_0
    if-ge v3, p3, :cond_6

    .line 91
    .line 92
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    check-cast p4, Lu10;

    .line 99
    .line 100
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    if-ne v0, v4, :cond_5

    .line 112
    .line 113
    iget-object p4, p4, Lu10;->a:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p4, Lx10;

    .line 116
    .line 117
    check-cast p4, Lc20;

    .line 118
    .line 119
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {p0, v2}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->a(II)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    sget-object v0, Lz10;->k:Landroid/os/Handler;

    .line 129
    .line 130
    new-instance v4, Lcq;

    .line 131
    .line 132
    invoke-direct {v4, p4, p0, v2, v1}, Lcq;-><init>(Ljava/lang/Object;III)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_6
    monitor-exit p1

    .line 140
    return v5

    .line 141
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0

    .line 143
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_8

    .line 151
    .line 152
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 153
    .line 154
    invoke-interface {p0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    move-object v4, p0

    .line 159
    check-cast v4, Landroid/os/Bundle;

    .line 160
    .line 161
    :cond_8
    const-string p0, "shizuku:attach-reply-uid"

    .line 162
    .line 163
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    sget-object p0, Lz10;->a:Landroid/os/IBinder;

    .line 167
    .line 168
    const-string p0, "shizuku:attach-reply-version"

    .line 169
    .line 170
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    sget-object p0, Lz10;->a:Landroid/os/IBinder;

    .line 174
    .line 175
    const-string p0, "shizuku:attach-reply-patch-version"

    .line 176
    .line 177
    invoke-virtual {v4, p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    sget-object p0, Lz10;->a:Landroid/os/IBinder;

    .line 181
    .line 182
    const-string p0, "shizuku:attach-reply-secontext"

    .line 183
    .line 184
    invoke-virtual {v4, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    const-string p0, "shizuku:attach-reply-permission-granted"

    .line 188
    .line 189
    invoke-virtual {v4, p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    sput-boolean p0, Lz10;->c:Z

    .line 194
    .line 195
    const-string p0, "shizuku:attach-reply-should-show-request-permission-rationale"

    .line 196
    .line 197
    invoke-virtual {v4, p0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lz10;->f()V

    .line 201
    .line 202
    .line 203
    return v5
.end method
