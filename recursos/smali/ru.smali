.class public final synthetic Lru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field public final synthetic c:Lax;

.field public final synthetic d:Lqu;

.field public final synthetic e:Lch;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Lqu;Lch;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru;->a:I

    iput-object p2, p0, Lru;->b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iput-object p3, p0, Lru;->c:Lax;

    iput-object p4, p0, Lru;->d:Lqu;

    iput-object p5, p0, Lru;->e:Lch;

    iput-object p6, p0, Lru;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v5, p0, Lru;->f:Landroid/content/Context;

    move-object v6, p1

    check-cast v6, Lidv/lzn/screenonauto/privileged/IPrivilegedService;

    iget v0, p0, Lru;->a:I

    iget-object v1, p0, Lru;->b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iget-object v2, p0, Lru;->c:Lax;

    iget-object v3, p0, Lru;->d:Lqu;

    iget-object v4, p0, Lru;->e:Lch;

    invoke-static/range {v0 .. v6}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->b(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Lqu;Lch;Landroid/content/Context;Lidv/lzn/screenonauto/privileged/IPrivilegedService;)Lf60;

    move-result-object p0

    return-object p0
.end method
