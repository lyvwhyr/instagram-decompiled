.class public Lcom/instagram/android/model/menu/TextItem;
.super Ljava/lang/Object;
.source "TextItem.java"


# instance fields
.field private final mStringResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "stringResId"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/instagram/android/model/menu/TextItem;->mStringResId:I

    .line 11
    return-void
.end method


# virtual methods
.method public getStringResId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/instagram/android/model/menu/TextItem;->mStringResId:I

    return v0
.end method
