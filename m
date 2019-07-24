Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D993A7260E
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qL-0000KN-4Y; Wed, 24 Jul 2019 04:25:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qJ-0000Jy-KE
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qETbyvDGXmWMmkqN4sOdgKXeFkWOntX3r/NRFgCZoWE=; b=iPlbWP/VW7uNCAZf1zaFxDmUoN
 tEpiNfMDUTfdSpsriUnDjz09Vzdv0Xr4yShiqAu1lOj0IU03E+crAl3GckBtW3UV9L21F3J3fH3wh
 5QSWpQNgL+2mHIXIkUZvqt2bdq8i8qBSePoErCUXm+6NGK6G3MiVZcGKKUasJ7BD5e9A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qETbyvDGXmWMmkqN4sOdgKXeFkWOntX3r/NRFgCZoWE=; b=aiDgh7/SFvLQr3X1VOzY5DnZKu
 HdOEVjhe85yFwgRlLKY1uQfbv0nHtROgtQfx62M+EMjN5M5uLVLx5Yd1TMsI48AOC1Qfzq0BiH1SO
 r0JcKATO2byCAvRI5C+eCZvoVyHeTVomiyMYun7m9J4sTo9jVWsD55oEujOx0Lj5Fcc4=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qI-00DCok-3C
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:31 +0000
Received: by mail-pf1-f193.google.com with SMTP id q10so20222605pff.9
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qETbyvDGXmWMmkqN4sOdgKXeFkWOntX3r/NRFgCZoWE=;
 b=KG/F7Sd5J79dEipElYhdvyhMIk0TxQlRtZu9bi85rUwY/TE5KUGgUZYMnF+3jcDsXr
 jk+YAZfWVg6gnp2IiqLCse5lUUZrgh27wRKMfQRWXUdRnaO5ZlXDztHkfwCA1gRbK+Qa
 Vdl/mcDwYDvc/aIthkQn3dHIfadxoz9OGVoTMkITstrb8gRinr4GRivAlsVYAzJkRXx3
 qijzZ8AyOYgc5Vk4JND+9sG/qLIVyx5s39WeHO+RM9Ey6ODD5O8kuqfL85vwwK9Febym
 eFolpJZ4Wkv3lsIz5mVKSWu4wewrN05ykT4POz6d2Mi/mkYtEQg5LGvW/0qsyHcM4WB5
 F1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qETbyvDGXmWMmkqN4sOdgKXeFkWOntX3r/NRFgCZoWE=;
 b=N4AhI8BOYr15fHYoyTWwW9qkLT04wGXIwm28qX1at+RFJ7dTX/XYu0JH4e+sWFpIwl
 XuMOofiALy+9OoOgKXdQ7KT+CxQoJi0WUUEF8JVaOH32wogsgb+EKxyXuu60lb2r3pi6
 5ABd2gGunOVxSmGo+GwtEmbOxRcTZTPikXzKDPgF46imV0tqXbvOGgFj0NOHZKS7QXfX
 bULg0Tf2ZHuEc+DC6MLD+VjCzT4cEP/8P0akCgiACNpVVki2wcC3agwUFLhYeGRVlLYu
 MzfOFSH/BeFdkHPCZ0i44pnq6eNe/pQfWzsaqFqf6pxoJnYomwulJXB9BJ2YkZtmvR9e
 IMtg==
X-Gm-Message-State: APjAAAXciBn43zBqNkjmMj7kz4OtYrLD35R23A45WWIGzgfvnQvgQMO2
 3nJXCDFHpH30wVW68Rii05U=
X-Google-Smtp-Source: APXvYqxkwpMUKWSZK/4NQcFDw+bDP7yRS/NluRzHQboqTdh3aehK42NKuj/IACv1wat7jP2wWUy+ng==
X-Received: by 2002:a65:4489:: with SMTP id l9mr81979980pgq.207.1563942324157; 
 Tue, 23 Jul 2019 21:25:24 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:23 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:08 -0700
Message-Id: <20190724042518.14363-3-jhubbard@nvidia.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qI-00DCok-3C
Subject: [V9fs-developer] [PATCH 02/12] iov_iter: add helper to test if an
 iter would use GUP v2
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jan Kara <jack@suse.cz>,
 kvm@vger.kernel.org, "Michael S . Tsirkin" <mst@redhat.com>,
 Dave Chinner <david@fromorbit.com>, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
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

RnJvbTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+CgpBZGQgYSBoZWxwZXIg
dG8gdGVzdCBpZiBjYWxsIHRvIGlvdl9pdGVyX2dldF9wYWdlcyooKSB3aXRoIGEgZ2l2ZW4KaXRl
ciB3b3VsZCByZXN1bHQgaW4gY2FsbHMgdG8gR1VQIChnZXRfdXNlcl9wYWdlcyooKSkuIFdlIHdh
bnQgdG8KdXNlIGRpZmZlcmVudCB0cmFja2luZyBvZiBwYWdlIHJlZmVyZW5jZXMgaWYgdGhleSBh
cmUgY29taW5nIGZyb20KR1VQIChnZXRfdXNlcl9wYWdlcyooKSkgYW5kIHRodXMgIHdlIG5lZWQg
dG8ga25vdyB3aGVuIEdVUCBpcyB1c2VkCmZvciBhIGdpdmVuIGl0ZXIuCgpDaGFuZ2VzIHNpbmNl
IErDqXLDtG1lJ3Mgb3JpZ2luYWwgcGF0Y2g6CgoqIGlvdl9pdGVyX2dldF9wYWdlc191c2VfZ3Vw
KCk6IGRvIG5vdCByZXR1cm4gdHJ1ZSBmb3IgdGhlIElURVJfUElQRQpjYXNlLCBiZWNhdXNlIGlv
dl9pdGVyX2dldF9wYWdlcygpIGNhbGxzIHBpcGVfZ2V0X3BhZ2VzKCksIHdoaWNoIGluCnR1cm4g
dXNlcyBnZXRfcGFnZSgpLCBub3QgZ2V0X3VzZXJfcGFnZXMoKS4KCiogUmVtb3ZlIHNvbWUgb2Jz
b2xldGUgY29kZSwgYXMgcGFydCBvZiByZWJhc2luZyBvbnRvIExpbnV4IDUuMy4KCiogRml4IHVw
IHRoZSBrZXJuZWxkb2MgY29tbWVudCB0byAiUmV0dXJuOiIgcmF0aGVyIHRoYW4gIlJldHVybnM6
IiwKYW5kIGEgZmV3IG90aGVyIGdyYW1tYXRpY2FsIHR3ZWFrcy4KClNpZ25lZC1vZmYtYnk6IErD
qXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1
YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+CkNjOiBsaW51eC1mc2RldmVsQHZnZXIua2VybmVs
Lm9yZwpDYzogbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tbUBrdmFjay5v
cmcKQ2M6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IEphbiBLYXJhIDxq
YWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4K
Q2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51az4KQ2M6IEpvaGFubmVz
IFRodW1zaGlybiA8anRodW1zaGlybkBzdXNlLmRlPgpDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+CkNjOiBNaW5nIExlaSA8
bWluZy5sZWlAcmVkaGF0LmNvbT4KQ2M6IERhdmUgQ2hpbm5lciA8ZGF2aWRAZnJvbW9yYml0LmNv
bT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogTWF0dGhldyBXaWxjb3gg
PHdpbGx5QGluZnJhZGVhZC5vcmc+Ci0tLQogaW5jbHVkZS9saW51eC91aW8uaCB8IDExICsrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvdWlvLmggYi9pbmNsdWRlL2xpbnV4L3Vpby5oCmluZGV4IGFiNWY1MjNiYzBk
Zi4uMmExNzlhZjhlNWE3IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3Vpby5oCisrKyBiL2lu
Y2x1ZGUvbGludXgvdWlvLmgKQEAgLTg2LDYgKzg2LDE3IEBAIHN0YXRpYyBpbmxpbmUgdW5zaWdu
ZWQgY2hhciBpb3ZfaXRlcl9ydyhjb25zdCBzdHJ1Y3QgaW92X2l0ZXIgKmkpCiAJcmV0dXJuIGkt
PnR5cGUgJiAoUkVBRCB8IFdSSVRFKTsKIH0KIAorLyoqCisgKiBpb3ZfaXRlcl9nZXRfcGFnZXNf
dXNlX2d1cCAtIHJlcG9ydCBpZiBpb3ZfaXRlcl9nZXRfcGFnZXMoaSkgdXNlcyBHVVAKKyAqIEBp
OiBpdGVyYXRvcgorICogUmV0dXJuOiB0cnVlIGlmIGEgY2FsbCB0byBpb3ZfaXRlcl9nZXRfcGFn
ZXMqKCkgd2l0aCB0aGUgaXRlciBwcm92aWRlZCBpbgorICogICAgICAgICAgdGhlIGFyZ3VtZW50
IHdvdWxkIHJlc3VsdCBpbiB0aGUgdXNlIG9mIGdldF91c2VyX3BhZ2VzKigpCisgKi8KK3N0YXRp
YyBpbmxpbmUgYm9vbCBpb3ZfaXRlcl9nZXRfcGFnZXNfdXNlX2d1cChjb25zdCBzdHJ1Y3QgaW92
X2l0ZXIgKmkpCit7CisJcmV0dXJuIGlvdl9pdGVyX3R5cGUoaSkgPT0gSVRFUl9JT1ZFQzsKK30K
KwogLyoKICAqIFRvdGFsIG51bWJlciBvZiBieXRlcyBjb3ZlcmVkIGJ5IGFuIGlvdmVjLgogICoK
LS0gCjIuMjIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
