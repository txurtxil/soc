.class public final Lfa0;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic a:Lk60;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lk60;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa0;->a:Lk60;

    .line 2
    .line 3
    iput-object p2, p0, Lfa0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lfa0;->a:Lk60;

    iget-object p0, p0, Lfa0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lk60;->g(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lfa0;->a:Lk60;

    iget-object p0, p0, Lfa0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lk60;->f(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lfa0;->a:Lk60;

    invoke-virtual {p0}, Lk60;->b()V

    return-void
.end method
