.class public Lcom/instagram/android/widget/SimpleProxyView;
.super Landroid/widget/LinearLayout;
.source "SimpleProxyView.java"


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z

    .line 20
    new-instance v0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;-><init>(Lcom/instagram/android/widget/SimpleProxyView;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z

    .line 25
    new-instance v0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;-><init>(Lcom/instagram/android/widget/SimpleProxyView;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z

    .line 30
    new-instance v0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;

    invoke-direct {v0, p0}, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;-><init>(Lcom/instagram/android/widget/SimpleProxyView;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/SimpleProxyView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/widget/SimpleProxyView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/widget/SimpleProxyView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z

    return v0
.end method


# virtual methods
.method public addAdditionalOnClickListeners(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/instagram/android/widget/SimpleProxyView;->mListener:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method public setProxyToOnClickListener(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z

    .line 45
    return-void
.end method
