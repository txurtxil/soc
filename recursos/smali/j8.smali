.class public Lj8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Lh8;

.field public final b:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lh8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8;->b:Landroid/view/LayoutInflater$Factory2;

    .line 5
    .line 6
    iput-object p2, p0, Lj8;->a:Lh8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj8;->b:Landroid/view/LayoutInflater$Factory2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lj8;->a:Lh8;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p4}, Lh8;->d(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lj8;->b:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lj8;->a:Lh8;

    invoke-virtual {p0, p1, p2, p3}, Lh8;->d(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1
.end method
