.class public final synthetic Lmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    sget p1, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->G:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmv;->a:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 6
    .line 7
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
