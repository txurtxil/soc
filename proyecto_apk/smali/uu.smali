.class public final synthetic Luu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

.field public final synthetic c:I

.field public final synthetic d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lax;

.field public final synthetic g:Lch;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu;->a:Landroid/content/Context;

    iput-object p2, p0, Luu;->b:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    iput p3, p0, Luu;->c:I

    iput-object p4, p0, Luu;->d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iput-object p5, p0, Luu;->e:Ljava/lang/Runnable;

    iput-object p6, p0, Luu;->f:Lax;

    iput-object p7, p0, Luu;->g:Lch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v5, p0, Luu;->f:Lax;

    iget-object v6, p0, Luu;->g:Lch;

    iget-object v0, p0, Luu;->a:Landroid/content/Context;

    iget-object v1, p0, Luu;->b:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    iget v2, p0, Luu;->c:I

    iget-object v3, p0, Luu;->d:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iget-object v4, p0, Luu;->e:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v6}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->i(Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Ljava/lang/Runnable;Lax;Lch;)V

    return-void
.end method
