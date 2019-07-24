Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7652772828
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 08:18:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqAbH-0004oP-VT; Wed, 24 Jul 2019 06:18:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+1e4efd27347a199fee4d+5813+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1hqAbG-0004oI-C0
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 06:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Xa50e3c+n/XgLreEXAZzM1/Dusmqf3jal/tdBSMEUY=; b=UbNu3L42w9IGMjOtKnmj61kKZp
 kf+0ws+dmRWQmVlgHDntsIiVqynwYM53KDVIXrDJ3xZ/hT1oxJwLSdYTO93fS/+7zNZ2qYNU2iVm2
 YwjptE0Bu2nUrMN0/z3ijbMkkeN3/vgcwHlxJbFjGMhne00uqWr9ijZWvA+zPde2i/rk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Xa50e3c+n/XgLreEXAZzM1/Dusmqf3jal/tdBSMEUY=; b=I3oMnGHU0MLodqKUtjy5Rvt8aG
 pYl/4FsBMekGtLT/CQsd/zs0baaz/2r8FSu57N83TobVWGUnWfUFimA5kADJDjE3D+DLAmryBm5Mq
 DdpELuLUyy5qbQDld4VXXa44VZFauqqPwKDSCvX6uYB11h9u5Yc2BwyQgVVqF8+ONMh0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqAbE-00DIOT-JH
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 06:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Xa50e3c+n/XgLreEXAZzM1/Dusmqf3jal/tdBSMEUY=; b=gGQOCJFzwPHRaT0Y5VpwBtWJoQ
 7N90/JQMzvZNdlZpfiJ/+4M5wIFkAFW6SLRu80CqjgQtsuC25Bn72Ra55U98FUrqDgFJii1g2Pk+v
 XPvWZXVP7/4TvQIWdHMJJsTBcEyaiNbtoPg+JOyeFN2/iHN+j8DiH//YTyjVYst2eZdJNW8GDmmaH
 1tpuC3lNNf/w0GceJkPRPaBB6JdiZZSZVJOlr+inma1SfS2sXWO/g3eKnofUKFN7B7pQL3769+3TW
 jCOEK61cTU+A0p4axGitNuC4cMeg/ZDpW3Ry+2Ff0HYkYs0+KxmpPcvICLo1Gula2Bgy/8Zw4ackm
 7GUAhyFw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hqAb0-0007QP-TP; Wed, 24 Jul 2019 06:17:50 +0000
Date: Tue, 23 Jul 2019 23:17:50 -0700
From: Christoph Hellwig <hch@infradead.org>
To: john.hubbard@gmail.com
Message-ID: <20190724061750.GA19397@infradead.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724042518.14363-1-jhubbard@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqAbE-00DIOT-JH
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MjU6MDZQTSAtMDcwMCwgam9obi5odWJiYXJkQGdt
YWlsLmNvbSB3cm90ZToKPiAqIFN0b3JlLCBpbiB0aGUgaW92X2l0ZXIsIGEgImNhbWUgZnJvbSBn
dXAgKGdldF91c2VyX3BhZ2VzKSIgcGFyYW1ldGVyLgo+ICAgVGhlbiwgdXNlIHRoZSBuZXcgaW92
X2l0ZXJfZ2V0X3BhZ2VzX3VzZV9ndXAoKSB0byByZXRyaWV2ZSBpdCB3aGVuCj4gICBpdCBpcyB0
aW1lIHRvIHJlbGVhc2UgdGhlIHBhZ2VzLiBUaGF0IGFsbG93cyBjaG9vc2luZyBiZXR3ZWVuIHB1
dF9wYWdlKCkKPiAgIGFuZCBwdXRfdXNlcl9wYWdlKigpLgo+IAo+ICogUGFzcyBpbiBvbmUgbW9y
ZSBwaWVjZSBvZiBpbmZvcm1hdGlvbiB0byBiaW9fcmVsZWFzZV9wYWdlczogYSAiZnJvbV9ndXAi
Cj4gICBwYXJhbWV0ZXIuIFNpbWlsYXIgdXNlIGFzIGFib3ZlLgo+IAo+ICogQ2hhbmdlIHRoZSBi
bG9jayBsYXllciwgYW5kIHNldmVyYWwgZmlsZSBzeXN0ZW1zLCB0byB1c2UKPiAgIHB1dF91c2Vy
X3BhZ2UqKCkuCgpJIHRoaW5rIHdlIGNhbiBkbyB0aGlzIGluIGEgc2ltcGxlIGFuZCBiZXR0ZXIg
d2F5LiAgV2UgaGF2ZSA1IElURVJfKgp0eXBlcy4gIE9mIHRob3NlIElURVJfRElTQ0FSRCBhcyB0
aGUgbmFtZSBzdWdnZXN0cyBuZXZlciB1c2VzIHBhZ2VzLCBzbwp3ZSBjYW4gc2tpcCBoYW5kbGlu
ZyBpdC4gIElURVJfUElQRSBpcyByZWplY3RlZCDRlm4gdGhlIGRpcmVjdCBJL08gcGF0aCwKd2hp
Y2ggbGVhdmVzIHVzIHdpdGggdGhyZWUuCgpPdXQgb2YgdGhvc2UgSVRFUl9CVkVDIG5lZWRzIGEg
dXNlciBwYWdlIHJlZmVyZW5jZSwgc28gd2Ugd2FudCB0byBjYWxsCnB1dF91c2VyX3BhZ2UqIG9u
IGl0LiAgSVRFUl9CVkVDIGFsd2F5cyBhbHJlYWR5IGhhcyBwYWdlIHJlZmVyZW5jZSwKd2hpY2gg
bWVhbnMgaW4gdGhlIGJsb2NrIGRpcmVjdCBJL08gcGF0aCBwYXRoIHdlIGFscmVhZCBkb24ndCB0
YWtlCmEgcGFnZSByZWZlcmVuY2UuICBXZSBzaG91bGQgZXh0ZW50IHRoYXQgaGFuZGxpbmcgdG8g
YWxsIG90aGVyIGNhbGxzCm9mIGlvdl9pdGVyX2dldF9wYWdlcyAvIGlvdl9pdGVyX2dldF9wYWdl
c19hbGxvYy4gIEkgdGhpbmsgd2Ugc2hvdWxkCmp1c3QgcmVqZWN0IElURVJfS1ZFQyBmb3IgZGly
ZWN0IEkvTyBhcyB3ZWxsIGFzIHdlIGhhdmUgbm8gdXNlcnMgYW5kCml0IGlzIHJhdGhlciBwb2lu
dGxlc3MuICBBbHRlcm5hdGl2ZWx5IGlmIHdlIHNlZSBhIHVzZSBmb3IgaXQgdGhlCmNhbGxlcnMg
c2hvdWxkIGFsd2F5cyBoYXZlIGEgbGlmZSBwYWdlIHJlZmVyZW5jZSBhbnl3YXkgKG9yIG1pZ2h0
CmJlIG9uIGttYWxsb2MgbWVtb3J5KSwgc28gd2UgcmVhbGx5IHNob3VsZCBub3QgdGFrZSBhIHJl
ZmVyZW5jZSBlaXRoZXIuCgpJbiBvdGhlciB3b3JkczogIHRoZSBvbmx5IHRpbWUgd2Ugc2hvdWxk
IGV2ZXIgaGF2ZSB0byBwdXQgYSBwYWdlIGluCnRoaXMgcGF0Y2ggaXMgd2hlbiB0aGV5IGFyZSB1
c2VyIHBhZ2VzLiAgV2UnbGwgbmVlZCB0byBjbGVhbiB1cAp2YXJpb3VzIGJpdHMgb2YgY29kZSBm
b3IgdGhhdCwgYnV0IHRoYXQgY2FuIGJlIGRvbmUgZ3JhZHVhbGx5IGJlZm9yZQpldmVuIGdldHRp
bmcgdG8gdGhlIGFjdHVhbCBwdXRfdXNlcl9wYWdlcyBjb252ZXJzaW9uLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
