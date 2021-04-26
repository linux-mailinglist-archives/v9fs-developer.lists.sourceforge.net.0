Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7771C36B99A
	for <lists+v9fs-developer@lfdr.de>; Mon, 26 Apr 2021 21:03:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb6Vm-0000OG-Ri; Mon, 26 Apr 2021 19:03:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1lb6Va-0000Mi-0D
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ouGZBrLLWit6/ZcOCgBmqDAJzjKl2dpVcZkTyeLSBYo=; b=HZysVOTuw3AWAmau3Z8/v/jMJY
 fJpdoOGfQWAVBQecYi8IAGdixZ7YUAwIcaIP1DGPInF6c2U2n7JTUfMG3VRgzfdebswQpybMD4tBH
 IQdclO5tMoav0roJWrZXhbEWwwj2He3QlMUrCUR5U32FeiurF+tEvgvqa8uNYZT1Ww4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ouGZBrLLWit6/ZcOCgBmqDAJzjKl2dpVcZkTyeLSBYo=; b=KuxFZOyVBLtzrqjYeY1ya5rTZp
 mt2iHi7Cwl1Twp5rcoUAJW86CqxDXLEtlf/JQUF8XQQVe90xNFHvtgh5ZKsNvHSeO9/3B97pwSZb0
 rUktILY0RQ4IbV/H+/+xR6c6VQwJVLHrwMqFBCDR5KRp7B32viRRCAcmBoxLasLjC3SA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lb6VU-00CzZK-Qy
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619463770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ouGZBrLLWit6/ZcOCgBmqDAJzjKl2dpVcZkTyeLSBYo=;
 b=UaKPBLGlulw8usBvnFSBcsomiGesJhBqB0JotOgbxmK35yirHGi4WdOO4osqTshVVIrpM5
 Iwv6qs5AulTLVy5p8T+9R1EAUJ8VJT7HAE1vvt1eOBT89aIWzvrCRpu+8WSYf32LySFxzq
 D7HUBlPvtP7VrOqInkyAAsFg35Gxc3g=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-232-1kL9kyCZPE65XXMVdMREHg-1; Mon, 26 Apr 2021 15:02:48 -0400
X-MC-Unique: 1kL9kyCZPE65XXMVdMREHg-1
Received: by mail-qk1-f199.google.com with SMTP id
 w186-20020a3762c30000b02902e385de333fso20877876qkb.8
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 26 Apr 2021 12:02:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=ouGZBrLLWit6/ZcOCgBmqDAJzjKl2dpVcZkTyeLSBYo=;
 b=XomiBuWrde+r0IdoEY1SalxtEsMnRbpYNqfnpNNkK99ljzB/QgL8e5+o4vWEciWGrT
 XruGQFDTRM8cuoXy0BqOgdQBvDd1loTMiaJSDkdYorr+3Tq8nCzd5JTlwVOwnOTVxSrB
 o3ryyVfyD0L8VnZbjSXT/Q5mqVk4B5zTzL1p5RSz4w3ZSLX+V2ycWWshcv+jKtzwi6nk
 5NUfKini+QsUdrvlywCERAj69r+Y+H7DwBklg0P3eLUmQ9z2910K9avqO44SVDdehrp9
 vlxrttQJhwoSwK0LIw9T0d5BH9CRriP96o835lHg8d2DNqR3hR17D7icGF5UY7m7UXen
 PUzA==
X-Gm-Message-State: AOAM531pIFPz1y1wiBmTYAp2kGd7zRQuM73oI87VThvQPZSJquI2RFbZ
 80LnOCtTjTLzPzgnyO4sT9+DG1WeJqzhlmBVH6WSWG2UHXK9Npl3VNtmlH9v5m1Gy+FRGonShXI
 hqdYhYE4K5pHWoCstwpLNLwFWI5LxLzG6WR8=
X-Received: by 2002:a05:6214:12ab:: with SMTP id
 w11mr2594682qvu.14.1619463768330; 
 Mon, 26 Apr 2021 12:02:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwGCsMCqX/N3XGxXqCeA/FOnTSmKwq96TpGbwn+GxMf4WVXk/guJWr0j2oTl477h4kubLqiGw==
X-Received: by 2002:a05:6214:12ab:: with SMTP id
 w11mr2594656qvu.14.1619463768135; 
 Mon, 26 Apr 2021 12:02:48 -0700 (PDT)
Received: from [192.168.1.180] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id c17sm11477744qtd.71.2021.04.26.12.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Apr 2021 12:02:47 -0700 (PDT)
Message-ID: <9e5744b2b647a8ff9cdea6efb58c39adde48f7f0.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>, Alexander Viro
 <viro@zeniv.linux.org.uk>
Date: Mon, 26 Apr 2021 15:02:46 -0400
In-Reply-To: <3545034.1619392490@warthog.procyon.org.uk>
References: <161918448151.3145707.11541538916600921083.stgit@warthog.procyon.org.uk>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <3545034.1619392490@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lb6VU-00CzZK-Qy
Subject: Re: [V9fs-developer] [PATCH] iov_iter: Four fixes for ITER_XARRAY
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCAyMDIxLTA0LTI2IGF0IDAwOjE0ICswMTAwLCBEYXZpZCBIb3dlbGxzIHdyb3RlOgo+
IEhpIEFsLAo+IAo+IEkgdGhpbmsgdGhpcyBwYXRjaCBzaG91bGQgaW5jbHVkZSBhbGwgdGhlIGZp
eGVzIG5lY2Vzc2FyeS4gIEkgY291bGQgbWVyZ2UKPiBpdCBpbiwgYnV0IEkgdGhpbmsgaXQgbWln
aHQgYmUgYmV0dGVyIHRvIHRhZyBpdCBvbiB0aGUgZW5kIGFzIGFuIGFkZGl0aW9uYWwKPiBwYXRj
aC4KPiAKPiBEYXZpZAo+IC0tLQo+IGlvdl9pdGVyOiBGb3VyIGZpeGVzIGZvciBJVEVSX1hBUlJB
WQo+IAo+IEZpeCBmb3VyIHRoaW5nc1sxXSBpbiB0aGUgcGF0Y2ggdGhhdCBhZGRzIElURVJfWEFS
UkFZWzJdOgo+IAo+IMKgKDEpIFJlbW92ZSB0aGUgYWRkcmVzc19zcGFjZSBzdHJ1Y3QgcHJlZGVj
bGFyYXRpb24uICBUaGlzIGlzIGEgaG9sZG92ZXIKPiDCoMKgwqDCoMKgZnJvbSB3aGVuIGl0IHdh
cyBJVEVSX01BUFBJTkcuCj4gCj4gwqAoMikgRml4IF9jb3B5X21jX3RvX2l0ZXIoKSBzbyB0aGF0
IHRoZSB4YXJyYXkgc2VnbWVudCB1cGRhdGVzIGNvdW50IGFuZAo+IMKgwqDCoMKgwqBpb3Zfb2Zm
c2V0IGluIHRoZSBpdGVyYXRvciBiZWZvcmUgcmV0dXJuaW5nLgo+IAo+IMKgKDMpIEZpeCBpb3Zf
aXRlcl9hbGlnbm1lbnQoKSB0byBub3QgbG9vcCBpbiB0aGUgeGFycmF5IGNhc2UuICBCZWNhdXNl
IHRoZQo+IMKgwqDCoMKgwqBtaWRkbGUgcGFnZXMgYXJlIGFsbCB3aG9sZSBwYWdlcywgb25seSB0
aGUgZW5kIHBhZ2VzIG5lZWQgYmUKPiDCoMKgwqDCoMKgY29uc2lkZXJlZCAtIGFuZCB0aGlzIGNh
biBiZSByZWR1Y2VkIHRvIGp1c3QgbG9va2luZyBhdCB0aGUgc3RhcnQKPiDCoMKgwqDCoMKgcG9z
aXRpb24gaW4gdGhlIHhhcnJheSBhbmQgdGhlIGl0ZXJhdGlvbiBzaXplLgo+IAo+IMKgKDQpIEZp
eCBpb3ZfaXRlcl9hZHZhbmNlKCkgdG8gbGltaXQgdGhlIHNpemUgb2YgdGhlIGFkdmFuY2UgdG8g
bm8gbW9yZQo+IMKgwqDCoMKgwqB0aGFuIHRoZSByZW1haW5pbmcgaXRlcmF0aW9uIHNpemUuCj4g
Cj4gUmVwb3J0ZWQtYnk6IEFsIFZpcm8gPHZpcm9AemVuaXYubGludXgub3JnLnVrPgo+IFNpZ25l
ZC1vZmYtYnk6IERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+Cj4gTGluazogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9ZSVZySlQ4R3dMSTBXbGd4QHplbml2LWNhLmxpbnV4Lm9y
Zy51ayBbMV0KPiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzE2MTkxODQ0ODE1MS4z
MTQ1NzA3LjExNTQxNTM4OTE2NjAwOTIxMDgzLnN0Z2l0QHdhcnRob2cucHJvY3lvbi5vcmcudWsg
WzJdCj4gLS0tCj4gwqBpbmNsdWRlL2xpbnV4L3Vpby5oIHwgICAgMSAtCj4gwqBsaWIvaW92X2l0
ZXIuYyAgICAgIHwgICAgNSArKysrKwo+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC91aW8uaCBi
L2luY2x1ZGUvbGludXgvdWlvLmgKPiBpbmRleCA1ZjVmZmM0NWQ0YWEuLmQzZWM4NzcwNmQ3NSAx
MDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3Vpby5oCj4gKysrIGIvaW5jbHVkZS9saW51eC91
aW8uaAo+IEBAIC0xMCw3ICsxMCw2IEBACj4gwqAjaW5jbHVkZSA8dWFwaS9saW51eC91aW8uaD4K
PiDCoAo+IAo+IAo+IAo+IMKgc3RydWN0IHBhZ2U7Cj4gLXN0cnVjdCBhZGRyZXNzX3NwYWNlOwo+
IMKgc3RydWN0IHBpcGVfaW5vZGVfaW5mbzsKPiDCoAo+IAo+IAo+IAo+IMKgc3RydWN0IGt2ZWMg
ewo+IGRpZmYgLS1naXQgYS9saWIvaW92X2l0ZXIuYyBiL2xpYi9pb3ZfaXRlci5jCj4gaW5kZXgg
NDRmYTcyNmE4MzIzLi42MTIyOGE2YzY5ZjggMTAwNjQ0Cj4gLS0tIGEvbGliL2lvdl9pdGVyLmMK
PiArKysgYi9saWIvaW92X2l0ZXIuYwo+IEBAIC03OTEsNiArNzkxLDggQEAgc2l6ZV90IF9jb3B5
X21jX3RvX2l0ZXIoY29uc3Qgdm9pZCAqYWRkciwgc2l6ZV90IGJ5dGVzLCBzdHJ1Y3QgaW92X2l0
ZXIgKmkpCj4gwqAJCQljdXJyX2FkZHIgPSAodW5zaWduZWQgbG9uZykgZnJvbTsKPiDCoAkJCWJ5
dGVzID0gY3Vycl9hZGRyIC0gc19hZGRyIC0gcmVtOwo+IMKgCQkJcmN1X3JlYWRfdW5sb2NrKCk7
Cj4gKwkJCWktPmlvdl9vZmZzZXQgKz0gYnl0ZXM7Cj4gKwkJCWktPmNvdW50IC09IGJ5dGVzOwo+
IMKgCQkJcmV0dXJuIGJ5dGVzOwo+IMKgCQl9Cj4gwqAJCX0pCj4gQEAgLTExNDcsNiArMTE0OSw3
IEBAIHZvaWQgaW92X2l0ZXJfYWR2YW5jZShzdHJ1Y3QgaW92X2l0ZXIgKmksIHNpemVfdCBzaXpl
KQo+IMKgCQlyZXR1cm47Cj4gwqAJfQo+IMKgCWlmICh1bmxpa2VseShpb3ZfaXRlcl9pc194YXJy
YXkoaSkpKSB7Cj4gKwkJc2l6ZSA9IG1pbihzaXplLCBpLT5jb3VudCk7Cj4gwqAJCWktPmlvdl9v
ZmZzZXQgKz0gc2l6ZTsKPiDCoAkJaS0+Y291bnQgLT0gc2l6ZTsKPiDCoAkJcmV0dXJuOwo+IEBA
IC0xMzQ2LDYgKzEzNDksOCBAQCB1bnNpZ25lZCBsb25nIGlvdl9pdGVyX2FsaWdubWVudChjb25z
dCBzdHJ1Y3QgaW92X2l0ZXIgKmkpCj4gwqAJCQlyZXR1cm4gc2l6ZSB8IGktPmlvdl9vZmZzZXQ7
Cj4gwqAJCXJldHVybiBzaXplOwo+IMKgCX0KPiArCWlmICh1bmxpa2VseShpb3ZfaXRlcl9pc194
YXJyYXkoaSkpKQo+ICsJCXJldHVybiAoaS0+eGFycmF5X3N0YXJ0ICsgaS0+aW92X29mZnNldCkg
fCBpLT5jb3VudDsKPiDCoAlpdGVyYXRlX2FsbF9raW5kcyhpLCBzaXplLCB2LAo+IMKgCQkocmVz
IHw9ICh1bnNpZ25lZCBsb25nKXYuaW92X2Jhc2UgfCB2Lmlvdl9sZW4sIDApLAo+IMKgCQlyZXMg
fD0gdi5idl9vZmZzZXQgfCB2LmJ2X2xlbiwKPiAKCkkgZGlkIGEgdGVzdCBydW4gd2l0aCB5b3Vy
IHY3IHBpbGUsIHRoaXMgcGF0Y2gsIGFuZCBteSBjZXBoIGZzY2FjaGUKcmV3b3JrIHBhdGNoZXMg
YW5kIGl0IGRpZCBmaW5lLiBZb3UgY2FuIGFkZDoKClRlc3RlZC1ieTogSmVmZiBMYXl0b24gPGps
YXl0b25AcmVkaGF0LmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
