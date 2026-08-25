.class public final synthetic Lcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcq;->a:I

    iput-object p1, p0, Lcq;->b:Ljava/lang/Object;

    iput p2, p0, Lcq;->c:I

    iput p3, p0, Lcq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcq;->a:I

    .line 2
    .line 3
    const-string v1, "x"

    .line 4
    .line 5
    const-string v2, "MirrorCompositor"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcq;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lu10;

    .line 14
    .line 15
    iget v1, p0, Lcq;->c:I

    .line 16
    .line 17
    iget p0, p0, Lcq;->d:I

    .line 18
    .line 19
    iget-object v0, v0, Lu10;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lx10;

    .line 22
    .line 23
    check-cast v0, Lc20;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, p0}, Lidv/lzn/screenonauto/privileged/ShizukuBackend;->a(II)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcq;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Leq;

    .line 35
    .line 36
    iget v1, p0, Lcq;->c:I

    .line 37
    .line 38
    iget p0, p0, Lcq;->d:I

    .line 39
    .line 40
    iget-boolean v2, v0, Leq;->w:Z

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    iget v2, v0, Leq;->u:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_0

    .line 47
    .line 48
    iget v2, v0, Leq;->v:I

    .line 49
    .line 50
    if-ne p0, v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput v1, v0, Leq;->u:I

    .line 54
    .line 55
    iput p0, v0, Leq;->v:I

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Leq;->e(Z)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcq;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Leq;

    .line 64
    .line 65
    iget v4, p0, Lcq;->c:I

    .line 66
    .line 67
    iget p0, p0, Lcq;->d:I

    .line 68
    .line 69
    iget-boolean v5, v0, Leq;->w:Z

    .line 70
    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    if-lez v4, :cond_4

    .line 74
    .line 75
    if-gtz p0, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget v5, v0, Leq;->q:I

    .line 79
    .line 80
    if-ne v4, v5, :cond_3

    .line 81
    .line 82
    iget v5, v0, Leq;->r:I

    .line 83
    .line 84
    if-ne p0, v5, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iput v4, v0, Leq;->q:I

    .line 88
    .line 89
    iput p0, v0, Leq;->r:I

    .line 90
    .line 91
    iget v5, v0, Leq;->B:I

    .line 92
    .line 93
    const-string v6, "setCapture: "

    .line 94
    .line 95
    const-string v7, " in "

    .line 96
    .line 97
    invoke-static {v6, v4, v1, p0, v7}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, "\u00b2 buffer"

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Leq;->e(Z)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcq;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Leq;

    .line 123
    .line 124
    iget v4, p0, Lcq;->c:I

    .line 125
    .line 126
    iget p0, p0, Lcq;->d:I

    .line 127
    .line 128
    iget-boolean v5, v0, Leq;->w:Z

    .line 129
    .line 130
    if-nez v5, :cond_7

    .line 131
    .line 132
    if-lez v4, :cond_7

    .line 133
    .line 134
    if-gtz p0, :cond_5

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    iget v5, v0, Leq;->s:I

    .line 138
    .line 139
    if-ne v4, v5, :cond_6

    .line 140
    .line 141
    iget v5, v0, Leq;->t:I

    .line 142
    .line 143
    if-ne p0, v5, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iput v4, v0, Leq;->s:I

    .line 147
    .line 148
    iput p0, v0, Leq;->t:I

    .line 149
    .line 150
    iget v5, v0, Leq;->B:I

    .line 151
    .line 152
    const-string v6, "setSource: VD "

    .line 153
    .line 154
    const-string v7, ", buffer "

    .line 155
    .line 156
    invoke-static {v6, v4, v1, p0, v7}, Lt20;->g(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, "\u00b2"

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v3}, Leq;->e(Z)V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_2
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
