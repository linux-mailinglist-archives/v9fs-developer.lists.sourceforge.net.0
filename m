Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 666AD7260C
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qH-0000Jf-VU; Wed, 24 Jul 2019 04:25:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qG-0000JX-M2
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=czbKIXOb/Go0XhMRs2MEN6VnTG6u3MuZundQHh6fuSE=; b=SOIdI52GegP8hqDqRkILCBdUNS
 hMXiltqUpVA1S4M2opOa1yKpRDKHMq6b02twrkLB2hoFFoj0L3M1za1t8dvrxRZuSuG2Qu4PzUXk6
 qC9AXTLsqSrxN8ai7Bl6IKOLvu4I3oXkGFD2u161v1FpoEwZ8zDndpZlos2kEUNBsioA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=czbKIXOb/Go0XhMRs2MEN6VnTG6u3MuZundQHh6fuSE=; b=L
 7FTlyV7p551d8s4w8chG1+ZIfFf4xsg4RzbQv0IhzunO8htiGuGdjcl8xhNq4K2dzw+eje4GJVqa9
 xv9TzYgcuRNQWJjKclQVvOB/0WYCGZczjUDXgrfGCxEcIFU033Fhi4wV3Wc3UE5dxI/loPd0hlzt3
 E1+HSrbp8BI0yMFU=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qF-00DCob-3k
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:28 +0000
Received: by mail-pf1-f195.google.com with SMTP id b13so20236537pfo.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=czbKIXOb/Go0XhMRs2MEN6VnTG6u3MuZundQHh6fuSE=;
 b=drt6EjFdosCAcMEHtdm6+Wwi0M6mSxOzFkxqawZr6IPXLSVzqb/W29XJdPWwpIC0hK
 6O36OujVLFyXEay6jApmdcKGKaFf8ZHrynwkSnL37TGZQHVi5dSIejM/BVPUxQ7VV65S
 fWBfNJcl5fT06CyStqADu0QhfKQgev+DV1jB/43XtDAQrRVBT4D8hAHyS32+/jE194Ee
 9IJK8BdynnPV24hoHobSOouQX3yA4+C8Ogba9Jjmu1EUBDg3exofJAkPMZ4BVkwyR1FN
 DpKTuGd8V6acalOBWqjEaikoQcAKX4Ix3w6DkaRL7W59P9w2XZ6f+kz4iv47D5f4dYHi
 ARbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=czbKIXOb/Go0XhMRs2MEN6VnTG6u3MuZundQHh6fuSE=;
 b=KyAxmfLLFPaXnzUAGy0haA6ny9Rha0ciB3tr2rwUOpVJYVgXntgbHyZppAnK66mo38
 AFGvQ3KzGTO3/Q5nN7MzThYYL9ak/vVBK4ov24kapdHv4NNxxSdo/Kdd8uQ/5FGmx/t3
 VJLyoVSbWvPuAYSjtAeIDjMXOdBQbYcmaXkT8RntHLkn3WPh2Jk1kVKHLboqXs7TwEJg
 xUHYaP4nOjpLUr2m09sYZYhmcBJzXZe3fMkznCgGhwwjB88wvMJdAyxHNeUBuYlCRSEY
 3Ci1oj+sENBAC9VwTK8XHAo4nwm/+bLEEXXNhiYVqiP2gp9Y716uioczITWI4qmNZyeE
 ty8g==
X-Gm-Message-State: APjAAAU/DOF1qXTmJH9mi8Js9iRa6wAE2/ug3Df+HJYkTBWU32hJL2ku
 1qqauUGcyZ13ocO1X2pV+KU=
X-Google-Smtp-Source: APXvYqwbbPiJvrG7YMdt1a1WYUqGY2Z5kAsIWFPe6nz2zmmLERZ6mi3tyMsrNzYm3HTPDg7yUokVfw==
X-Received: by 2002:a65:6288:: with SMTP id f8mr74189986pgv.292.1563942321242; 
 Tue, 23 Jul 2019 21:25:21 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:20 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:06 -0700
Message-Id: <20190724042518.14363-1-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-NVConfidentiality: public
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qF-00DCob-3k
Subject: [V9fs-developer] [PATCH 00/12] block/bio,
 fs: convert put_page() to put_user_page*()
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
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, John Hubbard <jhubbard@nvidia.com>,
 linux-block@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKSGksCgpUaGlzIGlzIG1v
c3RseSBKZXJvbWUncyB3b3JrLCBjb252ZXJ0aW5nIHRoZSBibG9jay9iaW8gYW5kIHJlbGF0ZWQg
YXJlYXMKdG8gY2FsbCBwdXRfdXNlcl9wYWdlKigpIGluc3RlYWQgb2YgcHV0X3BhZ2UoKS4gQmVj
YXVzZSBJJ3ZlIGNoYW5nZWQKSmVyb21lJ3MgcGF0Y2hlcywgaW4gc29tZSBjYXNlcyBzaWduaWZp
Y2FudGx5LCBJJ2QgbGlrZSB0byBnZXQgaGlzCmZlZWRiYWNrIGJlZm9yZSB3ZSBhY3R1YWxseSBs
ZWF2ZSBoaW0gbGlzdGVkIGFzIHRoZSBhdXRob3IgKGhlIG1pZ2h0CndhbnQgdG8gZGlzb3duIHNv
bWUgb3IgYWxsIG9mIHRoZXNlKS4KCkkgYWRkZWQgYSBuZXcgcGF0Y2gsIGluIG9yZGVyIHRvIG1h
a2UgdGhpcyB3b3JrIHdpdGggQ2hyaXN0b3BoIEhlbGx3aWcncwpyZWNlbnQgb3ZlcmhhdWwgdG8g
YmlvX3JlbGVhc2VfcGFnZXMoKTogImJsb2NrOiBiaW9fcmVsZWFzZV9wYWdlczogdXNlCmZsYWdz
IGFyZyBpbnN0ZWFkIG9mIGJvb2wiLgoKSSd2ZSBzdGFydGVkIHRoZSBzZXJpZXMgd2l0aCBhIHBh
dGNoIHRoYXQgSSd2ZSBwb3N0ZWQgaW4gYW5vdGhlcgpzZXJpZXMgKCJtbS9ndXA6IGFkZCBtYWtl
X2RpcnR5IGFyZyB0byBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkiWzFdKSwKYmVjYXVzZSBJ
J20gbm90IHN1cmUgd2hpY2ggb2YgdGhlc2Ugd2lsbCBnbyBpbiBmaXJzdCwgYW5kIHRoaXMgYWxs
b3dzIGVhY2gKdG8gc3RhbmQgYWxvbmUuCgpUZXN0aW5nOiBub3QgbXVjaCBiZXlvbmQgYnVpbGQg
YW5kIGJvb3QgdGVzdGluZyBoYXMgYmVlbiBkb25lIHlldC4gQW5kCkknbSBub3Qgc2V0IHVwIHRv
IGV2ZW4gZXhlcmNpc2UgYWxsIG9mIGl0IChlc3BlY2lhbGx5IHRoZSBJQiBwYXJ0cykgYXQKcnVu
IHRpbWUuCgpBbnl3YXksIGNoYW5nZXMgaGVyZSBhcmU6CgoqIFN0b3JlLCBpbiB0aGUgaW92X2l0
ZXIsIGEgImNhbWUgZnJvbSBndXAgKGdldF91c2VyX3BhZ2VzKSIgcGFyYW1ldGVyLgogIFRoZW4s
IHVzZSB0aGUgbmV3IGlvdl9pdGVyX2dldF9wYWdlc191c2VfZ3VwKCkgdG8gcmV0cmlldmUgaXQg
d2hlbgogIGl0IGlzIHRpbWUgdG8gcmVsZWFzZSB0aGUgcGFnZXMuIFRoYXQgYWxsb3dzIGNob29z
aW5nIGJldHdlZW4gcHV0X3BhZ2UoKQogIGFuZCBwdXRfdXNlcl9wYWdlKigpLgoKKiBQYXNzIGlu
IG9uZSBtb3JlIHBpZWNlIG9mIGluZm9ybWF0aW9uIHRvIGJpb19yZWxlYXNlX3BhZ2VzOiBhICJm
cm9tX2d1cCIKICBwYXJhbWV0ZXIuIFNpbWlsYXIgdXNlIGFzIGFib3ZlLgoKKiBDaGFuZ2UgdGhl
IGJsb2NrIGxheWVyLCBhbmQgc2V2ZXJhbCBmaWxlIHN5c3RlbXMsIHRvIHVzZQogIHB1dF91c2Vy
X3BhZ2UqKCkuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDE5MDcyNDAxMjYwNi4y
NTg0NC0yLWpodWJiYXJkQG52aWRpYS5jb20KICAgIEFuZCBwbGVhc2Ugbm90ZSB0aGUgY29ycmVj
dGlvbiBlbWFpbCB0aGF0IEkgcG9zdGVkIGFzIGEgZm9sbG93LXVwLAogICAgaWYgeW91J3JlIGxv
b2tpbmcgY2xvc2VseSBhdCB0aGF0IHBhdGNoLiA6KSBUaGUgZml4ZWQgdmVyc2lvbiBpcwogICAg
aW5jbHVkZWQgaGVyZS4KCkpvaG4gSHViYmFyZCAoMyk6CiAgbW0vZ3VwOiBhZGQgbWFrZV9kaXJ0
eSBhcmcgdG8gcHV0X3VzZXJfcGFnZXNfZGlydHlfbG9jaygpCiAgYmxvY2s6IGJpb19yZWxlYXNl
X3BhZ2VzOiB1c2UgZmxhZ3MgYXJnIGluc3RlYWQgb2YgYm9vbAogIGZzL2NlcGg6IGZpeCBhIGJ1
aWxkIHdhcm5pbmc6IHJldHVybmluZyBhIHZhbHVlIGZyb20gdm9pZCBmdW5jdGlvbgoKSsOpcsO0
bWUgR2xpc3NlICg5KToKICBpb3ZfaXRlcjogYWRkIGhlbHBlciB0byB0ZXN0IGlmIGFuIGl0ZXIg
d291bGQgdXNlIEdVUCB2MgogIGJsb2NrOiBiaW9fcmVsZWFzZV9wYWdlczogY29udmVydCBwdXRf
cGFnZSgpIHRvIHB1dF91c2VyX3BhZ2UqKCkKICBibG9ja19kZXY6IGNvbnZlcnQgcHV0X3BhZ2Uo
KSB0byBwdXRfdXNlcl9wYWdlKigpCiAgZnMvbmZzOiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0
X3VzZXJfcGFnZSooKQogIHZob3N0LXNjc2k6IGNvbnZlcnQgcHV0X3BhZ2UoKSB0byBwdXRfdXNl
cl9wYWdlKigpCiAgZnMvY2lmczogY29udmVydCBwdXRfcGFnZSgpIHRvIHB1dF91c2VyX3BhZ2Uq
KCkKICBmcy9mdXNlOiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFnZSooKQogIGZz
L2NlcGg6IGNvbnZlcnQgcHV0X3BhZ2UoKSB0byBwdXRfdXNlcl9wYWdlKigpCiAgOXAvbmV0OiBj
b252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFnZSooKQoKIGJsb2NrL2Jpby5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysrKysrKysrKystLS0KIGRyaXZlcnMv
aW5maW5pYmFuZC9jb3JlL3VtZW0uYyAgICAgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9pbmZp
bmliYW5kL2h3L2hmaTEvdXNlcl9wYWdlcy5jICAgIHwgICA1ICstCiBkcml2ZXJzL2luZmluaWJh
bmQvaHcvcWliL3FpYl91c2VyX3BhZ2VzLmMgfCAgIDUgKy0KIGRyaXZlcnMvaW5maW5pYmFuZC9o
dy91c25pYy91c25pY191aW9tLmMgICB8ICAgNSArLQogZHJpdmVycy9pbmZpbmliYW5kL3N3L3Np
dy9zaXdfbWVtLmMgICAgICAgIHwgICA4ICstCiBkcml2ZXJzL3Zob3N0L3Njc2kuYyAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMTMgKystCiBmcy9ibG9ja19kZXYuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMjIgKysrLQogZnMvY2VwaC9kZWJ1Z2ZzLmMgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAyICstCiBmcy9jZXBoL2ZpbGUuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgNjIgKysrKysrKystLS0KIGZzL2NpZnMvY2lmc2dsb2IuaCAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgMyArCiBmcy9jaWZzL2ZpbGUuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMjIgKysrLQogZnMvY2lmcy9taXNjLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDE5ICsrKy0KIGZzL2RpcmVjdC1pby5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMiArLQogZnMvZnVzZS9kZXYuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
IDIyICsrKy0KIGZzL2Z1c2UvZmlsZS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA1
MyArKysrKysrLS0tCiBmcy9uZnMvZGlyZWN0LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAgMTAgKy0KIGluY2x1ZGUvbGludXgvYmlvLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAy
MiArKystCiBpbmNsdWRlL2xpbnV4L21tLmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDUg
Ky0KIGluY2x1ZGUvbGludXgvdWlvLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAxMSArKwog
bW0vZ3VwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTE1ICsrKysrKysr
Ky0tLS0tLS0tLS0tLQogbmV0LzlwL3RyYW5zX2NvbW1vbi5jICAgICAgICAgICAgICAgICAgICAg
IHwgIDE0ICsrLQogbmV0LzlwL3RyYW5zX2NvbW1vbi5oICAgICAgICAgICAgICAgICAgICAgIHwg
ICAzICstCiBuZXQvOXAvdHJhbnNfdmlydGlvLmMgICAgICAgICAgICAgICAgICAgICAgfCAgMTgg
KysrLQogMjQgZmlsZXMgY2hhbmdlZCwgMzU3IGluc2VydGlvbnMoKyksIDE3MCBkZWxldGlvbnMo
LSkKCi0tIAoyLjIyLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby92OWZzLWRldmVsb3Blcgo=
