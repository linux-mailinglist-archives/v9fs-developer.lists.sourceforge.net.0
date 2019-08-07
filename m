Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D5D844A6
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Aug 2019 08:40:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hvFct-0001LV-95; Wed, 07 Aug 2019 06:40:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>) id 1hvFcr-0001LN-IJ
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Aug 2019 06:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jn0FnBY7ADCh0laBLX/xGqPiB9Jg8oG9YEaLS2KH1Js=; b=d34m8a9XKrYWhrriF+nlERohRa
 o6xxxGxiiTPl+4+av+eqCWV5snlmec/EtGzOYsc9ex3XPr7QfXbCTK/koNSEM544sE+yT8IX9r3Qg
 gawSUOD7kJFkNrox1MxnVwmhgytPSGJFs8BqwvIdsf0o9M/bsfXl9A8zqtKTgwHwYubQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jn0FnBY7ADCh0laBLX/xGqPiB9Jg8oG9YEaLS2KH1Js=; b=g43GYnmlLTe/dvyepp9Jvy+Ddv
 hj7aeJHQyzosrJLb6BV0hTWZwrpEDuC47TrSVVqf0o9idaMh86DZr02Ez6WKHBDrLH49Be6xB6c0f
 6n1Tj/QgAVJZzNZG5jeRQZRlJ2paWQ5QKUddrcuq5eIuVlZ61Wvyzq/aKJpf16xA5aG4=;
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvFcn-00DW8P-HH
 for v9fs-developer@lists.sourceforge.net; Wed, 07 Aug 2019 06:40:45 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d4a726c0000>; Tue, 06 Aug 2019 23:40:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 06 Aug 2019 23:40:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 06 Aug 2019 23:40:34 -0700
Received: from [10.2.165.207] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 7 Aug
 2019 06:40:34 +0000
To: Christoph Hellwig <hch@infradead.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724061750.GA19397@infradead.org>
 <c35aa2bf-c830-9e57-78ca-9ce6fb6cb53b@nvidia.com>
 <20190807063448.GA6002@infradead.org>
X-Nvconfidentiality: public
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <3ab1e69f-88c6-3e16-444d-cab78c3bf1d1@nvidia.com>
Date: Tue, 6 Aug 2019 23:38:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807063448.GA6002@infradead.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565160044; bh=jn0FnBY7ADCh0laBLX/xGqPiB9Jg8oG9YEaLS2KH1Js=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=cZhyddtfeWnuDzmY91G/o97CceVB5RM0qm7xIS+BT+DJS1yACOaMbPnxtDPonJo3O
 Ckk802AdQClg27dtVTwqZlP1rJ45uR/xJxU2tj1bAWtx6wGx8MnDwDr9/hAcMofdtY
 YSzbF7dvdBOxPO1CMgg0kHDyQnZ9XI/sZkIaiXVixuZIn5BzSqRh7aOyfPS3OIiva2
 EdoAoTR8kqTmNnuIpmqz0Mts9lp7nFil4TrfQHcFTrur14aYk9UOgpcZdRREzoyCup
 0KYEKb/ZJNSFduxPI76a4ilG78VxY7/mJHog1LdnWqMnq4OYf6DhFN3qt02E1MzswR
 TFH77+TyL//6w==
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hvFcn-00DW8P-HH
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
 Eric Van Hensbergen <ericvh@gmail.com>, john.hubbard@gmail.com,
 linux-block@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gOC82LzE5IDExOjM0IFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBNb24sIEF1
ZyAwNSwgMjAxOSBhdCAwMzo1NDozNVBNIC0wNzAwLCBKb2huIEh1YmJhcmQgd3JvdGU6Cj4+IE9u
IDcvMjMvMTkgMTE6MTcgUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgouLi4KPj4+IEkgdGhp
bmsgd2UgY2FuIGRvIHRoaXMgaW4gYSBzaW1wbGUgYW5kIGJldHRlciB3YXkuICBXZSBoYXZlIDUg
SVRFUl8qCj4+PiB0eXBlcy4gIE9mIHRob3NlIElURVJfRElTQ0FSRCBhcyB0aGUgbmFtZSBzdWdn
ZXN0cyBuZXZlciB1c2VzIHBhZ2VzLCBzbwo+Pj4gd2UgY2FuIHNraXAgaGFuZGxpbmcgaXQuICBJ
VEVSX1BJUEUgaXMgcmVqZWN0ZWQg0ZZuIHRoZSBkaXJlY3QgSS9PIHBhdGgsCj4+PiB3aGljaCBs
ZWF2ZXMgdXMgd2l0aCB0aHJlZS4KPj4+Cj4+Cj4+IEhpIENocmlzdG9waCwKPj4KPj4gQXJlIHlv
dSB3b3JraW5nIG9uIGFueXRoaW5nIGxpa2UgdGhpcz8KPiAKPiBJIHdhcyBob3BpbmcgSSBjb3Vs
ZCBzdGVlciB5b3UgdG93YXJkcyBpdC4gIEJ1dCBpZiB5b3UgZG9uJ3Qgd2FudCB0byBkbwo+IGl0
IHlvdXJzZWxmIEknbGwgYWRkIGl0IHRvIG15IGV2ZXIgZ3Jvd2luZyB0b2RvIGxpc3QuCj4gCgpT
dXJlLCBJJ20gdXAgZm9yIHRoaXMuIFRoZSBidmVjLXJlbGF0ZWQgaXRlbXMgYXJlIHRoZSBuZXh0
IGxvZ2ljYWwgcGFydApvZiB0aGUgZ3VwL2RtYSBjb252ZXJzaW9ucyB0byB3b3JrIG9uLCBhbmQg
SSBqdXN0IHdhbnRlZCB0byBhdm9pZCBzb2x2aW5nIHRoZQpzYW1lIHByb2JsZW0gaWYgeW91IHdl
cmUgYWxyZWFkeSBpbiB0aGUgY29kZS4KCgo+PiBPciBvbiB0aGUgcHV0X3VzZXJfYnZlYygpIGlk
ZWE/Cj4gCj4gSSBoYXZlIGEgcHJvdG90eXBlIGZyb20gdHdvIG1vbnRoIGFnbzoKPiAKPiBodHRw
Oi8vZ2l0LmluZnJhZGVhZC5vcmcvdXNlcnMvaGNoL21pc2MuZ2l0L3Nob3J0bG9nL3JlZnMvaGVh
ZHMvZ3VwLWJ2ZWMKPiAKPiBidXQgdGhhdCBvbmx5IHN1cnZpdmVkIHRoZSBtb3N0IGJhc2ljIHRl
c3RpbmcsIHNvIGl0J2xsIG5lZWQgbW9yZSB3b3JrLAo+IHdoaWNoIEknbSBub3Qgc3VyZSB3aGVu
IEknbGwgZmluZCB0aW1lIGZvci4KPiAKCkknbGwgdGFrZSBhIHBlZWssIGFuZCBwcm9iYWJseSBw
ZXN0ZXIgeW91IHdpdGggYSBmZXcgcXVlc3Rpb25zIGlmIEkgZ2V0CmNvbmZ1c2VkLiA6KQoKdGhh
bmtzLAotLSAKSm9obiBIdWJiYXJkCk5WSURJQQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
