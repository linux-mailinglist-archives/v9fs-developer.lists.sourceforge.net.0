Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5E972614
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qN-00022K-3h; Wed, 24 Jul 2019 04:25:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qL-00022C-Tk
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VoKYI+UUiS6YcrnvVkznU7iujzeTV7cPJsbn4q5uYok=; b=VjShUJkbcAHk7xns2ykqR2t/nB
 yKGzoc0gK/m0XnR4RIzjLvrHF5B10eqcszxnejCwwyujN3H7BQfhpw4hESehTZq8iufGHUu8xgQAM
 rljIDuY72NFVZuii/RQDNwCIEeYlK/AyxX8yQRZxmFsDgg405nRTsEi6KQ/ZRaUrBl6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VoKYI+UUiS6YcrnvVkznU7iujzeTV7cPJsbn4q5uYok=; b=LWY6qOQ7Rfk9AKx3FbDoXlGFEO
 QPepM4l5C9Iv8CKbWPd46estKAeGT4iGp+Z5k4IKj7tCV+p+Cm30AhehC9jjQfw+Xd5Eiehrv4Lpw
 tv9XPoThu5Dcduwg+K9jqskqa7EB6y0rcAevqSN9T4e6duhlTfJ7D3WkAwoj0vVwv3P0=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qK-00Datp-MJ
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:33 +0000
Received: by mail-pf1-f195.google.com with SMTP id y15so20235567pfn.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VoKYI+UUiS6YcrnvVkznU7iujzeTV7cPJsbn4q5uYok=;
 b=srCEjuKdmgTtGGJA378IGBXmCqyTbsbIjMqfoeenayBrGBy5vehEwtDrFvuijZFoTd
 rScSFUBXDFgZSITel7jOkrOPuVU8F5rry3vtfpMM2D7CeG0RrJuH7hgFj+PRndl7N1gW
 deZirUtKYKLuIRRXAf1U+l262rmyF1+wQhnXfVmQ91LL1+9RzmuQ9g6DIyRbodwSmwkf
 luAgCx4Jh2U/kIoDrgk0a2bpkEIwsDMjxtnPpArcF/E8dH/PwetBRncfIHEHnvxafXic
 wOzPw8hX8ys1ZDuhUpTDpwmfZFOimd4ZZ9s54WJn7/lu6Or6c+DjhaXkLZqlThRstapF
 vwMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VoKYI+UUiS6YcrnvVkznU7iujzeTV7cPJsbn4q5uYok=;
 b=RG9FZli4mytX3ZXeJPIZ2mWjxzPyXy99AmjbngN/pkfseYznZjWFKpIfQMpxCdTJ/I
 vJisjGHP87jplGFgSNtgk57nAGm9amJ+/Yg7hb4KGxmyDnZ40XuVBkGXlOEcrU7sYAtC
 aPuNoslzB8I+4UKEhxyBka+/AdKHylELyEk3N/Hw4ZEM0aVdVdJ/X3K2i+/8luitN2rq
 5LWGVSgufNDSmKMyUfadPvpLD6H2g6HWv9DYTDiOdvq2WFTwCu18JQmoIZ703CNo25IH
 MMzuurHx7NcBZdfwqoVGY0dOcObEVbTGAuTBCRtwExql4A+RLlvQY4V754Y43uWu801E
 lZZA==
X-Gm-Message-State: APjAAAWYb7RlXTDVYfvjnyFYF15Dv32b2VWdsOGn55ahR468JyX+xmPB
 EfZeAkmP10tCYzEY6qozq9s=
X-Google-Smtp-Source: APXvYqyK6xSNDGD+vqS3B3uhhp2vi85DZLeiUnQNXlrooXu4OGV2TbsZCsKTXuxuk/1vZZ0xEw9zNg==
X-Received: by 2002:aa7:9834:: with SMTP id q20mr9351362pfl.196.1563942326983; 
 Tue, 23 Jul 2019 21:25:26 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:26 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:10 -0700
Message-Id: <20190724042518.14363-5-jhubbard@nvidia.com>
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
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qK-00Datp-MJ
Subject: [V9fs-developer] [PATCH 04/12] block: bio_release_pages: convert
 put_page() to put_user_page*()
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

RnJvbTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+CgpGb3IgcGFnZXMgdGhh
dCB3ZXJlIHJldGFpbmVkIHZpYSBnZXRfdXNlcl9wYWdlcyooKSwgcmVsZWFzZSB0aG9zZSBwYWdl
cwp2aWEgdGhlIG5ldyBwdXRfdXNlcl9wYWdlKigpIHJvdXRpbmVzLCBpbnN0ZWFkIG9mIHZpYSBw
dXRfcGFnZSgpIG9yCnJlbGVhc2VfcGFnZXMoKS4KClRoaXMgaXMgcGFydCBhIHRyZWUtd2lkZSBj
b252ZXJzaW9uLCBhcyBkZXNjcmliZWQgaW4gY29tbWl0IGZjMWQ4ZTdjY2EyZAooIm1tOiBpbnRy
b2R1Y2UgcHV0X3VzZXJfcGFnZSooKSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KCkNoYW5nZXMg
ZnJvbSBKw6lyw7RtZSdzIG9yaWdpbmFsIHBhdGNoOgogICAgKiByZXdvcmtlZCB0byBiZSBjb21w
YXRpYmxlIHdpdGggcmVjZW50IGJpb19yZWxlYXNlX3BhZ2VzKCkgY2hhbmdlcywKICAgICogcmVm
YWN0b3JlZCBzbGlnaHRseSB0byByZW1vdmUgc29tZSBjb2RlIGR1cGxpY2F0aW9uLAogICAgKiB1
c2UgYW4gYXBwcm9hY2ggdGhhdCBjaGFuZ2VzIGZld2VyIGJpb19jaGVja19wYWdlc19kaXJ0eSgp
CiAgICAgIGNhbGxlcnMuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VA
cmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEu
Y29tPgpDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPgpDYzogTWlud29v
IEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4KQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGtlcm5l
bC5kaz4KLS0tCiBibG9jay9iaW8uYyAgICAgICAgIHwgNjAgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tCiBpbmNsdWRlL2xpbnV4L2Jpby5oIHwgIDEgKwogMiBm
aWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9ibG9jay9iaW8uYyBiL2Jsb2NrL2Jpby5jCmluZGV4IDc2NzVlMmRlNTA5ZC4uNzRmOWVi
YTI1ODNiIDEwMDY0NAotLS0gYS9ibG9jay9iaW8uYworKysgYi9ibG9jay9iaW8uYwpAQCAtODQ0
LDcgKzg0NCwxMSBAQCB2b2lkIGJpb19yZWxlYXNlX3BhZ2VzKHN0cnVjdCBiaW8gKmJpbywgZW51
bSBiaW9fcnBfZmxhZ3NfdCBmbGFncykKIAliaW9fZm9yX2VhY2hfc2VnbWVudF9hbGwoYnZlYywg
YmlvLCBpdGVyX2FsbCkgewogCQlpZiAoKGZsYWdzICYgQklPX1JQX01BUktfRElSVFkpICYmICFQ
YWdlQ29tcG91bmQoYnZlYy0+YnZfcGFnZSkpCiAJCQlzZXRfcGFnZV9kaXJ0eV9sb2NrKGJ2ZWMt
PmJ2X3BhZ2UpOwotCQlwdXRfcGFnZShidmVjLT5idl9wYWdlKTsKKworCQlpZiAoZmxhZ3MgJiBC
SU9fUlBfRlJPTV9HVVApCisJCQlwdXRfdXNlcl9wYWdlKGJ2ZWMtPmJ2X3BhZ2UpOworCQllbHNl
CisJCQlwdXRfcGFnZShidmVjLT5idl9wYWdlKTsKIAl9CiB9CiAKQEAgLTE2NjcsMjggKzE2NzEs
NTAgQEAgc3RhdGljIHZvaWQgYmlvX2RpcnR5X2ZuKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yayk7
CiBzdGF0aWMgREVDTEFSRV9XT1JLKGJpb19kaXJ0eV93b3JrLCBiaW9fZGlydHlfZm4pOwogc3Rh
dGljIERFRklORV9TUElOTE9DSyhiaW9fZGlydHlfbG9jayk7CiBzdGF0aWMgc3RydWN0IGJpbyAq
YmlvX2RpcnR5X2xpc3Q7CitzdGF0aWMgc3RydWN0IGJpbyAqYmlvX2d1cF9kaXJ0eV9saXN0Owog
Ci0vKgotICogVGhpcyBydW5zIGluIHByb2Nlc3MgY29udGV4dAotICovCi1zdGF0aWMgdm9pZCBi
aW9fZGlydHlfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQorc3RhdGljIHZvaWQgX19iaW9f
ZGlydHlfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrLAorCQkJICAgc3RydWN0IGJpbyAqKmRp
cnR5X2xpc3QsCisJCQkgICBlbnVtIGJpb19ycF9mbGFnc190IGZsYWdzKQogewogCXN0cnVjdCBi
aW8gKmJpbywgKm5leHQ7CiAKIAlzcGluX2xvY2tfaXJxKCZiaW9fZGlydHlfbG9jayk7Ci0JbmV4
dCA9IGJpb19kaXJ0eV9saXN0OwotCWJpb19kaXJ0eV9saXN0ID0gTlVMTDsKKwluZXh0ID0gKmRp
cnR5X2xpc3Q7CisJKmRpcnR5X2xpc3QgPSBOVUxMOwogCXNwaW5fdW5sb2NrX2lycSgmYmlvX2Rp
cnR5X2xvY2spOwogCiAJd2hpbGUgKChiaW8gPSBuZXh0KSAhPSBOVUxMKSB7CiAJCW5leHQgPSBi
aW8tPmJpX3ByaXZhdGU7CiAKLQkJYmlvX3JlbGVhc2VfcGFnZXMoYmlvLCBCSU9fUlBfTUFSS19E
SVJUWSk7CisJCWJpb19yZWxlYXNlX3BhZ2VzKGJpbywgQklPX1JQX01BUktfRElSVFkgfCBmbGFn
cyk7CiAJCWJpb19wdXQoYmlvKTsKIAl9CiB9CiAKLXZvaWQgYmlvX2NoZWNrX3BhZ2VzX2RpcnR5
KHN0cnVjdCBiaW8gKmJpbykKKy8qCisgKiBUaGlzIHJ1bnMgaW4gcHJvY2VzcyBjb250ZXh0Cisg
Ki8KK3N0YXRpYyB2b2lkIGJpb19kaXJ0eV9mbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCit7
CisJX19iaW9fZGlydHlfZm4od29yaywgJmJpb19kaXJ0eV9saXN0LCAgICAgQklPX1JQX05PUk1B
TCk7CisJX19iaW9fZGlydHlfZm4od29yaywgJmJpb19ndXBfZGlydHlfbGlzdCwgQklPX1JQX0ZS
T01fR1VQKTsKK30KKworLyoqCisgKiBfX2Jpb19jaGVja19wYWdlc19kaXJ0eSgpIC0gcXVldWUg
dXAgcGFnZXMgb24gYSB3b3JrcXVldWUgdG8gZGlydHkgdGhlbQorICogQGJpbzogdGhlIGJpbyBz
dHJ1Y3QgY29udGFpbmluZyB0aGUgcGFnZXMgd2Ugc2hvdWxkIGRpcnR5CisgKiBAZnJvbV9ndXA6
IGRpZCB0aGUgcGFnZXMgaW4gdGhlIGJpbyBjYW1lIGZyb20gR1VQIChnZXRfdXNlcl9wYWdlcyoo
KSkKKyAqCisgKiBUaGlzIHdpbGwgZ28gb3ZlciBhbGwgcGFnZXMgaW4gdGhlIGJpbywgYW5kIGZv
ciBlYWNoIG5vbiBkaXJ0eSBwYWdlLCB0aGUKKyAqIGJpbyBpcyBhZGRlZCB0byBhIGxpc3Qgb2Yg
YmlvJ3MgdGhhdCBuZWVkIHRvIGdldCB0aGVpciBwYWdlcyBkaXJ0aWVkLgorICoKKyAqIFdlIGFs
c28gbmVlZCB0byBrbm93IGlmIHRoZSBwYWdlcyBpbiB0aGUgYmlvIGFyZSBjb21pbmcgZnJvbSBH
VVAgb3Igbm90LAorICogYXMgR1VQZWQgcGFnZXMgbmVlZCB0byBiZSByZWxlYXNlZCB2aWEgcHV0
X3VzZXJfcGFnZSgpLCBpbnN0ZWFkIG9mCisgKiBwdXRfcGFnZSgpLiBQbGVhc2Ugc2VlIERvY3Vt
ZW50YXRpb24vdm0vZ2V0X3VzZXJfcGFnZXMucnN0IGZvciBkZXRhaWxzCisgKiBvbiB0aGF0Lgor
ICovCit2b2lkIF9fYmlvX2NoZWNrX3BhZ2VzX2RpcnR5KHN0cnVjdCBiaW8gKmJpbywgYm9vbCBm
cm9tX2d1cCkKIHsKIAlzdHJ1Y3QgYmlvX3ZlYyAqYnZlYzsKIAl1bnNpZ25lZCBsb25nIGZsYWdz
OwpAQCAtMTY5OSwxNyArMTcyNSwyNyBAQCB2b2lkIGJpb19jaGVja19wYWdlc19kaXJ0eShzdHJ1
Y3QgYmlvICpiaW8pCiAJCQlnb3RvIGRlZmVyOwogCX0KIAotCWJpb19yZWxlYXNlX3BhZ2VzKGJp
bywgQklPX1JQX05PUk1BTCk7CisJYmlvX3JlbGVhc2VfcGFnZXMoYmlvLCBmcm9tX2d1cCA/IEJJ
T19SUF9GUk9NX0dVUCA6IEJJT19SUF9OT1JNQUwpOwogCWJpb19wdXQoYmlvKTsKIAlyZXR1cm47
CiBkZWZlcjoKIAlzcGluX2xvY2tfaXJxc2F2ZSgmYmlvX2RpcnR5X2xvY2ssIGZsYWdzKTsKLQli
aW8tPmJpX3ByaXZhdGUgPSBiaW9fZGlydHlfbGlzdDsKLQliaW9fZGlydHlfbGlzdCA9IGJpbzsK
KwlpZiAoZnJvbV9ndXApIHsKKwkJYmlvLT5iaV9wcml2YXRlID0gYmlvX2d1cF9kaXJ0eV9saXN0
OworCQliaW9fZ3VwX2RpcnR5X2xpc3QgPSBiaW87CisJfSBlbHNlIHsKKwkJYmlvLT5iaV9wcml2
YXRlID0gYmlvX2RpcnR5X2xpc3Q7CisJCWJpb19kaXJ0eV9saXN0ID0gYmlvOworCX0KIAlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZiaW9fZGlydHlfbG9jaywgZmxhZ3MpOwogCXNjaGVkdWxlX3dv
cmsoJmJpb19kaXJ0eV93b3JrKTsKIH0KIAordm9pZCBiaW9fY2hlY2tfcGFnZXNfZGlydHkoc3Ry
dWN0IGJpbyAqYmlvKQoreworCV9fYmlvX2NoZWNrX3BhZ2VzX2RpcnR5KGJpbywgZmFsc2UpOwor
fQorCiB2b2lkIHVwZGF0ZV9pb190aWNrcyhzdHJ1Y3QgaGRfc3RydWN0ICpwYXJ0LCB1bnNpZ25l
ZCBsb25nIG5vdykKIHsKIAl1bnNpZ25lZCBsb25nIHN0YW1wOwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9iaW8uaCBiL2luY2x1ZGUvbGludXgvYmlvLmgKaW5kZXggMjcxNWU1NTY3OWMxLi5k
NjhhNDBjMmM5ZDQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvYmlvLmgKKysrIGIvaW5jbHVk
ZS9saW51eC9iaW8uaApAQCAtNDQ0LDYgKzQ0NCw3IEBAIGludCBiaW9faW92X2l0ZXJfZ2V0X3Bh
Z2VzKHN0cnVjdCBiaW8gKmJpbywgc3RydWN0IGlvdl9pdGVyICppdGVyKTsKIGVudW0gYmlvX3Jw
X2ZsYWdzX3QgewogCUJJT19SUF9OT1JNQUwJCT0gMCwKIAlCSU9fUlBfTUFSS19ESVJUWQk9IDEs
CisJQklPX1JQX0ZST01fR1VQCQk9IDIsCiB9OwogCiBzdGF0aWMgaW5saW5lIGVudW0gYmlvX3Jw
X2ZsYWdzX3QgYmlvX3JwX2RpcnR5X2ZsYWcoYm9vbCBtYXJrX2RpcnR5KQotLSAKMi4yMi4wCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
