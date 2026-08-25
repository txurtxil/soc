.class public final synthetic Lpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(IFFFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpu;->a:I

    iput p2, p0, Lpu;->b:F

    iput p3, p0, Lpu;->c:F

    iput p4, p0, Lpu;->d:F

    iput p5, p0, Lpu;->e:F

    iput p6, p0, Lpu;->f:F

    iput p7, p0, Lpu;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v5, p0, Lpu;->f:F

    iget v6, p0, Lpu;->g:I

    iget v0, p0, Lpu;->a:I

    iget v1, p0, Lpu;->b:F

    iget v2, p0, Lpu;->c:F

    iget v3, p0, Lpu;->d:F

    iget v4, p0, Lpu;->e:F

    invoke-static/range {v0 .. v6}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->b(IFFFFFI)V

    return-void
.end method
