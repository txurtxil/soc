.class public final Lk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lk9;->a:I

    iput-object p1, p0, Lk9;->e:Ljava/lang/Object;

    iput-object p2, p0, Lk9;->b:Ljava/lang/Object;

    iput-object p3, p0, Lk9;->c:Ljava/lang/Object;

    iput-object p4, p0, Lk9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lk9;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lk9;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lk9;->e:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Lk9;->b:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lk9;->c:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v6, Lc9;

    .line 20
    .line 21
    iget-object v0, v6, Lc9;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/os/Messenger;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v5, Lc9;

    .line 30
    .line 31
    iget-object v5, v5, Lc9;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lvn;

    .line 34
    .line 35
    iget-object v5, v5, Lvn;->d:Lu6;

    .line 36
    .line 37
    invoke-virtual {v5, v0, v4}, Lj20;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lkn;

    .line 42
    .line 43
    const-string v4, "MBServiceCompat"

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "removeSubscription for callback that isn\'t registered id="

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_0
    iget-object v0, v0, Lkn;->e:Ljava/util/HashMap;

    .line 66
    .line 67
    check-cast v3, Landroid/os/IBinder;

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    :goto_0
    move v1, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/util/List;

    .line 85
    .line 86
    if-eqz v5, :cond_1

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_4

    .line 97
    .line 98
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lbt;

    .line 103
    .line 104
    iget-object v7, v7, Lbt;->a:Ljava/lang/Object;

    .line 105
    .line 106
    if-ne v3, v7, :cond_3

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    .line 111
    move v2, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :goto_2
    if-nez v1, :cond_5

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, "removeSubscription called for "

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, " which is not subscribed"

    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_3
    return-void

    .line 148
    :pswitch_0
    check-cast v5, Lc9;

    .line 149
    .line 150
    iget-object v0, v5, Lc9;->b:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lm9;

    .line 153
    .line 154
    check-cast p0, Lwo;

    .line 155
    .line 156
    check-cast v6, Ll9;

    .line 157
    .line 158
    if-eqz v6, :cond_6

    .line 159
    .line 160
    iput-boolean v1, v0, Lm9;->A:Z

    .line 161
    .line 162
    iget-object v1, v6, Ll9;->b:Lso;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lso;->c(Z)V

    .line 165
    .line 166
    .line 167
    iput-boolean v2, v0, Lm9;->A:Z

    .line 168
    .line 169
    :cond_6
    invoke-virtual {p0}, Lwo;->isEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    invoke-virtual {p0}, Lwo;->hasSubMenu()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    check-cast v3, Lso;

    .line 182
    .line 183
    const/4 v0, 0x4

    .line 184
    invoke-virtual {v3, p0, v4, v0}, Lso;->q(Landroid/view/MenuItem;Llp;I)Z

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
