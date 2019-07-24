Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 620357261A
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qR-0000fc-Ht; Wed, 24 Jul 2019 04:25:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qP-0000fB-Af
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CtboR7Ufy9O9fDFcRIuCIk1t8EIvDdcqQ3tCIzPpVTU=; b=PToShbDcmJoYqE8d5kPtrP1k8r
 JDMjkH6fECvlmh+xyNlkESAz2JlmsqMfHLGJm0vLYO7u768IhGwjygztyKlLbrPwduUQX48LwudbI
 4mOlu3dTXn9s2A1QJshfaseJ8A13R4YB7K5Msc80OhWpMAhUhUN9Nq+OMBKBY9cCx6vE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CtboR7Ufy9O9fDFcRIuCIk1t8EIvDdcqQ3tCIzPpVTU=; b=gdvlyMrJCfZgBHLph6a77joeUH
 jMAmrZ0Yl4WL21oISoj/xForPTfomzQhL51leTF6AP3jnkbaGVV2Y852DTTsfnCeUWwxl97WKNsFj
 GDe3FRSKn6RlUBCW4TBcDV1wgssk+AVUlV8GP8x8j3ePRPdlb6YPEnHNTpfm/xbLpWEg=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qM-00Datt-1W
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:37 +0000
Received: by mail-pl1-f196.google.com with SMTP id a93so21418402pla.7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtboR7Ufy9O9fDFcRIuCIk1t8EIvDdcqQ3tCIzPpVTU=;
 b=BFNUQlsly9hFNZnfDRf69ho0wDvCVUqoj8dGJpNcOiGYgy46obMbORHEMN/I5tUQuy
 K86xGPjY4b4QO+54v/Zv7nQ40O3fVB4kil84sULCnYrDgJVTXlsEFmALWYldAbZAgMBP
 fvIXv3sy0T/Ns+lBLfXM4dLPELbccf6aa9owKLeIZQZMk4ea+nMOdmYcBOB36dALtS4z
 0SnWHD/Ra8zQZlPYXX9NedMId4XeBIsKRL/2j4wXYAsw4ctlt6Th0vAum9effAlS+CNc
 g0HRax01vlO2YL0JWYjboqvm7PfjfxsTzbm2nbAhIfIebOVYGUr1FquaKAPIEQbTrE+e
 0YTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtboR7Ufy9O9fDFcRIuCIk1t8EIvDdcqQ3tCIzPpVTU=;
 b=jfVMfQELq+KLZqsC8W58wTDh2Yg3JJZGo7H/wV/93fjdHvcx2hwPrMswgqoffYsDYP
 e5PGP5H9JqZ4hRoEX/kmjYrL5T7KFG+VylBwpVb0DRJDu4xuPNHoHolptTxdDK2avBqB
 ZPqZRSEPJc3k2/h//n5BfQ9xG1bZ1e4On8SYjgIBgpFRKbfJIbWn+P4JAdRThblnXXIz
 4xusJCdnjY9VhsBws4lfIRU41ubsvRravH2BkDoUgRTJWiYOw6CgrDGdzkIVqKs1CgAT
 KxdfhrBMDukuKvJguCWKykYKs9y0cgCNTuhT3eczHtfy2FOEFaF1z5AbWHgCC7Jg8yst
 6RKA==
X-Gm-Message-State: APjAAAVUUC/Y4xFKx65iTmQGzjJ8L3CWKsyEeWTE5jTuYCHsR0RehHWX
 zq+Nq15Bzz4T68xyt9CFUgQ=
X-Google-Smtp-Source: APXvYqw2fBb16YWxNCvrkJttPP2qps3nLx7+Bn7G811lLUhuqyz8ucaB8iJLC4by+I8yTQYjbx90Ag==
X-Received: by 2002:a17:902:2ec5:: with SMTP id
 r63mr82774537plb.21.1563942328383; 
 Tue, 23 Jul 2019 21:25:28 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:27 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:11 -0700
Message-Id: <20190724042518.14363-6-jhubbard@nvidia.com>
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
 trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qM-00Datt-1W
Subject: [V9fs-developer] [PATCH 05/12] block_dev: convert put_page() to
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
dXRfcGFnZSgpIG9yCnJlbGVhc2VfcGFnZXMoKS4KClRoaXMgaXMgcGFydCBhIHRyZWUtd2lkZSBj
b252ZXJzaW9uLCBhcyBkZXNjcmliZWQgaW4gY29tbWl0IGZjMWQ4ZTdjY2EyZAooIm1tOiBpbnRy
b2R1Y2UgcHV0X3VzZXJfcGFnZSooKSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KCkNoYW5nZXMg
ZnJvbSBKw6lyw7RtZSdzIG9yaWdpbmFsIHBhdGNoOgoKKiByZXdvcmtlZCB0byBiZSBjb21wYXRp
YmxlIHdpdGggcmVjZW50IGJpb19yZWxlYXNlX3BhZ2VzKCkgY2hhbmdlcy4KClNpZ25lZC1vZmYt
Ynk6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+CkNjOiBsaW51eC1mc2RldmVsQHZnZXIu
a2VybmVsLm9yZwpDYzogbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tbUBr
dmFjay5vcmcKQ2M6IEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRh
bi5qLndpbGxpYW1zQGludGVsLmNvbT4KQ2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2Lmxp
bnV4Lm9yZy51az4KQ2M6IEpvaGFubmVzIFRodW1zaGlybiA8anRodW1zaGlybkBzdXNlLmRlPgpD
YzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBr
ZXJuZWwuZGs+CkNjOiBNaW5nIExlaSA8bWluZy5sZWlAcmVkaGF0LmNvbT4KQ2M6IERhdmUgQ2hp
bm5lciA8ZGF2aWRAZnJvbW9yYml0LmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBl
LmNhPgpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBCb2F6IEhh
cnJvc2ggPGJvYXpAcGxleGlzdG9yLmNvbT4KLS0tCiBibG9jay9iaW8uYyAgICAgICAgIHwgMTMg
KysrKysrKysrKysrKwogZnMvYmxvY2tfZGV2LmMgICAgICB8IDIyICsrKysrKysrKysrKysrKysr
LS0tLS0KIGluY2x1ZGUvbGludXgvYmlvLmggfCAgOCArKysrKysrKwogMyBmaWxlcyBjaGFuZ2Vk
LCAzOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Jsb2NrL2Jp
by5jIGIvYmxvY2svYmlvLmMKaW5kZXggNzRmOWViYTI1ODNiLi4zYjlmNjZlNjRiYzEgMTAwNjQ0
Ci0tLSBhL2Jsb2NrL2Jpby5jCisrKyBiL2Jsb2NrL2Jpby5jCkBAIC0xNzQ2LDYgKzE3NDYsMTkg
QEAgdm9pZCBiaW9fY2hlY2tfcGFnZXNfZGlydHkoc3RydWN0IGJpbyAqYmlvKQogCV9fYmlvX2No
ZWNrX3BhZ2VzX2RpcnR5KGJpbywgZmFsc2UpOwogfQogCitlbnVtIGJpb19ycF9mbGFnc190IGJp
b19ycF9mbGFncyhzdHJ1Y3QgaW92X2l0ZXIgKml0ZXIsIGJvb2wgbWFya19kaXJ0eSkKK3sKKwll
bnVtIGJpb19ycF9mbGFnc190IGZsYWdzID0gQklPX1JQX05PUk1BTDsKKworCWlmIChtYXJrX2Rp
cnR5KQorCQlmbGFncyB8PSBCSU9fUlBfTUFSS19ESVJUWTsKKworCWlmIChpb3ZfaXRlcl9nZXRf
cGFnZXNfdXNlX2d1cChpdGVyKSkKKwkJZmxhZ3MgfD0gQklPX1JQX0ZST01fR1VQOworCisJcmV0
dXJuIGZsYWdzOworfQorCiB2b2lkIHVwZGF0ZV9pb190aWNrcyhzdHJ1Y3QgaGRfc3RydWN0ICpw
YXJ0LCB1bnNpZ25lZCBsb25nIG5vdykKIHsKIAl1bnNpZ25lZCBsb25nIHN0YW1wOwpkaWZmIC0t
Z2l0IGEvZnMvYmxvY2tfZGV2LmMgYi9mcy9ibG9ja19kZXYuYwppbmRleCA5ZmU2NjE2Zjg3ODgu
LmQ1M2FiYWYzMWU1NCAxMDA2NDQKLS0tIGEvZnMvYmxvY2tfZGV2LmMKKysrIGIvZnMvYmxvY2tf
ZGV2LmMKQEAgLTI1OSw3ICsyNTksNyBAQCBfX2Jsa2Rldl9kaXJlY3RfSU9fc2ltcGxlKHN0cnVj
dCBraW9jYiAqaW9jYiwgc3RydWN0IGlvdl9pdGVyICppdGVyLAogCX0KIAlfX3NldF9jdXJyZW50
X3N0YXRlKFRBU0tfUlVOTklORyk7CiAKLQliaW9fcmVsZWFzZV9wYWdlcygmYmlvLCBiaW9fcnBf
ZGlydHlfZmxhZyhzaG91bGRfZGlydHkpKTsKKwliaW9fcmVsZWFzZV9wYWdlcygmYmlvLCBiaW9f
cnBfZmxhZ3MoaXRlciwgc2hvdWxkX2RpcnR5KSk7CiAJaWYgKHVubGlrZWx5KGJpby5iaV9zdGF0
dXMpKQogCQlyZXQgPSBibGtfc3RhdHVzX3RvX2Vycm5vKGJpby5iaV9zdGF0dXMpOwogCkBAIC0y
OTUsNyArMjk1LDcgQEAgc3RhdGljIGludCBibGtkZXZfaW9wb2xsKHN0cnVjdCBraW9jYiAqa2lv
Y2IsIGJvb2wgd2FpdCkKIAlyZXR1cm4gYmxrX3BvbGwocSwgUkVBRF9PTkNFKGtpb2NiLT5raV9j
b29raWUpLCB3YWl0KTsKIH0KIAotc3RhdGljIHZvaWQgYmxrZGV2X2Jpb19lbmRfaW8oc3RydWN0
IGJpbyAqYmlvKQorc3RhdGljIHZvaWQgX2Jsa2Rldl9iaW9fZW5kX2lvKHN0cnVjdCBiaW8gKmJp
bywgYm9vbCBmcm9tX2d1cCkKIHsKIAlzdHJ1Y3QgYmxrZGV2X2RpbyAqZGlvID0gYmlvLT5iaV9w
cml2YXRlOwogCWJvb2wgc2hvdWxkX2RpcnR5ID0gZGlvLT5zaG91bGRfZGlydHk7CkBAIC0zMjcs
MTMgKzMyNywyMyBAQCBzdGF0aWMgdm9pZCBibGtkZXZfYmlvX2VuZF9pbyhzdHJ1Y3QgYmlvICpi
aW8pCiAJfQogCiAJaWYgKHNob3VsZF9kaXJ0eSkgewotCQliaW9fY2hlY2tfcGFnZXNfZGlydHko
YmlvKTsKKwkJX19iaW9fY2hlY2tfcGFnZXNfZGlydHkoYmlvLCBmcm9tX2d1cCk7CiAJfSBlbHNl
IHsKLQkJYmlvX3JlbGVhc2VfcGFnZXMoYmlvLCBCSU9fUlBfTk9STUFMKTsKKwkJYmlvX3JlbGVh
c2VfcGFnZXMoYmlvLCBiaW9fcnBfZ3VwX2ZsYWcoZnJvbV9ndXApKTsKIAkJYmlvX3B1dChiaW8p
OwogCX0KIH0KIAorc3RhdGljIHZvaWQgYmxrZGV2X2Jpb19lbmRfaW8oc3RydWN0IGJpbyAqYmlv
KQoreworCV9ibGtkZXZfYmlvX2VuZF9pbyhiaW8sIGZhbHNlKTsKK30KKworc3RhdGljIHZvaWQg
YmxrZGV2X2Jpb19mcm9tX2d1cF9lbmRfaW8oc3RydWN0IGJpbyAqYmlvKQoreworCV9ibGtkZXZf
YmlvX2VuZF9pbyhiaW8sIHRydWUpOworfQorCiBzdGF0aWMgc3NpemVfdAogX19ibGtkZXZfZGly
ZWN0X0lPKHN0cnVjdCBraW9jYiAqaW9jYiwgc3RydWN0IGlvdl9pdGVyICppdGVyLCBpbnQgbnJf
cGFnZXMpCiB7CkBAIC0zODAsNyArMzkwLDkgQEAgX19ibGtkZXZfZGlyZWN0X0lPKHN0cnVjdCBr
aW9jYiAqaW9jYiwgc3RydWN0IGlvdl9pdGVyICppdGVyLCBpbnQgbnJfcGFnZXMpCiAJCWJpby0+
YmlfaXRlci5iaV9zZWN0b3IgPSBwb3MgPj4gOTsKIAkJYmlvLT5iaV93cml0ZV9oaW50ID0gaW9j
Yi0+a2lfaGludDsKIAkJYmlvLT5iaV9wcml2YXRlID0gZGlvOwotCQliaW8tPmJpX2VuZF9pbyA9
IGJsa2Rldl9iaW9fZW5kX2lvOworCQliaW8tPmJpX2VuZF9pbyA9IGlvdl9pdGVyX2dldF9wYWdl
c191c2VfZ3VwKGl0ZXIpID8KKwkJCQkgYmxrZGV2X2Jpb19mcm9tX2d1cF9lbmRfaW8gOgorCQkJ
CSBibGtkZXZfYmlvX2VuZF9pbzsKIAkJYmlvLT5iaV9pb3ByaW8gPSBpb2NiLT5raV9pb3ByaW87
CiAKIAkJcmV0ID0gYmlvX2lvdl9pdGVyX2dldF9wYWdlcyhiaW8sIGl0ZXIpOwpkaWZmIC0tZ2l0
IGEvaW5jbHVkZS9saW51eC9iaW8uaCBiL2luY2x1ZGUvbGludXgvYmlvLmgKaW5kZXggZDY4YTQw
YzJjOWQ0Li5iOTQ2MGQxYTQ2NzkgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvYmlvLmgKKysr
IGIvaW5jbHVkZS9saW51eC9iaW8uaApAQCAtNDUyLDYgKzQ1MiwxMyBAQCBzdGF0aWMgaW5saW5l
IGVudW0gYmlvX3JwX2ZsYWdzX3QgYmlvX3JwX2RpcnR5X2ZsYWcoYm9vbCBtYXJrX2RpcnR5KQog
CXJldHVybiBtYXJrX2RpcnR5ID8gQklPX1JQX01BUktfRElSVFkgOiBCSU9fUlBfTk9STUFMOwog
fQogCitzdGF0aWMgaW5saW5lIGVudW0gYmlvX3JwX2ZsYWdzX3QgYmlvX3JwX2d1cF9mbGFnKGJv
b2wgZnJvbV9ndXApCit7CisJcmV0dXJuIGZyb21fZ3VwID8gQklPX1JQX0ZST01fR1VQIDogQklP
X1JQX05PUk1BTDsKK30KKworZW51bSBiaW9fcnBfZmxhZ3NfdCBiaW9fcnBfZmxhZ3Moc3RydWN0
IGlvdl9pdGVyICppdGVyLCBib29sIG1hcmtfZGlydHkpOworCiB2b2lkIGJpb19yZWxlYXNlX3Bh
Z2VzKHN0cnVjdCBiaW8gKmJpbywgZW51bSBiaW9fcnBfZmxhZ3NfdCBmbGFncyk7CiBzdHJ1Y3Qg
cnFfbWFwX2RhdGE7CiBleHRlcm4gc3RydWN0IGJpbyAqYmlvX21hcF91c2VyX2lvdihzdHJ1Y3Qg
cmVxdWVzdF9xdWV1ZSAqLApAQCAtNDYzLDYgKzQ3MCw3IEBAIGV4dGVybiBzdHJ1Y3QgYmlvICpi
aW9fY29weV9rZXJuKHN0cnVjdCByZXF1ZXN0X3F1ZXVlICosIHZvaWQgKiwgdW5zaWduZWQgaW50
LAogCQkJCSBnZnBfdCwgaW50KTsKIGV4dGVybiB2b2lkIGJpb19zZXRfcGFnZXNfZGlydHkoc3Ry
dWN0IGJpbyAqYmlvKTsKIGV4dGVybiB2b2lkIGJpb19jaGVja19wYWdlc19kaXJ0eShzdHJ1Y3Qg
YmlvICpiaW8pOwordm9pZCBfX2Jpb19jaGVja19wYWdlc19kaXJ0eShzdHJ1Y3QgYmlvICpiaW8s
IGJvb2wgZnJvbV9ndXApOwogCiB2b2lkIGdlbmVyaWNfc3RhcnRfaW9fYWNjdChzdHJ1Y3QgcmVx
dWVzdF9xdWV1ZSAqcSwgaW50IG9wLAogCQkJCXVuc2lnbmVkIGxvbmcgc2VjdG9ycywgc3RydWN0
IGhkX3N0cnVjdCAqcGFydCk7Ci0tIAoyLjIyLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
