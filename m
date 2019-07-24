Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ED0741F6
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Jul 2019 01:23:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqQbg-0007Pe-C5; Wed, 24 Jul 2019 23:23:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>) id 1hqQbf-0007PX-DF
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 23:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U/byz8o3kezigETW8hWUjg+JqkNm/y0Q4UHjAnDVaRI=; b=Xs6LS7uNAxaqejac+3TkjlYgCw
 ztyVtjrEn1y3jchgrlgsnT366ZaBnMWGRDk0V/djt43iOaL4MZpU6DconxhPkdPiAJSnGygXD4qzn
 UQEqMGBlva1k3tdLFVMfJZrfGk930SS/QTHFXJSWSmuiCpiCZ5adgtOF+pYZnB1Z735Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U/byz8o3kezigETW8hWUjg+JqkNm/y0Q4UHjAnDVaRI=; b=LVIaqShO9bqLgRt8+7UPxuS/i9
 3JvGzSOGGsbAZJkLCsEh8/Op9x9B0aOvZkaOt40eg5Zq9cJ/p8KAg6GyNjfCEqd8xIGH3tzlCG0lo
 osN1TrtORZi0vZm4muI9GkyZJbXDomlGBLW/Bhhrcvg0Jy3FUgkT/ZlnhMvnXC2rWOB8=;
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqQbd-00Eiky-7R
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 23:23:35 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d38e8730000>; Wed, 24 Jul 2019 16:23:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 24 Jul 2019 16:23:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 24 Jul 2019 16:23:23 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 24 Jul
 2019 23:23:22 +0000
To: Christoph Hellwig <hch@infradead.org>, <john.hubbard@gmail.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724061750.GA19397@infradead.org>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <17f12f3d-981e-a717-c8e5-bfbbfb7ec1a3@nvidia.com>
Date: Wed, 24 Jul 2019 16:23:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724061750.GA19397@infradead.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564010611; bh=U/byz8o3kezigETW8hWUjg+JqkNm/y0Q4UHjAnDVaRI=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=POKycPna3sFHaptSpPG8JFNhdv+KWPJt4Fqq7qra/U5uujHxVhga0mA2hyYe3oLWO
 rvMjdBQgQaYdhe3tYVq3xzWzC7PXLH9gVg6v6GfrdnHKhzPSXOdrUzDa4Sfy+FpWme
 AYx8XN4QHijtxUQThz9jDsFglp/BwmD6wmVyo2Ou4HoX36ySg8r0DnnWDfRMrkzmXC
 XvSXsG7L9llJHump4bjV4yoH02Li7EYgdYhEFhGR3d1oO3a9DGx7nb70VEc+guaDrP
 BAn4DIKE83X0lqImHCnmIIbgjVMdzz9Q4ePUhHR77cnRWD+JGehn4V8I2IYZgTvKbn
 0ENu9Hbk0xmXw==
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hqQbd-00Eiky-7R
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
 Eric Van Hensbergen <ericvh@gmail.com>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David
 S . Miller" <davem@davemloft.net>, linux-fsdevel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gNy8yMy8xOSAxMToxNyBQTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gVHVlLCBK
dWwgMjMsIDIwMTkgYXQgMDk6MjU6MDZQTSAtMDcwMCwgam9obi5odWJiYXJkQGdtYWlsLmNvbSB3
cm90ZToKPj4gKiBTdG9yZSwgaW4gdGhlIGlvdl9pdGVyLCBhICJjYW1lIGZyb20gZ3VwIChnZXRf
dXNlcl9wYWdlcykiIHBhcmFtZXRlci4KPj4gICBUaGVuLCB1c2UgdGhlIG5ldyBpb3ZfaXRlcl9n
ZXRfcGFnZXNfdXNlX2d1cCgpIHRvIHJldHJpZXZlIGl0IHdoZW4KPj4gICBpdCBpcyB0aW1lIHRv
IHJlbGVhc2UgdGhlIHBhZ2VzLiBUaGF0IGFsbG93cyBjaG9vc2luZyBiZXR3ZWVuIHB1dF9wYWdl
KCkKPj4gICBhbmQgcHV0X3VzZXJfcGFnZSooKS4KPj4KPj4gKiBQYXNzIGluIG9uZSBtb3JlIHBp
ZWNlIG9mIGluZm9ybWF0aW9uIHRvIGJpb19yZWxlYXNlX3BhZ2VzOiBhICJmcm9tX2d1cCIKPj4g
ICBwYXJhbWV0ZXIuIFNpbWlsYXIgdXNlIGFzIGFib3ZlLgo+Pgo+PiAqIENoYW5nZSB0aGUgYmxv
Y2sgbGF5ZXIsIGFuZCBzZXZlcmFsIGZpbGUgc3lzdGVtcywgdG8gdXNlCj4+ICAgcHV0X3VzZXJf
cGFnZSooKS4KPiAKPiBJIHRoaW5rIHdlIGNhbiBkbyB0aGlzIGluIGEgc2ltcGxlIGFuZCBiZXR0
ZXIgd2F5LiAgV2UgaGF2ZSA1IElURVJfKgo+IHR5cGVzLiAgT2YgdGhvc2UgSVRFUl9ESVNDQVJE
IGFzIHRoZSBuYW1lIHN1Z2dlc3RzIG5ldmVyIHVzZXMgcGFnZXMsIHNvCj4gd2UgY2FuIHNraXAg
aGFuZGxpbmcgaXQuICBJVEVSX1BJUEUgaXMgcmVqZWN0ZWQg0ZZuIHRoZSBkaXJlY3QgSS9PIHBh
dGgsCj4gd2hpY2ggbGVhdmVzIHVzIHdpdGggdGhyZWUuCj4gCj4gT3V0IG9mIHRob3NlIElURVJf
QlZFQyBuZWVkcyBhIHVzZXIgcGFnZSByZWZlcmVuY2UsIHNvIHdlIHdhbnQgdG8gY2FsbAoKICAg
ICAgICAgICAgICAgXiBJVEVSX0lPVkVDLCBJIGhvcGUuIE90aGVyd2lzZSBJJ20gaG9wZWxlc3Mg
bG9zdC4gOikKCj4gcHV0X3VzZXJfcGFnZSogb24gaXQuICBJVEVSX0JWRUMgYWx3YXlzIGFscmVh
ZHkgaGFzIHBhZ2UgcmVmZXJlbmNlLAo+IHdoaWNoIG1lYW5zIGluIHRoZSBibG9jayBkaXJlY3Qg
SS9PIHBhdGggcGF0aCB3ZSBhbHJlYWQgZG9uJ3QgdGFrZQo+IGEgcGFnZSByZWZlcmVuY2UuICBX
ZSBzaG91bGQgZXh0ZW50IHRoYXQgaGFuZGxpbmcgdG8gYWxsIG90aGVyIGNhbGxzCj4gb2YgaW92
X2l0ZXJfZ2V0X3BhZ2VzIC8gaW92X2l0ZXJfZ2V0X3BhZ2VzX2FsbG9jLiAgSSB0aGluayB3ZSBz
aG91bGQKPiBqdXN0IHJlamVjdCBJVEVSX0tWRUMgZm9yIGRpcmVjdCBJL08gYXMgd2VsbCBhcyB3
ZSBoYXZlIG5vIHVzZXJzIGFuZAo+IGl0IGlzIHJhdGhlciBwb2ludGxlc3MuICBBbHRlcm5hdGl2
ZWx5IGlmIHdlIHNlZSBhIHVzZSBmb3IgaXQgdGhlCj4gY2FsbGVycyBzaG91bGQgYWx3YXlzIGhh
dmUgYSBsaWZlIHBhZ2UgcmVmZXJlbmNlIGFueXdheSAob3IgbWlnaHQKPiBiZSBvbiBrbWFsbG9j
IG1lbW9yeSksIHNvIHdlIHJlYWxseSBzaG91bGQgbm90IHRha2UgYSByZWZlcmVuY2UgZWl0aGVy
Lgo+IAo+IEluIG90aGVyIHdvcmRzOiAgdGhlIG9ubHkgdGltZSB3ZSBzaG91bGQgZXZlciBoYXZl
IHRvIHB1dCBhIHBhZ2UgaW4KPiB0aGlzIHBhdGNoIGlzIHdoZW4gdGhleSBhcmUgdXNlciBwYWdl
cy4gIFdlJ2xsIG5lZWQgdG8gY2xlYW4gdXAKPiB2YXJpb3VzIGJpdHMgb2YgY29kZSBmb3IgdGhh
dCwgYnV0IHRoYXQgY2FuIGJlIGRvbmUgZ3JhZHVhbGx5IGJlZm9yZQo+IGV2ZW4gZ2V0dGluZyB0
byB0aGUgYWN0dWFsIHB1dF91c2VyX3BhZ2VzIGNvbnZlcnNpb24uCj4gCgpTb3VuZHMgZ3JlYXQu
IEknbSBwYXJ0IHdheSBpbnRvIGl0IGFuZCBpdCBkb2Vzbid0IGxvb2sgdG9vIGJhZC4gVGhlIG1h
aW4KcXVlc3Rpb24gaXMgd2hlcmUgdG8gc2NhdHRlciB2YXJpb3VzIGNoZWNrcyBhbmQgYXNzZXJ0
aW9ucywgdG8ga2VlcAp0aGUga3ZlY3Mgb3V0IG9mIGRpcmVjdCBJLzAuIE9yIGF0IGxlYXN0IGtl
ZXAgdGhlIGd1cHMgYXdheSBmcm9tIApkaXJlY3QgSS8wLgoKCnRoYW5rcywKLS0gCkpvaG4gSHVi
YmFyZApOVklESUEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
