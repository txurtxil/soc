.class public final Lu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lu4;->a:I

    iput-object p2, p0, Lu4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .line 1
    iget p1, p0, Lu4;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lu4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->m(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Ltm;

    .line 15
    .line 16
    iget-object p1, p0, Ltm;->e:Ljl;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-gez p3, :cond_1

    .line 20
    .line 21
    iget-object v1, p1, Ljl;->A:Lh4;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p1, Ljl;->c:Ldd;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    invoke-static {p0, v1}, Ltm;->a(Ltm;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_7

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    if-gez p3, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    move-object v4, p2

    .line 61
    move v5, p3

    .line 62
    move-wide v6, p4

    .line 63
    goto :goto_6

    .line 64
    :cond_3
    :goto_2
    iget-object p0, p1, Ljl;->A:Lh4;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_4

    .line 71
    .line 72
    move-object p2, v0

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    iget-object p0, p1, Ljl;->c:Ldd;

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    move-object p2, p0

    .line 81
    :goto_3
    iget-object p0, p1, Ljl;->A:Lh4;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_5

    .line 88
    .line 89
    const/4 p0, -0x1

    .line 90
    :goto_4
    move p3, p0

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    iget-object p0, p1, Ljl;->c:Ldd;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    goto :goto_4

    .line 99
    :goto_5
    iget-object p0, p1, Ljl;->A:Lh4;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_6

    .line 106
    .line 107
    const-wide/high16 p4, -0x8000000000000000L

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    iget-object p0, p1, Ljl;->c:Ldd;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 113
    .line 114
    .line 115
    move-result-wide p4

    .line 116
    goto :goto_1

    .line 117
    :goto_6
    iget-object v3, p1, Ljl;->c:Ldd;

    .line 118
    .line 119
    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {p1}, Ljl;->dismiss()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_1
    check-cast p0, Lw4;

    .line 127
    .line 128
    iget-object p1, p0, Lw4;->H:Lz4;

    .line 129
    .line 130
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    if-eqz p4, :cond_8

    .line 138
    .line 139
    iget-object p4, p0, Lw4;->E:Lt4;

    .line 140
    .line 141
    invoke-virtual {p4, p3}, Lt4;->getItemId(I)J

    .line 142
    .line 143
    .line 144
    move-result-wide p4

    .line 145
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {p0}, Ljl;->dismiss()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
