.class public final synthetic Ltu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

.field public final synthetic c:Lax;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lch;


# direct methods
.method public synthetic constructor <init>(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltu;->a:I

    iput-object p2, p0, Ltu;->b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iput-object p3, p0, Ltu;->c:Lax;

    iput-object p4, p0, Ltu;->d:Ljava/lang/Runnable;

    iput-object p5, p0, Ltu;->e:Lch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltu;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Ltu;->e:Lch;

    iget v2, p0, Ltu;->a:I

    iget-object v3, p0, Ltu;->b:Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    iget-object p0, p0, Ltu;->c:Lax;

    invoke-static {v2, v3, p0, v0, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->c(ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lax;Ljava/lang/Runnable;Lch;)V

    return-void
.end method
