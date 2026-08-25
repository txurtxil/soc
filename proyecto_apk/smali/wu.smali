.class public final synthetic Lwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Lax;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lch;

.field public final synthetic i:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

.field public final synthetic j:Z

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwu;->a:I

    iput-boolean p2, p0, Lwu;->b:Z

    iput-object p3, p0, Lwu;->c:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iput-boolean p4, p0, Lwu;->d:Z

    iput-object p5, p0, Lwu;->e:Ljava/lang/Runnable;

    iput-object p6, p0, Lwu;->f:Lax;

    iput-object p7, p0, Lwu;->g:Landroid/content/Context;

    iput-object p8, p0, Lwu;->h:Lch;

    iput-object p9, p0, Lwu;->i:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    iput-boolean p10, p0, Lwu;->j:Z

    iput p11, p0, Lwu;->k:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-boolean v9, p0, Lwu;->j:Z

    iget v10, p0, Lwu;->k:I

    iget v0, p0, Lwu;->a:I

    iget-boolean v1, p0, Lwu;->b:Z

    iget-object v2, p0, Lwu;->c:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iget-boolean v3, p0, Lwu;->d:Z

    iget-object v4, p0, Lwu;->e:Ljava/lang/Runnable;

    iget-object v5, p0, Lwu;->f:Lax;

    iget-object v6, p0, Lwu;->g:Landroid/content/Context;

    iget-object v7, p0, Lwu;->h:Lch;

    iget-object v8, p0, Lwu;->i:Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    invoke-static/range {v0 .. v10}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->h(IZLidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;ZLjava/lang/Runnable;Lax;Landroid/content/Context;Lch;Lidv/lzn/screenonauto/privileged/IPrivilegedService;ZI)V

    return-void
.end method
