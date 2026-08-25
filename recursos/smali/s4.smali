.class public final Ls4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public a:Lo2;

.field public b:Lt4;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Lz4;


# direct methods
.method public constructor <init>(Lz4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls4;->d:Lz4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ls4;->a:Lo2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final c()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls4;->a:Lo2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lo2;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ls4;->a:Lo2;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls4;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    const-string p0, "AppCompatSpinner"

    .line 2
    .line 3
    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k(I)V
    .locals 0

    .line 1
    const-string p0, "AppCompatSpinner"

    .line 2
    .line 3
    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l(I)V
    .locals 0

    .line 1
    const-string p0, "AppCompatSpinner"

    .line 2
    .line 3
    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    const-string p0, "AppCompatSpinner"

    .line 2
    .line 3
    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls4;->b:Lt4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ln2;

    .line 7
    .line 8
    iget-object v1, p0, Ls4;->d:Lz4;

    .line 9
    .line 10
    invoke-virtual {v1}, Lz4;->getPopupContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, v2}, Ln2;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Ln2;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lk2;

    .line 20
    .line 21
    iget-object v3, p0, Ls4;->c:Ljava/lang/CharSequence;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iput-object v3, v2, Lk2;->d:Ljava/lang/CharSequence;

    .line 26
    .line 27
    :cond_1
    iget-object v3, p0, Ls4;->b:Lt4;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput-object v3, v2, Lk2;->m:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    iput-object p0, v2, Lk2;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    .line 37
    iput v1, v2, Lk2;->s:I

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v2, Lk2;->r:Z

    .line 41
    .line 42
    invoke-virtual {v0}, Ln2;->b()Lo2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Ls4;->a:Lo2;

    .line 47
    .line 48
    iget-object v0, v0, Lo2;->f:Lm2;

    .line 49
    .line 50
    iget-object v0, v0, Lm2;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lq4;->d(Landroid/view/View;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p2}, Lq4;->c(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Ls4;->a:Lo2;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final o()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Ls4;->d:Lz4;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ls4;->b:Lt4;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lt4;->getItemId(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Ls4;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final p()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Ls4;->c:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public final q(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    check-cast p1, Lt4;

    .line 2
    .line 3
    iput-object p1, p0, Ls4;->b:Lt4;

    .line 4
    .line 5
    return-void
.end method
