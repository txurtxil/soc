.class public abstract Leu;
.super Lqc;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public j0:Landroidx/preference/DialogPreference;

.field public k0:Ljava/lang/CharSequence;

.field public l0:Ljava/lang/CharSequence;

.field public m0:Ljava/lang/CharSequence;

.field public n0:Ljava/lang/CharSequence;

.field public o0:I

.field public p0:Landroid/graphics/drawable/BitmapDrawable;

.field public q0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqc;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final N()Landroid/app/Dialog;
    .locals 5

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Leu;->q0:I

    .line 3
    .line 4
    new-instance v0, Ln2;

    .line 5
    .line 6
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Ln2;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Leu;->k0:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v2, v0, Ln2;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lk2;

    .line 18
    .line 19
    iput-object v1, v2, Lk2;->d:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v1, p0, Leu;->p0:Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    .line 23
    iput-object v1, v2, Lk2;->c:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    iget-object v1, p0, Leu;->l0:Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Ln2;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Leu;->m0:Ljava/lang/CharSequence;

    .line 31
    .line 32
    iput-object v1, v2, Lk2;->i:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iput-object p0, v2, Lk2;->j:Leu;

    .line 35
    .line 36
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Leu;->o0:I

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v4, p0, Lvf;->K:Landroid/view/LayoutInflater;

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lqc;->w(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iput-object v4, p0, Lvf;->K:Landroid/view/LayoutInflater;

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Leu;->Q(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iput-object v3, v2, Lk2;->o:Landroid/view/View;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, p0, Leu;->n0:Ljava/lang/CharSequence;

    .line 68
    .line 69
    iput-object v1, v2, Lk2;->f:Ljava/lang/CharSequence;

    .line 70
    .line 71
    :goto_1
    invoke-virtual {p0, v0}, Leu;->S(Ln2;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ln2;->b()Lo2;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    instance-of v1, p0, Ljd;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v3, 0x1e

    .line 89
    .line 90
    if-lt v2, v3, :cond_3

    .line 91
    .line 92
    invoke-static {v1}, Ldu;->a(Landroid/view/Window;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_3
    check-cast p0, Ljd;

    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    iput-wide v1, p0, Ljd;->u0:J

    .line 103
    .line 104
    invoke-virtual {p0}, Ljd;->T()V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v0
.end method

.method public final P()Landroidx/preference/DialogPreference;
    .locals 2

    .line 1
    iget-object v0, p0, Leu;->j0:Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lvf;->f:Landroid/os/Bundle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "key"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lvf;->n()Lvf;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lgu;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/preference/DialogPreference;

    .line 26
    .line 27
    iput-object v0, p0, Leu;->j0:Landroidx/preference/DialogPreference;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "Fragment "

    .line 31
    .line 32
    const-string v1, " does not have any arguments."

    .line 33
    .line 34
    invoke-static {p0, v1, v0}, Lc2;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_1
    :goto_0
    iget-object p0, p0, Leu;->j0:Landroidx/preference/DialogPreference;

    .line 40
    .line 41
    return-object p0
.end method

.method public Q(Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x102000b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Leu;->n0:Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of v0, p1, Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 p0, 0x8

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eq v0, p0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public abstract R(Z)V
.end method

.method public S(Ln2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Leu;->q0:I

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lqc;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Leu;->q0:I

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Leu;->R(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public r(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lqc;->r(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lvf;->n()Lvf;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lgu;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    check-cast v0, Lgu;

    .line 13
    .line 14
    iget-object v1, p0, Lvf;->f:Landroid/os/Bundle;

    .line 15
    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    const-string v2, "key"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lgu;->M(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/preference/DialogPreference;

    .line 32
    .line 33
    iput-object p1, p0, Leu;->j0:Landroidx/preference/DialogPreference;

    .line 34
    .line 35
    iget-object v0, p1, Landroidx/preference/DialogPreference;->O:Ljava/lang/CharSequence;

    .line 36
    .line 37
    iput-object v0, p0, Leu;->k0:Ljava/lang/CharSequence;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/preference/DialogPreference;->R:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, p0, Leu;->l0:Ljava/lang/CharSequence;

    .line 42
    .line 43
    iget-object v0, p1, Landroidx/preference/DialogPreference;->S:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Leu;->m0:Ljava/lang/CharSequence;

    .line 46
    .line 47
    iget-object v0, p1, Landroidx/preference/DialogPreference;->P:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p0, Leu;->n0:Ljava/lang/CharSequence;

    .line 50
    .line 51
    iget v0, p1, Landroidx/preference/DialogPreference;->T:I

    .line 52
    .line 53
    iput v0, p0, Leu;->o0:I

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/preference/DialogPreference;->Q:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    .line 74
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Landroid/graphics/Canvas;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 98
    .line 99
    invoke-virtual {p0}, Lvf;->k()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Leu;->p0:Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .line 108
    return-void

    .line 109
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    .line 111
    iput-object p1, p0, Leu;->p0:Landroid/graphics/drawable/BitmapDrawable;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Leu;->k0:Ljava/lang/CharSequence;

    .line 121
    .line 122
    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Leu;->l0:Ljava/lang/CharSequence;

    .line 129
    .line 130
    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Leu;->m0:Ljava/lang/CharSequence;

    .line 137
    .line 138
    const-string v0, "PreferenceDialogFragment.message"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v0, p0, Leu;->n0:Ljava/lang/CharSequence;

    .line 145
    .line 146
    const-string v0, "PreferenceDialogFragment.layout"

    .line 147
    .line 148
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, p0, Leu;->o0:I

    .line 153
    .line 154
    const-string v0, "PreferenceDialogFragment.icon"

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Landroid/graphics/Bitmap;

    .line 161
    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    .line 166
    invoke-virtual {p0}, Lvf;->k()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Leu;->p0:Landroid/graphics/drawable/BitmapDrawable;

    .line 174
    .line 175
    :cond_3
    return-void

    .line 176
    :cond_4
    const-string p1, "Fragment "

    .line 177
    .line 178
    const-string v0, " does not have any arguments."

    .line 179
    .line 180
    invoke-static {p0, v0, p1}, Lc2;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_5
    const-string p0, "Target fragment must implement TargetFragment interface"

    .line 185
    .line 186
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public z(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lqc;->z(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "PreferenceDialogFragment.title"

    .line 5
    .line 6
    iget-object v1, p0, Leu;->k0:Ljava/lang/CharSequence;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 12
    .line 13
    iget-object v1, p0, Leu;->l0:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 19
    .line 20
    iget-object v1, p0, Leu;->m0:Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "PreferenceDialogFragment.message"

    .line 26
    .line 27
    iget-object v1, p0, Leu;->n0:Ljava/lang/CharSequence;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "PreferenceDialogFragment.layout"

    .line 33
    .line 34
    iget v1, p0, Leu;->o0:I

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Leu;->p0:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const-string v0, "PreferenceDialogFragment.icon"

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
