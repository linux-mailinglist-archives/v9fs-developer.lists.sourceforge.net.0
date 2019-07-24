Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EF17261E
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qY-00023f-7U; Wed, 24 Jul 2019 04:25:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qW-00023Q-AB
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=02PLAmxEK74OFGQcxHpfkZPpYQRAkLSlGOrHVK7lAMw=; b=C6lViotUvQgKhVeBDYm3O2Z7jW
 73Nk+EcxEyfMmNHS3PJAjTnLVw0NMbF7yMVdiwDbo4yhzSUYyHKhludFu0V6IvGgPYyYbCA83wm/1
 XAy5i8B1YS1fg4woLU7M7kI6cQAorTbch+inyJdpPaqCcbDvwUKVpKVr1k3xZ886r6PE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=02PLAmxEK74OFGQcxHpfkZPpYQRAkLSlGOrHVK7lAMw=; b=bjxgoJ4hqTGxYj+MwrOKIEByb/
 n3IDJDA4SGT5WYszmqbW/G4syEIbHhfoAxuuAnztiz4jrm1WWPOhxKAHXnKbKC0XXFlnkBDvA6tz0
 0v7X3gs9inCFIChkICVrOGZyiPRxZYP8eOVWAQg38ZtmwoiDxNlPzXy+JCePMvGt3jkU=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qU-00FRUk-TP
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:44 +0000
Received: by mail-pg1-f196.google.com with SMTP id f5so11685268pgu.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=02PLAmxEK74OFGQcxHpfkZPpYQRAkLSlGOrHVK7lAMw=;
 b=ePnIO78ePHju7ebrVW+7E2J/vpPNCVR6NpW8CfFYZY8+SSmWHWKTO0NxnamQnOd1xO
 1OGkt7YIiEVXHuQP8H6qf68cFYAXKIBbDAmLkkhsEsKXGaZ+gv+hELN1BEUzOzwBMd5C
 7+HvBq9DyjWP27jxx3AYMLHiRTGVA6MLCEKX2iEJB87gzmXSiGwi7V4lsrRtpgVdiW2p
 S3MHstLpNUFBNRlULB+VzXVBuGOOpmhbNeL8feVmi88K1eJfS5jDJOTI4suhlSh6IsAx
 VQkyNWZZC80jbTtz6ZOUtfZ39jWAkyRwTKuVKYxnomrnDfjnpzs8p0BXzMO9GjL2eB9Q
 8kCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=02PLAmxEK74OFGQcxHpfkZPpYQRAkLSlGOrHVK7lAMw=;
 b=sWIR8Oz248FvIhkAXA97JuJE2Mw8ayN48GPpQFl2YsLlmyCi+aBxsRWYclYzQw2WUN
 q9lxebAqzzcTL0cTJpNKqZpnLUp/Tfn4EOE/lNV2eFBMQyTyVXsMrP7Y9SLcyH1vtfYR
 mTWbiv6WISyLut4iytsF7+NsSfQnjBnpZuPEWZ50Xx3VKSOtslde+h8RzxFu2g4GJDKQ
 BJ/gxr1/a39nGYXFwEXs5yL3yKJiZVrV4I5MU68vvD6TWXtfD7yM+5f4ygPELELCipS3
 478YFlhlMolvaEO0QHS5kMWEtJeyVFOOC2316xegNua5ji7Psk4imCHusAEJfDcLbK/n
 lc0g==
X-Gm-Message-State: APjAAAXL+eDKOrhBHXcvDDxbuW02CMvjQekW0LJPol2ndlYVWeV1PdHQ
 +J+QEpB0SQh5hL/SIWOjKYc=
X-Google-Smtp-Source: APXvYqzqsCqiqq73YLTFw/re4Wrx/oAutFm/LKqajLsW6nTmQ7iAK5rTUPq3/lEGra2dE5Y0hbuJJw==
X-Received: by 2002:a62:cdc3:: with SMTP id o186mr9322982pfg.168.1563942337240; 
 Tue, 23 Jul 2019 21:25:37 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:36 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:17 -0700
Message-Id: <20190724042518.14363-12-jhubbard@nvidia.com>
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
 for more information. [URIs: nvidia.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qU-00FRUk-TP
Subject: [V9fs-developer] [PATCH 11/12] 9p/net: convert put_page() to
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
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Johannes Thumshirn <jthumshirn@suse.de>, v9fs-developer@lists.sourceforge.net,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, Dan Williams <dan.j.williams@intel.com>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
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

RnJvbTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+CgpGb3IgcGFnZXMgdGhh
dCB3ZXJlIHJldGFpbmVkIHZpYSBnZXRfdXNlcl9wYWdlcyooKSwgcmVsZWFzZSB0aG9zZSBwYWdl
cwp2aWEgdGhlIG5ldyBwdXRfdXNlcl9wYWdlKigpIHJvdXRpbmVzLCBpbnN0ZWFkIG9mIHZpYSBw
dXRfcGFnZSgpLgoKVGhpcyBpcyBwYXJ0IGEgdHJlZS13aWRlIGNvbnZlcnNpb24sIGFzIGRlc2Ny
aWJlZCBpbiBjb21taXQgZmMxZDhlN2NjYTJkCigibW06IGludHJvZHVjZSBwdXRfdXNlcl9wYWdl
KigpLCBwbGFjZWhvbGRlciB2ZXJzaW9ucyIpLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgR2xp
c3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1
YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IGxpbnV4LWZzZGV2ZWxAdmdlci5rZXJuZWwub3JnCkNjOiBs
aW51eC1ibG9ja0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwpDYzogdjlm
cy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0CkNjOiBKYW4gS2FyYSA8amFja0BzdXNl
LmN6PgpDYzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+CkNjOiBBbGV4
YW5kZXIgVmlybyA8dmlyb0B6ZW5pdi5saW51eC5vcmcudWs+CkNjOiBKb2hhbm5lcyBUaHVtc2hp
cm4gPGp0aHVtc2hpcm5Ac3VzZS5kZT4KQ2M6IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRl
PgpDYzogSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPgpDYzogTWluZyBMZWkgPG1pbmcubGVp
QHJlZGhhdC5jb20+CkNjOiBEYXZlIENoaW5uZXIgPGRhdmlkQGZyb21vcmJpdC5jb20+CkNjOiBK
YXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4KQ2M6IE1hdHRoZXcgV2lsY294IDx3aWxseUBp
bmZyYWRlYWQub3JnPgpDYzogQm9heiBIYXJyb3NoIDxib2F6QHBsZXhpc3Rvci5jb20+CkNjOiBF
cmljIFZhbiBIZW5zYmVyZ2VuIDxlcmljdmhAZ21haWwuY29tPgpDYzogTGF0Y2hlc2FyIElvbmtv
diA8bHVjaG9AaW9ua292Lm5ldD4KQ2M6IERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29k
ZXdyZWNrLm9yZz4KLS0tCiBuZXQvOXAvdHJhbnNfY29tbW9uLmMgfCAxNCArKysrKysrKysrLS0t
LQogbmV0LzlwL3RyYW5zX2NvbW1vbi5oIHwgIDMgKystCiBuZXQvOXAvdHJhbnNfdmlydGlvLmMg
fCAxOCArKysrKysrKysrKysrLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0LzlwL3RyYW5zX2NvbW1vbi5jIGIv
bmV0LzlwL3RyYW5zX2NvbW1vbi5jCmluZGV4IDNkZmY2OGYwNWZiOS4uZTVjMzU5YzM2OWE2IDEw
MDY0NAotLS0gYS9uZXQvOXAvdHJhbnNfY29tbW9uLmMKKysrIGIvbmV0LzlwL3RyYW5zX2NvbW1v
bi5jCkBAIC0xOSwxMiArMTksMTggQEAKIC8qKgogICogIHA5X3JlbGVhc2VfcGFnZXMgLSBSZWxl
YXNlIHBhZ2VzIGFmdGVyIHRoZSB0cmFuc2FjdGlvbi4KICAqLwotdm9pZCBwOV9yZWxlYXNlX3Bh
Z2VzKHN0cnVjdCBwYWdlICoqcGFnZXMsIGludCBucl9wYWdlcykKK3ZvaWQgcDlfcmVsZWFzZV9w
YWdlcyhzdHJ1Y3QgcGFnZSAqKnBhZ2VzLCBpbnQgbnJfcGFnZXMsIGJvb2wgZnJvbV9ndXApCiB7
CiAJaW50IGk7CiAKLQlmb3IgKGkgPSAwOyBpIDwgbnJfcGFnZXM7IGkrKykKLQkJaWYgKHBhZ2Vz
W2ldKQotCQkJcHV0X3BhZ2UocGFnZXNbaV0pOworCWlmIChmcm9tX2d1cCkgeworCQlmb3IgKGkg
PSAwOyBpIDwgbnJfcGFnZXM7IGkrKykKKwkJCWlmIChwYWdlc1tpXSkKKwkJCQlwdXRfdXNlcl9w
YWdlKHBhZ2VzW2ldKTsKKwl9IGVsc2UgeworCQlmb3IgKGkgPSAwOyBpIDwgbnJfcGFnZXM7IGkr
KykKKwkJCWlmIChwYWdlc1tpXSkKKwkJCQlwdXRfcGFnZShwYWdlc1tpXSk7CisJfQogfQogRVhQ
T1JUX1NZTUJPTChwOV9yZWxlYXNlX3BhZ2VzKTsKZGlmZiAtLWdpdCBhL25ldC85cC90cmFuc19j
b21tb24uaCBiL25ldC85cC90cmFuc19jb21tb24uaAppbmRleCBjNDNiYWJiM2Y2MzUuLmRjZjAy
NTg2NzMxNCAxMDA2NDQKLS0tIGEvbmV0LzlwL3RyYW5zX2NvbW1vbi5oCisrKyBiL25ldC85cC90
cmFuc19jb21tb24uaApAQCAtMTIsNCArMTIsNSBAQAogICoKICAqLwogCi12b2lkIHA5X3JlbGVh
c2VfcGFnZXMoc3RydWN0IHBhZ2UgKiosIGludCk7Cit2b2lkIHA5X3JlbGVhc2VfcGFnZXMoc3Ry
dWN0IHBhZ2UgKipwYWdlcywgaW50IG5yX3BhZ2VzLCBib29sIGZyb21fZ3VwKTsKKwpkaWZmIC0t
Z2l0IGEvbmV0LzlwL3RyYW5zX3ZpcnRpby5jIGIvbmV0LzlwL3RyYW5zX3ZpcnRpby5jCmluZGV4
IGEzY2Q5MGE3NDAxMi4uMzcxNGNhNWVjZGMyIDEwMDY0NAotLS0gYS9uZXQvOXAvdHJhbnNfdmly
dGlvLmMKKysrIGIvbmV0LzlwL3RyYW5zX3ZpcnRpby5jCkBAIC0zMDYsMTEgKzMwNiwxNCBAQCBz
dGF0aWMgaW50IHA5X2dldF9tYXBwZWRfcGFnZXMoc3RydWN0IHZpcnRpb19jaGFuICpjaGFuLAog
CQkJICAgICAgIHN0cnVjdCBpb3ZfaXRlciAqZGF0YSwKIAkJCSAgICAgICBpbnQgY291bnQsCiAJ
CQkgICAgICAgc2l6ZV90ICpvZmZzLAotCQkJICAgICAgIGludCAqbmVlZF9kcm9wKQorCQkJICAg
ICAgIGludCAqbmVlZF9kcm9wLAorCQkJICAgICAgIGJvb2wgKmZyb21fZ3VwKQogewogCWludCBu
cl9wYWdlczsKIAlpbnQgZXJyOwogCisJKmZyb21fZ3VwID0gZmFsc2U7CisKIAlpZiAoIWlvdl9p
dGVyX2NvdW50KGRhdGEpKQogCQlyZXR1cm4gMDsKIApAQCAtMzMyLDYgKzMzNSw3IEBAIHN0YXRp
YyBpbnQgcDlfZ2V0X21hcHBlZF9wYWdlcyhzdHJ1Y3QgdmlydGlvX2NoYW4gKmNoYW4sCiAJCSpu
ZWVkX2Ryb3AgPSAxOwogCQlucl9wYWdlcyA9IERJVl9ST1VORF9VUChuICsgKm9mZnMsIFBBR0Vf
U0laRSk7CiAJCWF0b21pY19hZGQobnJfcGFnZXMsICZ2cF9waW5uZWQpOworCQkqZnJvbV9ndXAg
PSBpb3ZfaXRlcl9nZXRfcGFnZXNfdXNlX2d1cChkYXRhKTsKIAkJcmV0dXJuIG47CiAJfSBlbHNl
IHsKIAkJLyoga2VybmVsIGJ1ZmZlciwgbm8gbmVlZCB0byBwaW4gcGFnZXMgKi8KQEAgLTM5Nywx
MyArNDAxLDE1IEBAIHA5X3ZpcnRpb196Y19yZXF1ZXN0KHN0cnVjdCBwOV9jbGllbnQgKmNsaWVu
dCwgc3RydWN0IHA5X3JlcV90ICpyZXEsCiAJc2l6ZV90IG9mZnM7CiAJaW50IG5lZWRfZHJvcCA9
IDA7CiAJaW50IGtpY2tlZCA9IDA7CisJYm9vbCBpbl9mcm9tX2d1cCwgb3V0X2Zyb21fZ3VwOwog
CiAJcDlfZGVidWcoUDlfREVCVUdfVFJBTlMsICJ2aXJ0aW8gcmVxdWVzdFxuIik7CiAKIAlpZiAo
dW9kYXRhKSB7CiAJCV9fbGUzMiBzejsKIAkJaW50IG4gPSBwOV9nZXRfbWFwcGVkX3BhZ2VzKGNo
YW4sICZvdXRfcGFnZXMsIHVvZGF0YSwKLQkJCQkJICAgIG91dGxlbiwgJm9mZnMsICZuZWVkX2Ry
b3ApOworCQkJCQkgICAgb3V0bGVuLCAmb2ZmcywgJm5lZWRfZHJvcCwKKwkJCQkJICAgICZvdXRf
ZnJvbV9ndXApOwogCQlpZiAobiA8IDApIHsKIAkJCWVyciA9IG47CiAJCQlnb3RvIGVycl9vdXQ7
CkBAIC00MjIsNyArNDI4LDggQEAgcDlfdmlydGlvX3pjX3JlcXVlc3Qoc3RydWN0IHA5X2NsaWVu
dCAqY2xpZW50LCBzdHJ1Y3QgcDlfcmVxX3QgKnJlcSwKIAkJbWVtY3B5KCZyZXEtPnRjLnNkYXRh
WzBdLCAmc3osIHNpemVvZihzeikpOwogCX0gZWxzZSBpZiAodWlkYXRhKSB7CiAJCWludCBuID0g
cDlfZ2V0X21hcHBlZF9wYWdlcyhjaGFuLCAmaW5fcGFnZXMsIHVpZGF0YSwKLQkJCQkJICAgIGlu
bGVuLCAmb2ZmcywgJm5lZWRfZHJvcCk7CisJCQkJCSAgICBpbmxlbiwgJm9mZnMsICZuZWVkX2Ry
b3AsCisJCQkJCSAgICAmaW5fZnJvbV9ndXApOwogCQlpZiAobiA8IDApIHsKIAkJCWVyciA9IG47
CiAJCQlnb3RvIGVycl9vdXQ7CkBAIC01MDQsMTEgKzUxMSwxMiBAQCBwOV92aXJ0aW9femNfcmVx
dWVzdChzdHJ1Y3QgcDlfY2xpZW50ICpjbGllbnQsIHN0cnVjdCBwOV9yZXFfdCAqcmVxLAogZXJy
X291dDoKIAlpZiAobmVlZF9kcm9wKSB7CiAJCWlmIChpbl9wYWdlcykgewotCQkJcDlfcmVsZWFz
ZV9wYWdlcyhpbl9wYWdlcywgaW5fbnJfcGFnZXMpOworCQkJcDlfcmVsZWFzZV9wYWdlcyhpbl9w
YWdlcywgaW5fbnJfcGFnZXMsIGluX2Zyb21fZ3VwKTsKIAkJCWF0b21pY19zdWIoaW5fbnJfcGFn
ZXMsICZ2cF9waW5uZWQpOwogCQl9CiAJCWlmIChvdXRfcGFnZXMpIHsKLQkJCXA5X3JlbGVhc2Vf
cGFnZXMob3V0X3BhZ2VzLCBvdXRfbnJfcGFnZXMpOworCQkJcDlfcmVsZWFzZV9wYWdlcyhvdXRf
cGFnZXMsIG91dF9ucl9wYWdlcywKKwkJCQkJIG91dF9mcm9tX2d1cCk7CiAJCQlhdG9taWNfc3Vi
KG91dF9ucl9wYWdlcywgJnZwX3Bpbm5lZCk7CiAJCX0KIAkJLyogd2FrZXVwIGFueWJvZHkgd2Fp
dGluZyBmb3Igc2xvdHMgdG8gcGluIHBhZ2VzICovCi0tIAoyLjIyLjAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
