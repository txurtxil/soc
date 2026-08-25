.class public final Lj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic b:Lm2;

.field public final synthetic c:Lk2;


# direct methods
.method public constructor <init>(Lk2;Landroidx/appcompat/app/AlertController$RecycleListView;Lm2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2;->c:Lk2;

    .line 5
    .line 6
    iput-object p2, p0, Lj2;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 7
    .line 8
    iput-object p3, p0, Lj2;->b:Lm2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj2;->c:Lk2;

    .line 2
    .line 3
    iget-object p2, p1, Lk2;->p:[Z

    .line 4
    .line 5
    iget-object p4, p0, Lj2;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 10
    .line 11
    .line 12
    move-result p5

    .line 13
    aput-boolean p5, p2, p3

    .line 14
    .line 15
    :cond_0
    iget-object p1, p1, Lk2;->t:Lqq;

    .line 16
    .line 17
    iget-object p0, p0, Lj2;->b:Lm2;

    .line 18
    .line 19
    iget-object p0, p0, Lm2;->b:Lo2;

    .line 20
    .line 21
    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1, p0, p3, p2}, Lqq;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
