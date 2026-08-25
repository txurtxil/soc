.class public final Lcc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Ls20;

.field public final synthetic e:Lec;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLs20;Lec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcc;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcc;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcc;->d:Ls20;

    .line 8
    .line 9
    iput-object p5, p0, Lcc;->e:Lec;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcc;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Lcc;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcc;->c:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcc;->d:Ls20;

    .line 13
    .line 14
    iget p1, p1, Ls20;->a:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Lt20;->a(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcc;->e:Lec;

    .line 20
    .line 21
    invoke-virtual {p0}, Lt3;->d()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
