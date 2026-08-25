.class public Ln2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ln2;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ln2;->c:Ljava/lang/Object;

    return-void

    .line 28
    :cond_0
    const-string p0, "The max pool size must be > 0"

    invoke-static {p0}, Lc2;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(I[Lpf;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ln2;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Ln2;->b:I

    .line 35
    iput-object p2, p0, Ln2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln2;->a:I

    .line 29
    invoke-static {p1, v0}, Lo2;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Ln2;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln2;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lk2;

    .line 8
    .line 9
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lo2;->h(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lk2;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ln2;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput p2, p0, Ln2;->b:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ln2;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ln2;->c:Ljava/lang/Object;

    .line 32
    iput p2, p0, Ln2;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ln2;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iget-object v2, p0, Ln2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, [Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v3, v2, v0

    .line 13
    .line 14
    aput-object v1, v2, v0

    .line 15
    .line 16
    iput v0, p0, Ln2;->b:I

    .line 17
    .line 18
    return-object v3

    .line 19
    :cond_0
    return-object v1
.end method

.method public b()Lo2;
    .locals 11

    .line 1
    new-instance v0, Lo2;

    .line 2
    .line 3
    iget-object v1, p0, Ln2;->c:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v3, v1

    .line 6
    check-cast v3, Lk2;

    .line 7
    .line 8
    iget-object v1, v3, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 9
    .line 10
    iget-object v4, v3, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 11
    .line 12
    iget p0, p0, Ln2;->b:I

    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Lo2;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v3, Lk2;->e:Landroid/view/View;

    .line 18
    .line 19
    iget-object v1, v0, Lo2;->f:Lm2;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iput-object p0, v1, Lm2;->w:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, v3, Lk2;->d:Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iput-object p0, v1, Lm2;->d:Ljava/lang/CharSequence;

    .line 32
    .line 33
    iget-object v2, v1, Lm2;->u:Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v3, Lk2;->c:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iput-object p0, v1, Lm2;->s:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iget-object v2, v1, Lm2;->t:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v1, Lm2;->t:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object p0, v3, Lk2;->f:Ljava/lang/CharSequence;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    iput-object p0, v1, Lm2;->e:Ljava/lang/CharSequence;

    .line 63
    .line 64
    iget-object v2, v1, Lm2;->v:Landroid/widget/TextView;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p0, v3, Lk2;->g:Ljava/lang/CharSequence;

    .line 72
    .line 73
    if-nez p0, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const/4 v2, -0x1

    .line 77
    iget-object v5, v3, Lk2;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    .line 79
    invoke-virtual {v1, v2, p0, v5}, Lm2;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object p0, v3, Lk2;->i:Ljava/lang/CharSequence;

    .line 83
    .line 84
    if-nez p0, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    const/4 v2, -0x2

    .line 88
    iget-object v5, v3, Lk2;->j:Leu;

    .line 89
    .line 90
    invoke-virtual {v1, v2, p0, v5}, Lm2;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    iget-object p0, v3, Lk2;->l:[Ljava/lang/CharSequence;

    .line 94
    .line 95
    const/4 v9, 0x1

    .line 96
    const/4 v10, 0x0

    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    iget-object p0, v3, Lk2;->m:Landroid/widget/ListAdapter;

    .line 100
    .line 101
    if-eqz p0, :cond_e

    .line 102
    .line 103
    :cond_6
    iget-object p0, v3, Lk2;->b:Landroid/view/LayoutInflater;

    .line 104
    .line 105
    iget v2, v1, Lm2;->A:I

    .line 106
    .line 107
    invoke-virtual {p0, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    move-object v7, p0

    .line 112
    check-cast v7, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 113
    .line 114
    iget-boolean p0, v3, Lk2;->q:Z

    .line 115
    .line 116
    if-eqz p0, :cond_7

    .line 117
    .line 118
    new-instance v2, Lh2;

    .line 119
    .line 120
    iget v5, v1, Lm2;->B:I

    .line 121
    .line 122
    iget-object v6, v3, Lk2;->l:[Ljava/lang/CharSequence;

    .line 123
    .line 124
    invoke-direct/range {v2 .. v7}, Lh2;-><init>(Lk2;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    iget-boolean p0, v3, Lk2;->r:Z

    .line 129
    .line 130
    if-eqz p0, :cond_8

    .line 131
    .line 132
    iget p0, v1, Lm2;->C:I

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    iget p0, v1, Lm2;->D:I

    .line 136
    .line 137
    :goto_3
    iget-object v2, v3, Lk2;->m:Landroid/widget/ListAdapter;

    .line 138
    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    new-instance v2, Ll2;

    .line 143
    .line 144
    const v5, 0x1020014

    .line 145
    .line 146
    .line 147
    iget-object v6, v3, Lk2;->l:[Ljava/lang/CharSequence;

    .line 148
    .line 149
    invoke-direct {v2, v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    iput-object v2, v1, Lm2;->x:Landroid/widget/ListAdapter;

    .line 153
    .line 154
    iget p0, v3, Lk2;->s:I

    .line 155
    .line 156
    iput p0, v1, Lm2;->y:I

    .line 157
    .line 158
    iget-object p0, v3, Lk2;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    .line 160
    if-eqz p0, :cond_a

    .line 161
    .line 162
    new-instance p0, Li2;

    .line 163
    .line 164
    invoke-direct {p0, v3, v1}, Li2;-><init>(Lk2;Lm2;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_a
    iget-object p0, v3, Lk2;->t:Lqq;

    .line 172
    .line 173
    if-eqz p0, :cond_b

    .line 174
    .line 175
    new-instance p0, Lj2;

    .line 176
    .line 177
    invoke-direct {p0, v3, v7, v1}, Lj2;-><init>(Lk2;Landroidx/appcompat/app/AlertController$RecycleListView;Lm2;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    .line 182
    .line 183
    :cond_b
    :goto_5
    iget-boolean p0, v3, Lk2;->r:Z

    .line 184
    .line 185
    if-eqz p0, :cond_c

    .line 186
    .line 187
    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_c
    iget-boolean p0, v3, Lk2;->q:Z

    .line 192
    .line 193
    if-eqz p0, :cond_d

    .line 194
    .line 195
    const/4 p0, 0x2

    .line 196
    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 197
    .line 198
    .line 199
    :cond_d
    :goto_6
    iput-object v7, v1, Lm2;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 200
    .line 201
    :cond_e
    iget-object p0, v3, Lk2;->o:Landroid/view/View;

    .line 202
    .line 203
    if-eqz p0, :cond_f

    .line 204
    .line 205
    iput-object p0, v1, Lm2;->g:Landroid/view/View;

    .line 206
    .line 207
    iput-boolean v8, v1, Lm2;->h:Z

    .line 208
    .line 209
    :cond_f
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 219
    .line 220
    .line 221
    iget-object p0, v3, Lk2;->k:Lto;

    .line 222
    .line 223
    if-eqz p0, :cond_10

    .line 224
    .line 225
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 226
    .line 227
    .line 228
    :cond_10
    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ln2;->b:I

    .line 3
    .line 4
    iget-object v2, p0, Ln2;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, [Ljava/lang/Object;

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    aget-object v1, v2, v0

    .line 11
    .line 12
    if-eq v1, p1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "Already in the pool!"

    .line 18
    .line 19
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    array-length v0, v2

    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    aput-object p1, v2, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    iput v1, p0, Ln2;->b:I

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ln2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lk2;

    .line 4
    .line 5
    iput-object p1, p0, Lk2;->g:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, p0, Lk2;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ln2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ln2;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", uid: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Ln2;->b:I

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
