.class public final Ldl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llp;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Lso;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lkp;

.field public f:Lcl;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldl;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ldl;->b:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lso;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldl;->e:Lkp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lkp;->a(Lso;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c(Lwo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e(Lkp;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lwo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final g()V
    .locals 0

    .line 1
    iget-object p0, p0, Ldl;->f:Lcl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcl;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Context;Lso;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldl;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Ldl;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Ldl;->b:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Ldl;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Ldl;->c:Lso;

    .line 18
    .line 19
    iget-object p0, p0, Ldl;->f:Lcl;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcl;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final j(Lj30;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lso;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Lso;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Lto;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lto;->a:Lj30;

    .line 17
    .line 18
    new-instance v2, Ln2;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ln2;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v2, Ln2;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lk2;

    .line 26
    .line 27
    new-instance v4, Ldl;

    .line 28
    .line 29
    iget-object v5, v3, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    invoke-direct {v4, v5}, Ldl;-><init>(Landroid/content/ContextWrapper;)V

    .line 32
    .line 33
    .line 34
    iput-object v4, v0, Lto;->c:Ldl;

    .line 35
    .line 36
    iput-object v0, v4, Ldl;->e:Lkp;

    .line 37
    .line 38
    invoke-virtual {p1, v4, v1}, Lso;->b(Llp;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lto;->c:Ldl;

    .line 42
    .line 43
    iget-object v4, v1, Ldl;->f:Lcl;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    new-instance v4, Lcl;

    .line 48
    .line 49
    invoke-direct {v4, v1}, Lcl;-><init>(Ldl;)V

    .line 50
    .line 51
    .line 52
    iput-object v4, v1, Ldl;->f:Lcl;

    .line 53
    .line 54
    :cond_1
    iget-object v1, v1, Ldl;->f:Lcl;

    .line 55
    .line 56
    iput-object v1, v3, Lk2;->m:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    iput-object v0, v3, Lk2;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    iget-object v1, p1, Lso;->o:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iput-object v1, v3, Lk2;->e:Landroid/view/View;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p1, Lso;->n:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    iput-object v1, v3, Lk2;->c:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object v1, p1, Lso;->m:Ljava/lang/CharSequence;

    .line 72
    .line 73
    iput-object v1, v3, Lk2;->d:Ljava/lang/CharSequence;

    .line 74
    .line 75
    :goto_0
    iput-object v0, v3, Lk2;->k:Lto;

    .line 76
    .line 77
    invoke-virtual {v2}, Ln2;->b()Lo2;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lto;->b:Lo2;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lto;->b:Lo2;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v2, 0x3eb

    .line 97
    .line 98
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    .line 100
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    .line 102
    const/high16 v3, 0x20000

    .line 103
    .line 104
    or-int/2addr v2, v3

    .line 105
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    .line 107
    iget-object v0, v0, Lto;->b:Lo2;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Ldl;->e:Lkp;

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    invoke-interface {p0, p1}, Lkp;->q(Lso;)Z

    .line 117
    .line 118
    .line 119
    :cond_3
    const/4 p0, 0x1

    .line 120
    return p0
.end method

.method public final k()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldl;->c:Lso;

    .line 2
    .line 3
    iget-object p2, p0, Ldl;->f:Lcl;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lcl;->b(I)Lwo;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Lso;->q(Landroid/view/MenuItem;Llp;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
