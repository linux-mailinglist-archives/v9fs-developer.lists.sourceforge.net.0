Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC47260F
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qL-0000dV-DF; Wed, 24 Jul 2019 04:25:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qK-0000dL-Ku
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTRb5TwAvlEMgKUD4ybaWyu+OqmkL6O8558wldZQN2o=; b=LU+9dokeypYKwRDHkkSLj2epyB
 qVez16e7ixB7wGaHowVPgM9mTKCKk1REMvbVfaUfTFe8sI4x5kll+1GAVQK4nI6ZorOUYbZ03xUyo
 j/18+OMt5I0pRwp184hE1KZDXJnLuFGP29MxgT3WrFdvNGV8wGgu9vc1MozICB4N9bdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KTRb5TwAvlEMgKUD4ybaWyu+OqmkL6O8558wldZQN2o=; b=cCXV0hhzWx1U3lclilH55Tizt6
 7WtA0VCfRQrmGF+DLIzqN9SZIGzDR5b4SAUyyeQ9j0qoB+dFZGSqNc7HXd9CF4DXh+lLfOlYNj1Ar
 +zNzUKiElHxYK7dW8gHGacxiQ+BzgOtBtUN8EShKJFMxwCCY4dyiIsereO/NYfm7+NbA=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qJ-00DCon-Bz
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:32 +0000
Received: by mail-pg1-f193.google.com with SMTP id t132so20499454pgb.9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KTRb5TwAvlEMgKUD4ybaWyu+OqmkL6O8558wldZQN2o=;
 b=ebcJECgWyU9zYGN2pJY78eWtcvtnox+Oa1zooAOzP6xSmTu5g5nerb6ZfvRSMWFmb+
 nprY3fdZfkPasdJ9q4KtJrJq8tRNMrlLU/iHYusPMn3+9BiXMb/qeZvJ3C/ltb4T4DOy
 ur2oHnU3+1kwTjn9nSXg+vBXMtZIrJ+7IxZcmGAs0pw/RJBl9ZFjfw+QBa7rsXW2W9lk
 0w+ANgMMW5FgsBW5Bc0ygGww1qHrY3+ToVb43K1oJqh8E1qTVYlCJnF6+no0vWLUn6Ku
 wUWcMe8XiTWbkXVO+hHw3kXkBi6lbd9CK09V0F+9Edlqf99NXHcyx09tJPd3+4Lpdei7
 xJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KTRb5TwAvlEMgKUD4ybaWyu+OqmkL6O8558wldZQN2o=;
 b=ESfHxGqFnz2D2fvvcRlUu8BCiHT68LK9CJZpX8srp1tDox+155zIS7Q/voRSBEDef/
 MVAXO1t4U4dYl0MlIsFdAixMD7aSW6Gpo4HrQ3MSExM1FjLXFGoZYK0qU2K5mluzHbzI
 FT8520CuzgZf+6+v6RMo5dOYkQq3BXGjeq8M6nI5dDljcJALCrPVchHGCIOjs38/oBo1
 QlX5NVcUqJ7iE9qxAbG7JTWiP0Z/lFThgSh3ttqf1cDlrJtyUzfN1K4IQaBIaxeAaxXL
 F2kuBVfhaIUgdGe9/G31/LBC1IT8SjvZlgM2NNP9a2Lg03LhDuNS1WvGBTB8kNP2EOFM
 ALow==
X-Gm-Message-State: APjAAAWqTwUst9CilxZEp4+CoTx9H0gIUXzADva18YHyZC+EASHit+QG
 WgCH+ONcUH1pzskY08WqTaQ=
X-Google-Smtp-Source: APXvYqzBe/J5Vy13pSVSxifZgvBoznxAqrjVmFcElFPWOR9wwqxoPED73uSDyHAUwm8NHJdocMjUeA==
X-Received: by 2002:a62:7641:: with SMTP id r62mr9177588pfc.35.1563942325690; 
 Tue, 23 Jul 2019 21:25:25 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:25 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:09 -0700
Message-Id: <20190724042518.14363-4-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724042518.14363-1-jhubbard@nvidia.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qJ-00DCon-Bz
Subject: [V9fs-developer] [PATCH 03/12] block: bio_release_pages: use flags
 arg instead of bool
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Minwoo Im <minwoo.im.dev@gmail.com>,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKSW4gY29tbWl0IGQyNDFh
OTVmMzUxNCAoImJsb2NrOiBvcHRpb25hbGx5IG1hcmsgcGFnZXMgZGlydHkgaW4KYmlvX3JlbGVh
c2VfcGFnZXMiKSwgbmV3ICJib29sIG1hcmtfZGlydHkiIGFyZ3VtZW50IHdhcyBhZGRlZCB0bwpi
aW9fcmVsZWFzZV9wYWdlcy4KCkluIHVwY29taW5nIHdvcmssIGFub3RoZXIgYm9vbCBhcmd1bWVu
dCAodG8gaW5kaWNhdGUgdGhhdCB0aGUgcGFnZXMgY2FtZQpmcm9tIGdldF91c2VyX3BhZ2VzKSBp
cyBnb2luZyB0byBiZSBhZGRlZC4gVGhhdCdzIG9uZSBib29sIHRvbyBtYW55LApiZWNhdXNlIGl0
J3Mgbm90IGRlc2lyYWJsZSBoYXZlIGNhbGxzIG9mIHRoZSBmb3JtOgoKICAgIGZvbyh0cnVlLCBm
YWxzZSwgdHJ1ZSwgZXRjKTsKCkluIG9yZGVyIHRvIHByZXBhcmUgZm9yIHRoYXQsIGNoYW5nZSB0
aGUgYXJndW1lbnQgZnJvbSBhIGJvb2wsIHRvIGEKdHlwZXNhZmUgKGVudW0tYmFzZWQpIGZsYWdz
IGFyZ3VtZW50LgoKQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFkLm9yZz4KQ2M6
IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogTWlud29vIEltIDxtaW53
b28uaW0uZGV2QGdtYWlsLmNvbT4KQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGtlcm5lbC5kaz4KU2ln
bmVkLW9mZi1ieTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgotLS0KIGJsb2Nr
L2Jpby5jICAgICAgICAgfCAxMiArKysrKystLS0tLS0KIGZzL2Jsb2NrX2Rldi5jICAgICAgfCAg
NCArKy0tCiBmcy9kaXJlY3QtaW8uYyAgICAgIHwgIDIgKy0KIGluY2x1ZGUvbGludXgvYmlvLmgg
fCAxMyArKysrKysrKysrKystCiA0IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Jsb2NrL2Jpby5jIGIvYmxvY2svYmlvLmMKaW5k
ZXggMjk5YTBlNzY1MWVjLi43Njc1ZTJkZTUwOWQgMTAwNjQ0Ci0tLSBhL2Jsb2NrL2Jpby5jCisr
KyBiL2Jsb2NrL2Jpby5jCkBAIC04MzMsNyArODMzLDcgQEAgaW50IGJpb19hZGRfcGFnZShzdHJ1
Y3QgYmlvICpiaW8sIHN0cnVjdCBwYWdlICpwYWdlLAogfQogRVhQT1JUX1NZTUJPTChiaW9fYWRk
X3BhZ2UpOwogCi12b2lkIGJpb19yZWxlYXNlX3BhZ2VzKHN0cnVjdCBiaW8gKmJpbywgYm9vbCBt
YXJrX2RpcnR5KQordm9pZCBiaW9fcmVsZWFzZV9wYWdlcyhzdHJ1Y3QgYmlvICpiaW8sIGVudW0g
YmlvX3JwX2ZsYWdzX3QgZmxhZ3MpCiB7CiAJc3RydWN0IGJ2ZWNfaXRlcl9hbGwgaXRlcl9hbGw7
CiAJc3RydWN0IGJpb192ZWMgKmJ2ZWM7CkBAIC04NDIsNyArODQyLDcgQEAgdm9pZCBiaW9fcmVs
ZWFzZV9wYWdlcyhzdHJ1Y3QgYmlvICpiaW8sIGJvb2wgbWFya19kaXJ0eSkKIAkJcmV0dXJuOwog
CiAJYmlvX2Zvcl9lYWNoX3NlZ21lbnRfYWxsKGJ2ZWMsIGJpbywgaXRlcl9hbGwpIHsKLQkJaWYg
KG1hcmtfZGlydHkgJiYgIVBhZ2VDb21wb3VuZChidmVjLT5idl9wYWdlKSkKKwkJaWYgKChmbGFn
cyAmIEJJT19SUF9NQVJLX0RJUlRZKSAmJiAhUGFnZUNvbXBvdW5kKGJ2ZWMtPmJ2X3BhZ2UpKQog
CQkJc2V0X3BhZ2VfZGlydHlfbG9jayhidmVjLT5idl9wYWdlKTsKIAkJcHV0X3BhZ2UoYnZlYy0+
YnZfcGFnZSk7CiAJfQpAQCAtMTQyMSw3ICsxNDIxLDcgQEAgc3RydWN0IGJpbyAqYmlvX21hcF91
c2VyX2lvdihzdHJ1Y3QgcmVxdWVzdF9xdWV1ZSAqcSwKIAlyZXR1cm4gYmlvOwogCiAgb3V0X3Vu
bWFwOgotCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgZmFsc2UpOworCWJpb19yZWxlYXNlX3BhZ2Vz
KGJpbywgQklPX1JQX05PUk1BTCk7CiAJYmlvX3B1dChiaW8pOwogCXJldHVybiBFUlJfUFRSKHJl
dCk7CiB9CkBAIC0xNDM3LDcgKzE0MzcsNyBAQCBzdHJ1Y3QgYmlvICpiaW9fbWFwX3VzZXJfaW92
KHN0cnVjdCByZXF1ZXN0X3F1ZXVlICpxLAogICovCiB2b2lkIGJpb191bm1hcF91c2VyKHN0cnVj
dCBiaW8gKmJpbykKIHsKLQliaW9fcmVsZWFzZV9wYWdlcyhiaW8sIGJpb19kYXRhX2RpcihiaW8p
ID09IFJFQUQpOworCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgYmlvX3JwX2RpcnR5X2ZsYWcoYmlv
X2RhdGFfZGlyKGJpbykgPT0gUkVBRCkpOwogCWJpb19wdXQoYmlvKTsKIAliaW9fcHV0KGJpbyk7
CiB9CkBAIC0xNjgzLDcgKzE2ODMsNyBAQCBzdGF0aWMgdm9pZCBiaW9fZGlydHlfZm4oc3RydWN0
IHdvcmtfc3RydWN0ICp3b3JrKQogCXdoaWxlICgoYmlvID0gbmV4dCkgIT0gTlVMTCkgewogCQlu
ZXh0ID0gYmlvLT5iaV9wcml2YXRlOwogCi0JCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgdHJ1ZSk7
CisJCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgQklPX1JQX01BUktfRElSVFkpOwogCQliaW9fcHV0
KGJpbyk7CiAJfQogfQpAQCAtMTY5OSw3ICsxNjk5LDcgQEAgdm9pZCBiaW9fY2hlY2tfcGFnZXNf
ZGlydHkoc3RydWN0IGJpbyAqYmlvKQogCQkJZ290byBkZWZlcjsKIAl9CiAKLQliaW9fcmVsZWFz
ZV9wYWdlcyhiaW8sIGZhbHNlKTsKKwliaW9fcmVsZWFzZV9wYWdlcyhiaW8sIEJJT19SUF9OT1JN
QUwpOwogCWJpb19wdXQoYmlvKTsKIAlyZXR1cm47CiBkZWZlcjoKZGlmZiAtLWdpdCBhL2ZzL2Js
b2NrX2Rldi5jIGIvZnMvYmxvY2tfZGV2LmMKaW5kZXggNDcwN2RmZmY5OTFiLi45ZmU2NjE2Zjg3
ODggMTAwNjQ0Ci0tLSBhL2ZzL2Jsb2NrX2Rldi5jCisrKyBiL2ZzL2Jsb2NrX2Rldi5jCkBAIC0y
NTksNyArMjU5LDcgQEAgX19ibGtkZXZfZGlyZWN0X0lPX3NpbXBsZShzdHJ1Y3Qga2lvY2IgKmlv
Y2IsIHN0cnVjdCBpb3ZfaXRlciAqaXRlciwKIAl9CiAJX19zZXRfY3VycmVudF9zdGF0ZShUQVNL
X1JVTk5JTkcpOwogCi0JYmlvX3JlbGVhc2VfcGFnZXMoJmJpbywgc2hvdWxkX2RpcnR5KTsKKwli
aW9fcmVsZWFzZV9wYWdlcygmYmlvLCBiaW9fcnBfZGlydHlfZmxhZyhzaG91bGRfZGlydHkpKTsK
IAlpZiAodW5saWtlbHkoYmlvLmJpX3N0YXR1cykpCiAJCXJldCA9IGJsa19zdGF0dXNfdG9fZXJy
bm8oYmlvLmJpX3N0YXR1cyk7CiAKQEAgLTMyOSw3ICszMjksNyBAQCBzdGF0aWMgdm9pZCBibGtk
ZXZfYmlvX2VuZF9pbyhzdHJ1Y3QgYmlvICpiaW8pCiAJaWYgKHNob3VsZF9kaXJ0eSkgewogCQli
aW9fY2hlY2tfcGFnZXNfZGlydHkoYmlvKTsKIAl9IGVsc2UgewotCQliaW9fcmVsZWFzZV9wYWdl
cyhiaW8sIGZhbHNlKTsKKwkJYmlvX3JlbGVhc2VfcGFnZXMoYmlvLCBCSU9fUlBfTk9STUFMKTsK
IAkJYmlvX3B1dChiaW8pOwogCX0KIH0KZGlmZiAtLWdpdCBhL2ZzL2RpcmVjdC1pby5jIGIvZnMv
ZGlyZWN0LWlvLmMKaW5kZXggYWUxOTY3ODRmNDg3Li40MjNlZjQzMWRkZGEgMTAwNjQ0Ci0tLSBh
L2ZzL2RpcmVjdC1pby5jCisrKyBiL2ZzL2RpcmVjdC1pby5jCkBAIC01NTEsNyArNTUxLDcgQEAg
c3RhdGljIGJsa19zdGF0dXNfdCBkaW9fYmlvX2NvbXBsZXRlKHN0cnVjdCBkaW8gKmRpbywgc3Ry
dWN0IGJpbyAqYmlvKQogCWlmIChkaW8tPmlzX2FzeW5jICYmIHNob3VsZF9kaXJ0eSkgewogCQli
aW9fY2hlY2tfcGFnZXNfZGlydHkoYmlvKTsJLyogdHJhbnNmZXJzIG93bmVyc2hpcCAqLwogCX0g
ZWxzZSB7Ci0JCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgc2hvdWxkX2RpcnR5KTsKKwkJYmlvX3Jl
bGVhc2VfcGFnZXMoYmlvLCBiaW9fcnBfZGlydHlfZmxhZyhzaG91bGRfZGlydHkpKTsKIAkJYmlv
X3B1dChiaW8pOwogCX0KIAlyZXR1cm4gZXJyOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9i
aW8uaCBiL2luY2x1ZGUvbGludXgvYmlvLmgKaW5kZXggM2NkYjg0Y2RjNDg4Li4yNzE1ZTU1Njc5
YzEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvYmlvLmgKKysrIGIvaW5jbHVkZS9saW51eC9i
aW8uaApAQCAtNDQwLDcgKzQ0MCwxOCBAQCBib29sIF9fYmlvX3RyeV9tZXJnZV9wYWdlKHN0cnVj
dCBiaW8gKmJpbywgc3RydWN0IHBhZ2UgKnBhZ2UsCiB2b2lkIF9fYmlvX2FkZF9wYWdlKHN0cnVj
dCBiaW8gKmJpbywgc3RydWN0IHBhZ2UgKnBhZ2UsCiAJCXVuc2lnbmVkIGludCBsZW4sIHVuc2ln
bmVkIGludCBvZmYpOwogaW50IGJpb19pb3ZfaXRlcl9nZXRfcGFnZXMoc3RydWN0IGJpbyAqYmlv
LCBzdHJ1Y3QgaW92X2l0ZXIgKml0ZXIpOwotdm9pZCBiaW9fcmVsZWFzZV9wYWdlcyhzdHJ1Y3Qg
YmlvICpiaW8sIGJvb2wgbWFya19kaXJ0eSk7CisKK2VudW0gYmlvX3JwX2ZsYWdzX3QgeworCUJJ
T19SUF9OT1JNQUwJCT0gMCwKKwlCSU9fUlBfTUFSS19ESVJUWQk9IDEsCit9OworCitzdGF0aWMg
aW5saW5lIGVudW0gYmlvX3JwX2ZsYWdzX3QgYmlvX3JwX2RpcnR5X2ZsYWcoYm9vbCBtYXJrX2Rp
cnR5KQoreworCXJldHVybiBtYXJrX2RpcnR5ID8gQklPX1JQX01BUktfRElSVFkgOiBCSU9fUlBf
Tk9STUFMOworfQorCit2b2lkIGJpb19yZWxlYXNlX3BhZ2VzKHN0cnVjdCBiaW8gKmJpbywgZW51
bSBiaW9fcnBfZmxhZ3NfdCBmbGFncyk7CiBzdHJ1Y3QgcnFfbWFwX2RhdGE7CiBleHRlcm4gc3Ry
dWN0IGJpbyAqYmlvX21hcF91c2VyX2lvdihzdHJ1Y3QgcmVxdWVzdF9xdWV1ZSAqLAogCQkJCSAg
ICBzdHJ1Y3QgaW92X2l0ZXIgKiwgZ2ZwX3QpOwotLSAKMi4yMi4wCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
