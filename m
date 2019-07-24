Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0817261C
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qW-0000M8-C6; Wed, 24 Jul 2019 04:25:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qV-0000Lx-1s
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ConQbG+Oem1Q8xZVMGorLyFV++CtkhuR2d2QhctIH1U=; b=KXE6kMRPegNkB8VjFF+PlYqCiS
 aBDdeHBPLbCzElS2QQMJUo7EULyUoC14rwq/qlN7hymXNSYncirgwDYem3Ao0zIxJ5ImWVJ+gb/7o
 c74LFSM3pLA/P5AQlA5CMPR6K1mKNBM6dH8yEZwg9h3/jqLRe/KnXq3w1E4FieNg7L8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ConQbG+Oem1Q8xZVMGorLyFV++CtkhuR2d2QhctIH1U=; b=Szhjo0Dxx2MxCjMr1+dffpRAnT
 UZC6w6p82S5U8O+irfVcqJZnoBeH8i3Ti0vwL7YvDQorF+PRQ5v5fbQ41eEt1bXp4OC+FcUBei8dM
 1Yb3uoP+RBifZulWFjGB3GL3OTHq/AfhvIusk3XuYGabb2vw3JgrblEYSF3drpBFUE0M=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qT-00DCpN-MN
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:43 +0000
Received: by mail-pl1-f196.google.com with SMTP id b3so21466304plr.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ConQbG+Oem1Q8xZVMGorLyFV++CtkhuR2d2QhctIH1U=;
 b=rzlDdGXtnPNF/N6VGSj5OlnkKQVNzuJZSX88h3k0QaSU7x9XxY6d4zWea62ZR3fNtS
 gNMZr45iIvfH5HQRUOMwyNN/jLIH836GcUp8Lf+aNFxxaV9vdrr625gCfyA8XZW5PN/Q
 pwujb2Pq5pgz78btiFjK3sxUmpLDWtYh/fYuVQy1tXkvqQxjANX5Mpn0h7bykgaCkfn1
 tCFvQq5xWW5YoxVJrXQ4tXX8LNF75ePai0HBYrs+WY7yUOWhn6yI6XBVflq1lgPq7qJv
 MiEt1P/meAHMnJy5EKWXyM1HfNJ7Mhgk5eJlB+ONmrDSnY2e4Df2D52oQWcyMMCO39pJ
 Eo+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ConQbG+Oem1Q8xZVMGorLyFV++CtkhuR2d2QhctIH1U=;
 b=k4p6m9PptCD54R8+omK+jRybY9Ur2Mnoe2A6YfahFEkYOZbGyYmkmb2SjzkMqlEfO9
 d4jljCqRY0S5qCpdEh0rO0aYtfswoJDERj8Cw73QuhG26fExC78wx+Qkbd8AcAWGfxtT
 9GWowI54aSQXoPl14HBT4U6sp32DoaT3n9kfPUOUYFvgkuzchx9FqknULJg8h7/ud/cv
 Rg/rscKsX+13toAptBgS3nfKMX8Ti1SgYEGqVwXQRuESPml/cZTvWukd5E6s+2ZNnP5a
 +ExMOmizaOjsfBCodE1/b4Gkn/iqkx2EypY0k591U1bJTm0JaDlRFAmsmVueWr9kVxHL
 HkRA==
X-Gm-Message-State: APjAAAW4700BMKbbAHyhSA3oSGfWx3KQoggGh2fD9VamJ2bkeZc02aQe
 IByvAQtxpqQreOYI/Xu/ULE=
X-Google-Smtp-Source: APXvYqyQhtv0FnqZ/I/TW3TWJg4eP/mju41WYZg75l/6hWymbmp//VEgOy1EsZaAb3L+vlqi+tLiHg==
X-Received: by 2002:a17:902:6b44:: with SMTP id
 g4mr83239156plt.152.1563942335854; 
 Tue, 23 Jul 2019 21:25:35 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:35 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:16 -0700
Message-Id: <20190724042518.14363-11-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724042518.14363-1-jhubbard@nvidia.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux.org.uk]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qT-00DCpN-MN
Subject: [V9fs-developer] [PATCH 10/12] fs/ceph: convert put_page() to
 put_user_page*()
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Boaz Harrosh <boaz@plexistor.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>, Dave Chinner <david@fromorbit.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Sage Weil <sage@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 linux-rdma@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Johannes Thumshirn <jthumshirn@suse.de>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, Dan Williams <dan.j.williams@intel.com>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 "Yan, Zheng" <zyan@redhat.com>, linux-fsdevel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RnJvbTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+CgpGb3IgcGFnZXMgdGhh
dCB3ZXJlIHJldGFpbmVkIHZpYSBnZXRfdXNlcl9wYWdlcyooKSwgcmVsZWFzZSB0aG9zZSBwYWdl
cwp2aWEgdGhlIG5ldyBwdXRfdXNlcl9wYWdlKigpIHJvdXRpbmVzLCBpbnN0ZWFkIG9mIHZpYSBw
dXRfcGFnZSgpLgoKVGhpcyBpcyBwYXJ0IGEgdHJlZS13aWRlIGNvbnZlcnNpb24sIGFzIGRlc2Ny
aWJlZCBpbiBjb21taXQgZmMxZDhlN2NjYTJkCigibW06IGludHJvZHVjZSBwdXRfdXNlcl9wYWdl
KigpLCBwbGFjZWhvbGRlciB2ZXJzaW9ucyIpLgoKQ2hhbmdlcyBmcm9tIErDqXLDtG1lJ3Mgb3Jp
Z2luYWwgcGF0Y2g6CgoqIFVzZSB0aGUgZW5oYW5jZWQgcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9j
aygpLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+
ClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IGxp
bnV4LWZzZGV2ZWxAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1ibG9ja0B2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwpDYzogY2VwaC1kZXZlbEB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxp
YW1zQGludGVsLmNvbT4KQ2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51
az4KQ2M6IEpvaGFubmVzIFRodW1zaGlybiA8anRodW1zaGlybkBzdXNlLmRlPgpDYzogQ2hyaXN0
b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+
CkNjOiBNaW5nIExlaSA8bWluZy5sZWlAcmVkaGF0LmNvbT4KQ2M6IERhdmUgQ2hpbm5lciA8ZGF2
aWRAZnJvbW9yYml0LmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzog
TWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBCb2F6IEhhcnJvc2ggPGJv
YXpAcGxleGlzdG9yLmNvbT4KQ2M6ICJZYW4sIFpoZW5nIiA8enlhbkByZWRoYXQuY29tPgpDYzog
U2FnZSBXZWlsIDxzYWdlQHJlZGhhdC5jb20+CkNjOiBJbHlhIERyeW9tb3YgPGlkcnlvbW92QGdt
YWlsLmNvbT4KLS0tCiBmcy9jZXBoL2ZpbGUuYyB8IDYyICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9u
cygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvY2VwaC9maWxlLmMgYi9mcy9j
ZXBoL2ZpbGUuYwppbmRleCA2ODVhMDNjYzRiNzcuLmM2MjhhMWY5Njk3OCAxMDA2NDQKLS0tIGEv
ZnMvY2VwaC9maWxlLmMKKysrIGIvZnMvY2VwaC9maWxlLmMKQEAgLTE1OCwxOCArMTU4LDI2IEBA
IHN0YXRpYyBzc2l6ZV90IGl0ZXJfZ2V0X2J2ZWNzX2FsbG9jKHN0cnVjdCBpb3ZfaXRlciAqaXRl
ciwgc2l6ZV90IG1heHNpemUsCiAJcmV0dXJuIGJ5dGVzOwogfQogCi1zdGF0aWMgdm9pZCBwdXRf
YnZlY3Moc3RydWN0IGJpb192ZWMgKmJ2ZWNzLCBpbnQgbnVtX2J2ZWNzLCBib29sIHNob3VsZF9k
aXJ0eSkKK3N0YXRpYyB2b2lkIHB1dF9idmVjcyhzdHJ1Y3QgYmlvX3ZlYyAqYnYsIGludCBudW1f
YnZlY3MsIGJvb2wgc2hvdWxkX2RpcnR5LAorCQkgICAgICBib29sIGZyb21fZ3VwKQogewogCWlu
dCBpOwogCisKIAlmb3IgKGkgPSAwOyBpIDwgbnVtX2J2ZWNzOyBpKyspIHsKLQkJaWYgKGJ2ZWNz
W2ldLmJ2X3BhZ2UpIHsKKwkJaWYgKCFidltpXS5idl9wYWdlKQorCQkJY29udGludWU7CisKKwkJ
aWYgKGZyb21fZ3VwKSB7CisJCQlwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCZidltpXS5idl9w
YWdlLCAxLAorCQkJCQkJICBzaG91bGRfZGlydHkpOworCQl9IGVsc2UgewogCQkJaWYgKHNob3Vs
ZF9kaXJ0eSkKLQkJCQlzZXRfcGFnZV9kaXJ0eV9sb2NrKGJ2ZWNzW2ldLmJ2X3BhZ2UpOwotCQkJ
cHV0X3BhZ2UoYnZlY3NbaV0uYnZfcGFnZSk7CisJCQkJc2V0X3BhZ2VfZGlydHlfbG9jayhidltp
XS5idl9wYWdlKTsKKwkJCXB1dF9wYWdlKGJ2W2ldLmJ2X3BhZ2UpOwogCQl9CiAJfQotCWt2ZnJl
ZShidmVjcyk7CisJa3ZmcmVlKGJ2KTsKIH0KIAogLyoKQEAgLTczMCw2ICs3MzgsNyBAQCBzdHJ1
Y3QgY2VwaF9haW9fd29yayB7CiB9OwogCiBzdGF0aWMgdm9pZCBjZXBoX2Fpb19yZXRyeV93b3Jr
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yayk7CitzdGF0aWMgdm9pZCBjZXBoX2Fpb19mcm9tX2d1
cF9yZXRyeV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yayk7CiAKIHN0YXRpYyB2b2lkIGNl
cGhfYWlvX2NvbXBsZXRlKHN0cnVjdCBpbm9kZSAqaW5vZGUsCiAJCQkgICAgICBzdHJ1Y3QgY2Vw
aF9haW9fcmVxdWVzdCAqYWlvX3JlcSkKQEAgLTc3NCw3ICs3ODMsNyBAQCBzdGF0aWMgdm9pZCBj
ZXBoX2Fpb19jb21wbGV0ZShzdHJ1Y3QgaW5vZGUgKmlub2RlLAogCWtmcmVlKGFpb19yZXEpOwog
fQogCi1zdGF0aWMgdm9pZCBjZXBoX2Fpb19jb21wbGV0ZV9yZXEoc3RydWN0IGNlcGhfb3NkX3Jl
cXVlc3QgKnJlcSkKK3N0YXRpYyB2b2lkIF9jZXBoX2Fpb19jb21wbGV0ZV9yZXEoc3RydWN0IGNl
cGhfb3NkX3JlcXVlc3QgKnJlcSwgYm9vbCBmcm9tX2d1cCkKIHsKIAlpbnQgcmMgPSByZXEtPnJf
cmVzdWx0OwogCXN0cnVjdCBpbm9kZSAqaW5vZGUgPSByZXEtPnJfaW5vZGU7CkBAIC03OTMsNyAr
ODAyLDkgQEAgc3RhdGljIHZvaWQgY2VwaF9haW9fY29tcGxldGVfcmVxKHN0cnVjdCBjZXBoX29z
ZF9yZXF1ZXN0ICpyZXEpCiAKIAkJYWlvX3dvcmsgPSBrbWFsbG9jKHNpemVvZigqYWlvX3dvcmsp
LCBHRlBfTk9GUyk7CiAJCWlmIChhaW9fd29yaykgewotCQkJSU5JVF9XT1JLKCZhaW9fd29yay0+
d29yaywgY2VwaF9haW9fcmV0cnlfd29yayk7CisJCQlJTklUX1dPUksoJmFpb193b3JrLT53b3Jr
LCBmcm9tX2d1cCA/CisJCQkJICBjZXBoX2Fpb19mcm9tX2d1cF9yZXRyeV93b3JrIDoKKwkJCQkg
IGNlcGhfYWlvX3JldHJ5X3dvcmspOwogCQkJYWlvX3dvcmstPnJlcSA9IHJlcTsKIAkJCXF1ZXVl
X3dvcmsoY2VwaF9pbm9kZV90b19jbGllbnQoaW5vZGUpLT5pbm9kZV93cSwKIAkJCQkgICAmYWlv
X3dvcmstPndvcmspOwpAQCAtODMwLDcgKzg0MSw3IEBAIHN0YXRpYyB2b2lkIGNlcGhfYWlvX2Nv
bXBsZXRlX3JlcShzdHJ1Y3QgY2VwaF9vc2RfcmVxdWVzdCAqcmVxKQogCX0KIAogCXB1dF9idmVj
cyhvc2RfZGF0YS0+YnZlY19wb3MuYnZlY3MsIG9zZF9kYXRhLT5udW1fYnZlY3MsCi0JCSAgYWlv
X3JlcS0+c2hvdWxkX2RpcnR5KTsKKwkJICBhaW9fcmVxLT5zaG91bGRfZGlydHksIGZyb21fZ3Vw
KTsKIAljZXBoX29zZGNfcHV0X3JlcXVlc3QocmVxKTsKIAogCWlmIChyYyA8IDApCkBAIC04NDAs
NyArODUxLDE3IEBAIHN0YXRpYyB2b2lkIGNlcGhfYWlvX2NvbXBsZXRlX3JlcShzdHJ1Y3QgY2Vw
aF9vc2RfcmVxdWVzdCAqcmVxKQogCXJldHVybjsKIH0KIAotc3RhdGljIHZvaWQgY2VwaF9haW9f
cmV0cnlfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCitzdGF0aWMgdm9pZCBjZXBoX2Fp
b19jb21wbGV0ZV9yZXEoc3RydWN0IGNlcGhfb3NkX3JlcXVlc3QgKnJlcSkKK3sKKwlfY2VwaF9h
aW9fY29tcGxldGVfcmVxKHJlcSwgZmFsc2UpOworfQorCitzdGF0aWMgdm9pZCBjZXBoX2Fpb19m
cm9tX2d1cF9jb21wbGV0ZV9yZXEoc3RydWN0IGNlcGhfb3NkX3JlcXVlc3QgKnJlcSkKK3sKKwlf
Y2VwaF9haW9fY29tcGxldGVfcmVxKHJlcSwgdHJ1ZSk7Cit9CisKK3N0YXRpYyB2b2lkIF9jZXBo
X2Fpb19yZXRyeV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaywgYm9vbCBmcm9tX2d1cCkK
IHsKIAlzdHJ1Y3QgY2VwaF9haW9fd29yayAqYWlvX3dvcmsgPQogCQljb250YWluZXJfb2Yod29y
aywgc3RydWN0IGNlcGhfYWlvX3dvcmssIHdvcmspOwpAQCAtODkxLDcgKzkxMiw4IEBAIHN0YXRp
YyB2b2lkIGNlcGhfYWlvX3JldHJ5X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCiAJ
Y2VwaF9vc2RjX3B1dF9yZXF1ZXN0KG9yaWdfcmVxKTsKIAotCXJlcS0+cl9jYWxsYmFjayA9IGNl
cGhfYWlvX2NvbXBsZXRlX3JlcTsKKwlyZXEtPnJfY2FsbGJhY2sgPSBmcm9tX2d1cCA/IGNlcGhf
YWlvX2Zyb21fZ3VwX2NvbXBsZXRlX3JlcSA6CisJCQkgIGNlcGhfYWlvX2NvbXBsZXRlX3JlcTsK
IAlyZXEtPnJfaW5vZGUgPSBpbm9kZTsKIAlyZXEtPnJfcHJpdiA9IGFpb19yZXE7CiAKQEAgLTg5
OSwxMyArOTIxLDIzIEBAIHN0YXRpYyB2b2lkIGNlcGhfYWlvX3JldHJ5X3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQogb3V0OgogCWlmIChyZXQgPCAwKSB7CiAJCXJlcS0+cl9yZXN1bHQg
PSByZXQ7Ci0JCWNlcGhfYWlvX2NvbXBsZXRlX3JlcShyZXEpOworCQlfY2VwaF9haW9fY29tcGxl
dGVfcmVxKHJlcSwgZnJvbV9ndXApOwogCX0KIAogCWNlcGhfcHV0X3NuYXBfY29udGV4dChzbmFw
Yyk7CiAJa2ZyZWUoYWlvX3dvcmspOwogfQogCitzdGF0aWMgdm9pZCBjZXBoX2Fpb19yZXRyeV93
b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKK3sKKwlfY2VwaF9haW9fcmV0cnlfd29yayh3
b3JrLCBmYWxzZSk7Cit9CisKK3N0YXRpYyB2b2lkIGNlcGhfYWlvX2Zyb21fZ3VwX3JldHJ5X3dv
cmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQoreworCV9jZXBoX2Fpb19yZXRyeV93b3JrKHdv
cmssIHRydWUpOworfQorCiBzdGF0aWMgc3NpemVfdAogY2VwaF9kaXJlY3RfcmVhZF93cml0ZShz
dHJ1Y3Qga2lvY2IgKmlvY2IsIHN0cnVjdCBpb3ZfaXRlciAqaXRlciwKIAkJICAgICAgIHN0cnVj
dCBjZXBoX3NuYXBfY29udGV4dCAqc25hcGMsCkBAIC05MjcsNiArOTU5LDcgQEAgY2VwaF9kaXJl
Y3RfcmVhZF93cml0ZShzdHJ1Y3Qga2lvY2IgKmlvY2IsIHN0cnVjdCBpb3ZfaXRlciAqaXRlciwK
IAlsb2ZmX3QgcG9zID0gaW9jYi0+a2lfcG9zOwogCWJvb2wgd3JpdGUgPSBpb3ZfaXRlcl9ydyhp
dGVyKSA9PSBXUklURTsKIAlib29sIHNob3VsZF9kaXJ0eSA9ICF3cml0ZSAmJiBpdGVyX2lzX2lv
dmVjKGl0ZXIpOworCWJvb2wgZnJvbV9ndXAgPSBpb3ZfaXRlcl9nZXRfcGFnZXNfdXNlX2d1cChp
dGVyKTsKIAogCWlmICh3cml0ZSAmJiBjZXBoX3NuYXAoZmlsZV9pbm9kZShmaWxlKSkgIT0gQ0VQ
SF9OT1NOQVApCiAJCXJldHVybiAtRVJPRlM7CkBAIC0xMDIzLDcgKzEwNTYsOCBAQCBjZXBoX2Rp
cmVjdF9yZWFkX3dyaXRlKHN0cnVjdCBraW9jYiAqaW9jYiwgc3RydWN0IGlvdl9pdGVyICppdGVy
LAogCQkJYWlvX3JlcS0+bnVtX3JlcXMrKzsKIAkJCWF0b21pY19pbmMoJmFpb19yZXEtPnBlbmRp
bmdfcmVxcyk7CiAKLQkJCXJlcS0+cl9jYWxsYmFjayA9IGNlcGhfYWlvX2NvbXBsZXRlX3JlcTsK
KwkJCXJlcS0+cl9jYWxsYmFjayA9ICFmcm9tX2d1cCA/IGNlcGhfYWlvX2NvbXBsZXRlX3JlcSA6
CisJCQkJCSAgY2VwaF9haW9fZnJvbV9ndXBfY29tcGxldGVfcmVxOwogCQkJcmVxLT5yX2lub2Rl
ID0gaW5vZGU7CiAJCQlyZXEtPnJfcHJpdiA9IGFpb19yZXE7CiAJCQlsaXN0X2FkZF90YWlsKCZy
ZXEtPnJfcHJpdmF0ZV9pdGVtLCAmYWlvX3JlcS0+b3NkX3JlcXMpOwpAQCAtMTA1NCw3ICsxMDg4
LDcgQEAgY2VwaF9kaXJlY3RfcmVhZF93cml0ZShzdHJ1Y3Qga2lvY2IgKmlvY2IsIHN0cnVjdCBp
b3ZfaXRlciAqaXRlciwKIAkJCQlsZW4gPSByZXQ7CiAJCX0KIAotCQlwdXRfYnZlY3MoYnZlY3Ms
IG51bV9wYWdlcywgc2hvdWxkX2RpcnR5KTsKKwkJcHV0X2J2ZWNzKGJ2ZWNzLCBudW1fcGFnZXMs
IHNob3VsZF9kaXJ0eSwgZnJvbV9ndXApOwogCQljZXBoX29zZGNfcHV0X3JlcXVlc3QocmVxKTsK
IAkJaWYgKHJldCA8IDApCiAJCQlicmVhazsKQEAgLTEwOTMsNyArMTEyNyw3IEBAIGNlcGhfZGly
ZWN0X3JlYWRfd3JpdGUoc3RydWN0IGtpb2NiICppb2NiLCBzdHJ1Y3QgaW92X2l0ZXIgKml0ZXIs
CiAJCQkJCQkJICAgICAgcmVxLCBmYWxzZSk7CiAJCQlpZiAocmV0IDwgMCkgewogCQkJCXJlcS0+
cl9yZXN1bHQgPSByZXQ7Ci0JCQkJY2VwaF9haW9fY29tcGxldGVfcmVxKHJlcSk7CisJCQkJX2Nl
cGhfYWlvX2NvbXBsZXRlX3JlcShyZXEsIGZyb21fZ3VwKTsKIAkJCX0KIAkJfQogCQlyZXR1cm4g
LUVJT0NCUVVFVUVEOwotLSAKMi4yMi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
