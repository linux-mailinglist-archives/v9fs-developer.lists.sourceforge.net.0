Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6672618
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:25:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8qQ-0000LF-8E; Wed, 24 Jul 2019 04:25:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <john.hubbard@gmail.com>) id 1hq8qO-0000L7-Ik
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sE4MQj+XhMD6UPTZi8xJ0bNX4cYnp7r/5/gkEQk0tas=; b=fj5ZS2jKvMPRrxraDDDR9H3h/W
 bYnhh5R1CtRjCSM45sTlFbTJX29QIU+c5a1hG86OPF/HiuJfRsEtJO65kq1tBItbU0M/wNofc6wDL
 tR8kxamrH/NZw87cUTfkO4rMFl0u5ZZe7Krtvd6Q6KleVEcmvsSU00cYVyJPkA3jnJOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sE4MQj+XhMD6UPTZi8xJ0bNX4cYnp7r/5/gkEQk0tas=; b=OMiMi/DBg37eVsevS7D9I7cCwq
 wpsEom5NFaXciL81GlVoVOAUU6jRUxgJ32kxDosPEhV27igUdzABGy6UG0CJu/gU8bIL2kkr38lpt
 CeE6wIfUrB5GIg20uMz8bjukd29OEdIFJwhgsFqikSXleQ5+ykRU3TkkSIK0MQNI1Ocw=;
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hq8qN-00Datw-B1
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:25:36 +0000
Received: by mail-pf1-f193.google.com with SMTP id c73so20223556pfb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 23 Jul 2019 21:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sE4MQj+XhMD6UPTZi8xJ0bNX4cYnp7r/5/gkEQk0tas=;
 b=N74tfFByAZggYZcsUYTvgYBqmp8bGoZSPNbPePQDgI9xHOKtDI+JBR5Z/IiOFQ1dt4
 oWVFdgGyfImD0LwBldj16IkrMRl7/f0OT/Q4l6ls05QNNVgjJIUWu+aeK2CLI7WrmOO1
 TCwZxwbVGwL+85kP8X47MDnZlnY5CwsAaw+XO6UEjqntQs8fO4Oc87gAiS/1YP6rdwM3
 9NVpw94/A/DYK3lq7v7X4QjwLe8vgVS0TAdSk8ZgDg7r0yVNM7SKDo6TuP97iAlISt79
 gTDmZw4nL2v0p7bxSBy6D4Zi0oq/Mz2I8pSvkTef9m0MiEMvo0WtG93wFrP09qcMFi9e
 QIZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sE4MQj+XhMD6UPTZi8xJ0bNX4cYnp7r/5/gkEQk0tas=;
 b=O+4uE9EPx9efc5wcJBUZS4ADIN+kLFP8hVve+GWAgc0u8Yb2S/3tmYqvb9RyihTGE2
 tQwC9EZY668vr04Rlegwut/uBm5n8DUdcsM4qa8/a1YW+9woBDJqe8OqxvjfAPUHTWeJ
 pkuYax7ZJpgCMdBX40+td8JkLh5IpwzWCk+plTnB2EHVq2CVNpjrEGHzVC7i3cMIj3fX
 uBULrMxVfRTpZ5PT9HW51FgAXoYSGb4ZHL3vAxhY3/D6EekDvJENIKeKiyOuOJGbjQJK
 eBM7qcy8EYgZJEemiLChzhy2mbWtQpa9vmwcq/p38BPopu88kyu7LQaL/yvZiRFopTyE
 SKEg==
X-Gm-Message-State: APjAAAWCgxxW5VNVOmihQd0wA9jBF732qESWBPSltqTX282zPvgXkg80
 ntaNUQaY7Q1dVZLAr7u2HBQ=
X-Google-Smtp-Source: APXvYqxW3prZwkWHWgnoMEubD7xNwrSIeIAF1uZdix4e6/fDDx4fF84KKWNkiOUj/KQ81cpzXumLMA==
X-Received: by 2002:a62:4d85:: with SMTP id a127mr9256862pfb.148.1563942329748; 
 Tue, 23 Jul 2019 21:25:29 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 a15sm34153364pgw.3.2019.07.23.21.25.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 21:25:29 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Date: Tue, 23 Jul 2019 21:25:12 -0700
Message-Id: <20190724042518.14363-7-jhubbard@nvidia.com>
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
 trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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
X-Headers-End: 1hq8qN-00Datw-B1
Subject: [V9fs-developer] [PATCH 06/12] fs/nfs: convert put_page() to
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
b2R1Y2UgcHV0X3VzZXJfcGFnZSooKSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KClNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5
OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+CkNjOiBsaW51eC1mc2RldmVsQHZn
ZXIua2VybmVsLm9yZwpDYzogbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1t
bUBrdmFjay5vcmcKQ2M6IGxpbnV4LW5mc0B2Z2VyLmtlcm5lbC5vcmcKQ2M6IEphbiBLYXJhIDxq
YWNrQHN1c2UuY3o+CkNjOiBEYW4gV2lsbGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4K
Q2M6IEFsZXhhbmRlciBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51az4KQ2M6IEpvaGFubmVz
IFRodW1zaGlybiA8anRodW1zaGlybkBzdXNlLmRlPgpDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBrZXJuZWwuZGs+CkNjOiBNaW5nIExlaSA8
bWluZy5sZWlAcmVkaGF0LmNvbT4KQ2M6IERhdmUgQ2hpbm5lciA8ZGF2aWRAZnJvbW9yYml0LmNv
bT4KQ2M6IEphc29uIEd1bnRob3JwZSA8amdnQHppZXBlLmNhPgpDYzogTWF0dGhldyBXaWxjb3gg
PHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBCb2F6IEhhcnJvc2ggPGJvYXpAcGxleGlzdG9yLmNv
bT4KQ2M6IFRyb25kIE15a2xlYnVzdCA8dHJvbmQubXlrbGVidXN0QGhhbW1lcnNwYWNlLmNvbT4K
Q2M6IEFubmEgU2NodW1ha2VyIDxhbm5hLnNjaHVtYWtlckBuZXRhcHAuY29tPgotLS0KIGZzL25m
cy9kaXJlY3QuYyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvbmZzL2RpcmVjdC5jIGIvZnMvbmZz
L2RpcmVjdC5jCmluZGV4IDBjYjQ0MjQwNjE2OC4uMzVmMzBmZTI5MDBmIDEwMDY0NAotLS0gYS9m
cy9uZnMvZGlyZWN0LmMKKysrIGIvZnMvbmZzL2RpcmVjdC5jCkBAIC01MTIsNyArNTEyLDEwIEBA
IHN0YXRpYyBzc2l6ZV90IG5mc19kaXJlY3RfcmVhZF9zY2hlZHVsZV9pb3ZlYyhzdHJ1Y3QgbmZz
X2RpcmVjdF9yZXEgKmRyZXEsCiAJCQlwb3MgKz0gcmVxX2xlbjsKIAkJCWRyZXEtPmJ5dGVzX2xl
ZnQgLT0gcmVxX2xlbjsKIAkJfQotCQluZnNfZGlyZWN0X3JlbGVhc2VfcGFnZXMocGFnZXZlYywg
bnBhZ2VzKTsKKwkJaWYgKGlvdl9pdGVyX2dldF9wYWdlc191c2VfZ3VwKGl0ZXIpKQorCQkJcHV0
X3VzZXJfcGFnZXMocGFnZXZlYywgbnBhZ2VzKTsKKwkJZWxzZQorCQkJbmZzX2RpcmVjdF9yZWxl
YXNlX3BhZ2VzKHBhZ2V2ZWMsIG5wYWdlcyk7CiAJCWt2ZnJlZShwYWdldmVjKTsKIAkJaWYgKHJl
c3VsdCA8IDApCiAJCQlicmVhazsKQEAgLTkzNSw3ICs5MzgsMTAgQEAgc3RhdGljIHNzaXplX3Qg
bmZzX2RpcmVjdF93cml0ZV9zY2hlZHVsZV9pb3ZlYyhzdHJ1Y3QgbmZzX2RpcmVjdF9yZXEgKmRy
ZXEsCiAJCQlwb3MgKz0gcmVxX2xlbjsKIAkJCWRyZXEtPmJ5dGVzX2xlZnQgLT0gcmVxX2xlbjsK
IAkJfQotCQluZnNfZGlyZWN0X3JlbGVhc2VfcGFnZXMocGFnZXZlYywgbnBhZ2VzKTsKKwkJaWYg
KGlvdl9pdGVyX2dldF9wYWdlc191c2VfZ3VwKGl0ZXIpKQorCQkJcHV0X3VzZXJfcGFnZXMocGFn
ZXZlYywgbnBhZ2VzKTsKKwkJZWxzZQorCQkJbmZzX2RpcmVjdF9yZWxlYXNlX3BhZ2VzKHBhZ2V2
ZWMsIG5wYWdlcyk7CiAJCWt2ZnJlZShwYWdldmVjKTsKIAkJaWYgKHJlc3VsdCA8IDApCiAJCQli
cmVhazsKLS0gCjIuMjIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
