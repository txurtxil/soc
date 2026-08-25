.class public final Lqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Lrq;


# direct methods
.method public constructor <init>(Lrq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqq;->a:Lrq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lqq;->a:Lrq;

    .line 2
    .line 3
    iget-object p1, p0, Lrq;->r0:Ljava/util/HashSet;

    .line 4
    .line 5
    iget-boolean v0, p0, Lrq;->s0:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lrq;->u0:[Ljava/lang/CharSequence;

    .line 10
    .line 11
    aget-object p2, p3, p2

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    or-int/2addr p1, v0

    .line 22
    iput-boolean p1, p0, Lrq;->s0:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p3, p0, Lrq;->u0:[Ljava/lang/CharSequence;

    .line 26
    .line 27
    aget-object p2, p3, p2

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    or-int/2addr p1, v0

    .line 38
    iput-boolean p1, p0, Lrq;->s0:Z

    .line 39
    .line 40
    return-void
.end method
