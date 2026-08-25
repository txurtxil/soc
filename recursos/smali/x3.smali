.class public final synthetic Lx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj;


# instance fields
.field public final synthetic a:Lo2;


# direct methods
.method public synthetic constructor <init>(Lo2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3;->a:Lo2;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lx3;->a:Lo2;

    invoke-virtual {p0, p1}, Lo2;->j(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
