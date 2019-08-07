Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 817998448C
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Aug 2019 08:35:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hvFY7-0005Sq-V3; Wed, 07 Aug 2019 06:35:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+ecabc3e5d1f7686a0adb+5827+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1hvFY6-0005Sb-PC
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Aug 2019 06:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/YO9E7Kk2GlCfqzWsOaLMxcaYYFJaO+2uQZpeggUB0=; b=gS4vKn7b/wracvLc8uh0tgeSev
 mr2nYzmm9UP2fFRhCbhl+DFTmWb08rnYOqR+4e0YnRbtz2wBMpz4/iDui/V7NrXia9YRD79ZPw31F
 OGzsuOgnb13rvK7kq6b8XQGmwPsmS0FI5zUy+ojTdvYX3mpjjihGSF3QYCyuM3BbaDMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h/YO9E7Kk2GlCfqzWsOaLMxcaYYFJaO+2uQZpeggUB0=; b=hmCApJ7tXdwfyRwzYm7hObokPm
 eqrLVk/FN0/KvVoCuzXcHokJX0JjxG5/JH+vPBSUQuACevDiaMmI+1nn5r6FDveYXSHNQWYUzxB8f
 yNhnA7dszzJ/KuEVcThg5uRTovpLzwJzJlYSAXzZTgW+1z+QXNv0FDgKeIXzBIMd0+hs=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvFY4-00EOT0-Nn
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Aug 2019 06:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/YO9E7Kk2GlCfqzWsOaLMxcaYYFJaO+2uQZpeggUB0=; b=otE89qYM9WmETe4AtaYSwZhaVp
 x2hWnzTkK/+H6YrywBw2CCvGkAGS0+cMqYBTGZ1bytkCsNKOywsxuaErRoaQPCJFZ74nyD+BaWD0D
 Fqio4bMq3iSkQd4EZDyn1AS+qiOZ+zvMv6fNRqFHw53t3ciAgH4Z1x8wvN/D7EYKreU7FK2EDXOVj
 PtXuttuf2InvZsTot7swxCxX4U2Gh/2vRud2yGtuCEvw7oeWsTGK9Fxhm2aMTINFjUbhDSIHyQW9d
 1InA9ls8uWP73McSrAt6icdTTX2iY22SDv4qsGs3F3dJNdqSF3NdiMXvEekNoqV5nkE99PNfKXpGY
 TVYojzfw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvFX6-0004to-Ui; Wed, 07 Aug 2019 06:34:48 +0000
Date: Tue, 6 Aug 2019 23:34:48 -0700
From: Christoph Hellwig <hch@infradead.org>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <20190807063448.GA6002@infradead.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724061750.GA19397@infradead.org>
 <c35aa2bf-c830-9e57-78ca-9ce6fb6cb53b@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c35aa2bf-c830-9e57-78ca-9ce6fb6cb53b@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hvFY4-00EOT0-Nn
Subject: Re: [V9fs-developer] [PATCH 00/12] block/bio,
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
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, v9fs-developer@lists.sourceforge.net,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 john.hubbard@gmail.com, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDM6NTQ6MzVQTSAtMDcwMCwgSm9obiBIdWJiYXJkIHdy
b3RlOgo+IE9uIDcvMjMvMTkgMTE6MTcgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+ID4g
T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MjU6MDZQTSAtMDcwMCwgam9obi5odWJiYXJkQGdt
YWlsLmNvbSB3cm90ZToKPiA+PiAqIFN0b3JlLCBpbiB0aGUgaW92X2l0ZXIsIGEgImNhbWUgZnJv
bSBndXAgKGdldF91c2VyX3BhZ2VzKSIgcGFyYW1ldGVyLgo+ID4+ICAgVGhlbiwgdXNlIHRoZSBu
ZXcgaW92X2l0ZXJfZ2V0X3BhZ2VzX3VzZV9ndXAoKSB0byByZXRyaWV2ZSBpdCB3aGVuCj4gPj4g
ICBpdCBpcyB0aW1lIHRvIHJlbGVhc2UgdGhlIHBhZ2VzLiBUaGF0IGFsbG93cyBjaG9vc2luZyBi
ZXR3ZWVuIHB1dF9wYWdlKCkKPiA+PiAgIGFuZCBwdXRfdXNlcl9wYWdlKigpLgo+ID4+Cj4gPj4g
KiBQYXNzIGluIG9uZSBtb3JlIHBpZWNlIG9mIGluZm9ybWF0aW9uIHRvIGJpb19yZWxlYXNlX3Bh
Z2VzOiBhICJmcm9tX2d1cCIKPiA+PiAgIHBhcmFtZXRlci4gU2ltaWxhciB1c2UgYXMgYWJvdmUu
Cj4gPj4KPiA+PiAqIENoYW5nZSB0aGUgYmxvY2sgbGF5ZXIsIGFuZCBzZXZlcmFsIGZpbGUgc3lz
dGVtcywgdG8gdXNlCj4gPj4gICBwdXRfdXNlcl9wYWdlKigpLgo+ID4gCj4gPiBJIHRoaW5rIHdl
IGNhbiBkbyB0aGlzIGluIGEgc2ltcGxlIGFuZCBiZXR0ZXIgd2F5LiAgV2UgaGF2ZSA1IElURVJf
Kgo+ID4gdHlwZXMuICBPZiB0aG9zZSBJVEVSX0RJU0NBUkQgYXMgdGhlIG5hbWUgc3VnZ2VzdHMg
bmV2ZXIgdXNlcyBwYWdlcywgc28KPiA+IHdlIGNhbiBza2lwIGhhbmRsaW5nIGl0LiAgSVRFUl9Q
SVBFIGlzIHJlamVjdGVkINGWbiB0aGUgZGlyZWN0IEkvTyBwYXRoLAo+ID4gd2hpY2ggbGVhdmVz
IHVzIHdpdGggdGhyZWUuCj4gPiAKPiAKPiBIaSBDaHJpc3RvcGgsCj4gCj4gQXJlIHlvdSB3b3Jr
aW5nIG9uIGFueXRoaW5nIGxpa2UgdGhpcz8KCkkgd2FzIGhvcGluZyBJIGNvdWxkIHN0ZWVyIHlv
dSB0b3dhcmRzIGl0LiAgQnV0IGlmIHlvdSBkb24ndCB3YW50IHRvIGRvCml0IHlvdXJzZWxmIEkn
bGwgYWRkIGl0IHRvIG15IGV2ZXIgZ3Jvd2luZyB0b2RvIGxpc3QuCgo+IE9yIG9uIHRoZSBwdXRf
dXNlcl9idmVjKCkgaWRlYT8KCkkgaGF2ZSBhIHByb3RvdHlwZSBmcm9tIHR3byBtb250aCBhZ286
CgpodHRwOi8vZ2l0LmluZnJhZGVhZC5vcmcvdXNlcnMvaGNoL21pc2MuZ2l0L3Nob3J0bG9nL3Jl
ZnMvaGVhZHMvZ3VwLWJ2ZWMKCmJ1dCB0aGF0IG9ubHkgc3Vydml2ZWQgdGhlIG1vc3QgYmFzaWMg
dGVzdGluZywgc28gaXQnbGwgbmVlZCBtb3JlIHdvcmssCndoaWNoIEknbSBub3Qgc3VyZSB3aGVu
IEknbGwgZmluZCB0aW1lIGZvci4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
