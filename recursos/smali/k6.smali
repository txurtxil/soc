.class public final synthetic Lk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq6;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/widget/ProgressBar;

.field public final synthetic e:Landroid/widget/ListView;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lq6;Ljava/util/ArrayList;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/ListView;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6;->a:Lq6;

    iput-object p2, p0, Lk6;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lk6;->c:Ljava/lang/String;

    iput-object p4, p0, Lk6;->d:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lk6;->e:Landroid/widget/ListView;

    iput-object p6, p0, Lk6;->f:Landroid/view/View;

    iput-object p7, p0, Lk6;->g:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk6;->a:Lq6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvf;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v1, Lm6;

    .line 11
    .line 12
    iget-object v2, p0, Lk6;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v3, p0, Lk6;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2, v3}, Lm6;-><init>(Lq6;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    iget-object v5, p0, Lk6;->d:Landroid/widget/ProgressBar;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lk6;->e:Landroid/widget/ListView;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    .line 35
    const v6, 0x7f090054

    .line 36
    .line 37
    .line 38
    iget-object v7, p0, Lk6;->f:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v4, v6}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Ll6;

    .line 48
    .line 49
    invoke-direct {v6, v0, v1}, Ll6;-><init>(Lq6;Lm6;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lk6;->g:Landroid/widget/EditText;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lp6;

    .line 62
    .line 63
    invoke-direct {v0, v1, v4}, Lp6;-><init>(Lm6;Landroid/widget/ListView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    move v0, v5

    .line 74
    :goto_0
    if-ge v0, p0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    check-cast v1, Ln6;

    .line 83
    .line 84
    iget-object v1, v1, Ln6;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v5, -0x1

    .line 97
    :goto_1
    if-lez v5, :cond_3

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_2
    return-void
.end method
