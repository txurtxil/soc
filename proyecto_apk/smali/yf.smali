.class public final Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/b;

.field public final synthetic b:Lzf;


# direct methods
.method public constructor <init>(Lzf;Landroidx/fragment/app/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyf;->b:Lzf;

    .line 5
    .line 6
    iput-object p2, p0, Lyf;->a:Landroidx/fragment/app/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lyf;->a:Landroidx/fragment/app/b;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/b;->c:Lvf;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/b;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lvf;->F:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object p0, p0, Lyf;->b:Lzf;

    .line 17
    .line 18
    iget-object p0, p0, Lzf;->a:Landroidx/fragment/app/a;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/a;->C()Lhd;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Lgc;->f(Landroid/view/ViewGroup;Lhd;)Lgc;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lgc;->e()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
