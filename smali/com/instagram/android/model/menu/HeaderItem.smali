.class public Lcom/instagram/android/model/menu/HeaderItem;
.super Ljava/lang/Object;
.source "HeaderItem.java"


# instance fields
.field mStringResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "stringResId"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/instagram/android/model/menu/HeaderItem;->mStringResId:I

    .line 9
    return-void
.end method


# virtual methods
.method public getStringResId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/instagram/android/model/menu/HeaderItem;->mStringResId:I

    return v0
.end method
