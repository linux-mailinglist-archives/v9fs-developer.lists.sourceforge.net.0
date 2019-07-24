Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4015572619
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qR-0000fo-Kb; Wed, 24 Jul 2019 04:25:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qQ-0000fP-Av
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BJP8QYXxp7VfUt7Eaw5PwJTw08pU7M/uVeuocSBpfVU=; b=f0tWnFl1+M/ZbhFLjbl+WgAc6C
 qjdwuw1Hv40dTmSUo2pOSvNW8W0jkD8tSBFqyEWNyd31G8IZJiaRlvUjjz20BFLdiZPym8QiLqohw
 EZsC/BrjlCe09XLdk7IQk2/tJg4mkUiI1NJNtwIM4a6LYTj862JFFtD5k7QNGEtORU68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJP8QYXxp7VfUt7Eaw5PwJTw08pU7M/uVeuocSBpfVU=; b=XbnuNahU0ir1iJPztflTFo7KAM
 PGpeh4LX/ctQPGO6GWUGqCt0qigM4OboDdAIoP7vv6oroDIyQ/nZ+ZFk4NXrwwVvTxHCERiFhi8G1
 TkpoTbOn47LqnE2gJUbdy15vKiSld/DXwEUnDF/q0o7PIOpRdSM7n2RTywPhbOzRuoOg=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qP-00Dau2-1h
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:38 +0000
Received: by mail-pl1-f194.google.com with SMTP id w24so21465468plp.2
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BJP8QYXxp7VfUt7Eaw5PwJTw08pU7M/uVeuocSBpfVU=;
 b=JkQ04mWEAa/01zFb0tlIM6Uj/lB55wPCkF6GMvnL5gHq24gOeLxpu2syudv1ZeubVR
 o/2/SbGfs0MBuqHwUIG/UqiIYwjvwRdM1smByZv+PMbXD0dTKJlqPSntSI4p9XbD0/EP
 dCEFzTMQ+3jKQsrfKqZebfyOsyegrsrPG3hntSrqUGy/c3DI5jDFIn00D4+KacGWHwyg
 5+f61ycblG2ySUuAZOjASXUKEg6G7NHj0n1tTzQ86l9qr5EKD1HA2V/yosWmHzLAWWAj
 WxbUEPr8ZwbT/LJAb0AztRPHVuEiMh11F1nlDvqA1UHHjZuRTFB0keSEGorINX0fFgb2
 sO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BJP8QYXxp7VfUt7Eaw5PwJTw08pU7M/uVeuocSBpfVU=;
 b=YSGFL6OJ744A+XUp65ayzwVqJoj7GNLLMRFnr9oW1FjxfcYeuxUPbz24/ekWTt1687
 b0lLfYBtCei6Zy2lXyjVeKNvyC/ANI4rJSxfgZXzvZYhLOrNyxv8JE4aUkmXSrw9fSVX
 9zRH150SsajpiNkHFi/14T2UhauCVZgsxr+FvNBQUnQe9ZgkTrZ0cqWfFm/Rs+JjqP4U
 4RC4m28GcK8QCUMejHQ5GQN6fya0Cgf0BEQh7Iai6/cueq3nTz6FplC/xhdY/EcHAS/T
 mRSuZjjXqsBYUQ8DqNKfO6KnYiEhpgqE/wpwrCggjcKKQULoq7imqhSWqSLVmlMAFTVR
 NIeg==
X-Gm-Message-State: APjAAAVj1ANnngVvRq97a4dMs1Afuar7taCVERyuz0lqVFfR+g/PEqwI
 KaWpaNJsYV9SnWIc1rSe/D8=
X-Google-Smtp-Source: APXvYqwp+g/SqY8cK+RhyrKnPd9NNEiEh2F/BoaBOdfDPn2MZtzIjgPt3GPtA4VFQfpQXahpL/YYYg==
X-Received: by 2002:a17:902:ac85:: with SMTP id
 h5mr84794603plr.198.1563942331371; 
 Tue, 23 Jul 2019 21:25:31 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:30 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:13 -0700
Message-Id: <20190724042518.14363-8-jhubbard@nvidia.com>
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
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (john.hubbard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8qP-00Dau2-1h
Subject: [V9fs-developer] [PATCH 07/12] vhost-scsi: convert put_page() to
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
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Stefan Hajnoczi <stefanha@redhat.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
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
Z2luYWwgcGF0Y2g6CgoqIENoYW5nZWQgYSBXQVJOX09OIHRvIGEgQlVHX09OLgoKU2lnbmVkLW9m
Zi1ieTogSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+ClNpZ25lZC1vZmYtYnk6
IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNvbT4KQ2M6IHZpcnR1YWxpemF0aW9uQGxp
c3RzLmxpbnV4LWZvdW5kYXRpb24ub3JnCkNjOiBsaW51eC1mc2RldmVsQHZnZXIua2VybmVsLm9y
ZwpDYzogbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1tbUBrdmFjay5vcmcK
Q2M6IEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxp
YW1zQGludGVsLmNvbT4KQ2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51
az4KQ2M6IEpvaGFubmVzIFRodW1zaGlybiA8anRodW1zaGlybkBzdXNlLmRlPgpDYzogQ2hyaXN0
b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+
CkNjOiBNaW5nIExlaSA8bWluZy5sZWlAcmVkaGF0LmNvbT4KQ2M6IERhdmUgQ2hpbm5lciA8ZGF2
aWRAZnJvbW9yYml0LmNvbT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzog
TWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBCb2F6IEhhcnJvc2ggPGJv
YXpAcGxleGlzdG9yLmNvbT4KQ2M6IE1pa2xvcyBTemVyZWRpIDxtaWtsb3NAc3plcmVkaS5odT4K
Q2M6ICJNaWNoYWVsIFMuIFRzaXJraW4iIDxtc3RAcmVkaGF0LmNvbT4KQ2M6IEphc29uIFdhbmcg
PGphc293YW5nQHJlZGhhdC5jb20+CkNjOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRoYXQu
Y29tPgpDYzogU3RlZmFuIEhham5vY3ppIDxzdGVmYW5oYUByZWRoYXQuY29tPgotLS0KIGRyaXZl
cnMvdmhvc3Qvc2NzaS5jIHwgMTMgKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aG9zdC9z
Y3NpLmMgYi9kcml2ZXJzL3Zob3N0L3Njc2kuYwppbmRleCBhOWNhZjFiYzNjM2UuLjI4MjU2NWFi
NWUzZiAxMDA2NDQKLS0tIGEvZHJpdmVycy92aG9zdC9zY3NpLmMKKysrIGIvZHJpdmVycy92aG9z
dC9zY3NpLmMKQEAgLTMyOSwxMSArMzI5LDExIEBAIHN0YXRpYyB2b2lkIHZob3N0X3Njc2lfcmVs
ZWFzZV9jbWQoc3RydWN0IHNlX2NtZCAqc2VfY21kKQogCiAJaWYgKHR2X2NtZC0+dHZjX3NnbF9j
b3VudCkgewogCQlmb3IgKGkgPSAwOyBpIDwgdHZfY21kLT50dmNfc2dsX2NvdW50OyBpKyspCi0J
CQlwdXRfcGFnZShzZ19wYWdlKCZ0dl9jbWQtPnR2Y19zZ2xbaV0pKTsKKwkJCXB1dF91c2VyX3Bh
Z2Uoc2dfcGFnZSgmdHZfY21kLT50dmNfc2dsW2ldKSk7CiAJfQogCWlmICh0dl9jbWQtPnR2Y19w
cm90X3NnbF9jb3VudCkgewogCQlmb3IgKGkgPSAwOyBpIDwgdHZfY21kLT50dmNfcHJvdF9zZ2xf
Y291bnQ7IGkrKykKLQkJCXB1dF9wYWdlKHNnX3BhZ2UoJnR2X2NtZC0+dHZjX3Byb3Rfc2dsW2ld
KSk7CisJCQlwdXRfdXNlcl9wYWdlKHNnX3BhZ2UoJnR2X2NtZC0+dHZjX3Byb3Rfc2dsW2ldKSk7
CiAJfQogCiAJdmhvc3Rfc2NzaV9wdXRfaW5mbGlnaHQodHZfY21kLT5pbmZsaWdodCk7CkBAIC02
MzAsNiArNjMwLDEzIEBAIHZob3N0X3Njc2lfbWFwX3RvX3NnbChzdHJ1Y3Qgdmhvc3Rfc2NzaV9j
bWQgKmNtZCwKIAlzaXplX3Qgb2Zmc2V0OwogCXVuc2lnbmVkIGludCBucGFnZXMgPSAwOwogCisJ
LyoKKwkgKiBIZXJlIGluIGFsbCBjYXNlcyB3ZSBzaG91bGQgaGF2ZSBhbiBJT1ZFQyB3aGljaCB1
c2UgR1VQLiBJZiB0aGF0IGlzCisJICogbm90IHRoZSBjYXNlIHRoZW4gd2Ugd2lsbCB3cm9uZ2x5
IGNhbGwgcHV0X3VzZXJfcGFnZSgpIGFuZCB0aGUgcGFnZQorCSAqIHJlZmNvdW50IHdpbGwgZ28g
d3JvbmcgKHRoaXMgaXMgaW4gdmhvc3Rfc2NzaV9yZWxlYXNlX2NtZCgpKQorCSAqLworCVdBUk5f
T04oIWlvdl9pdGVyX2dldF9wYWdlc191c2VfZ3VwKGl0ZXIpKTsKKwogCWJ5dGVzID0gaW92X2l0
ZXJfZ2V0X3BhZ2VzKGl0ZXIsIHBhZ2VzLCBMT05HX01BWCwKIAkJCQlWSE9TVF9TQ1NJX1BSRUFM
TE9DX1VQQUdFUywgJm9mZnNldCk7CiAJLyogTm8gcGFnZXMgd2VyZSBwaW5uZWQgKi8KQEAgLTY4
MSw3ICs2ODgsNyBAQCB2aG9zdF9zY3NpX2lvdl90b19zZ2woc3RydWN0IHZob3N0X3Njc2lfY21k
ICpjbWQsIGJvb2wgd3JpdGUsCiAJCQl3aGlsZSAocCA8IHNnKSB7CiAJCQkJc3RydWN0IHBhZ2Ug
KnBhZ2UgPSBzZ19wYWdlKHArKyk7CiAJCQkJaWYgKHBhZ2UpCi0JCQkJCXB1dF9wYWdlKHBhZ2Up
OworCQkJCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwogCQkJfQogCQkJcmV0dXJuIHJldDsKIAkJfQot
LSAKMi4yMi4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
