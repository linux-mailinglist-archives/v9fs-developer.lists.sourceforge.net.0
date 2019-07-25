Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA21742A4
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Jul 2019 02:44:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqRru-0002FC-TY; Thu, 25 Jul 2019 00:44:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bob.liu@oracle.com>) id 1hqRrt-0002F0-GB
 for v9fs-developer@lists.sourceforge.net; Thu, 25 Jul 2019 00:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gv2SPbpkF9xScJE1PHpWHpgE3ifu6hFMD2cmVIyD7TY=; b=GZKJGZmGtE4C+T6q8QOZ3Qv4bq
 zDg850f6tDxCAwXy2SUemhrxTjOxO0DRwlmZoXW+bsU/0hZNdOSzepH6ulAqqNtmWLJZKqCNdX1Sh
 1lHCNaw6A2IoXiBqP6h05wT+3DUsw8bp6Am1HDWpL9mfPOMtDChy+/GP8pBIj9YShA+4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gv2SPbpkF9xScJE1PHpWHpgE3ifu6hFMD2cmVIyD7TY=; b=TngCOW0xBx/cr16D++qfdYciYr
 hoMS4NOzcZkjZUppci93pMdweyXxeG1BEHV3+S6Nmpp6hvALgmWNcluzshtrJgwhlCoKAyq6LzzCW
 n0GztbPkEgtOrdOApGJh55wzBFo/xxGdBhR9bJ/8uASQ2FfE0XYbyk1aMcik/2185oXc=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqRrq-00GvqD-OT
 for v9fs-developer@lists.sourceforge.net; Thu, 25 Jul 2019 00:44:25 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6P0dlXf171093;
 Thu, 25 Jul 2019 00:41:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=gv2SPbpkF9xScJE1PHpWHpgE3ifu6hFMD2cmVIyD7TY=;
 b=muZVds6swMHMAuFbMxKchNkOUd8CqTrPV0KBCMC49yrWg/LxnLuU6ow/RmgyiMUnnjmy
 MAiRa6Zm+jzf7B99ZPeMXmyGgQxIYQlCeWqFQqyGoNTjbspAoTiqbjfg4/VmNuRd7Vm5
 HrFVwz2k57PMYa/HPZcBBc0f5omPk+LrAWZPjNDUaWWol7Y67+yRcy8wbGU1Wbct1RLH
 zVzTyoIxGQlKet79OucxPmXfLkDZ0FkQP1v/RZBYzmhhy8PDfe/AB0YbSVtLklYjMvP9
 lz6P71WYbBjNCITeo6xlPXLd7l7LVGerjJLbDawimLUiySB/y4c3YF5VO7XLIrxNTkjP MA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2tx61c0gjv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 00:41:25 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6P0beDT189084;
 Thu, 25 Jul 2019 00:41:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2tx60yhed4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Jul 2019 00:41:24 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6P0fGBA002510;
 Thu, 25 Jul 2019 00:41:16 GMT
Received: from [192.168.1.14] (/180.165.87.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Jul 2019 17:41:15 -0700
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <8621066c-e242-c449-eb04-4f2ce6867140@oracle.com>
Date: Thu, 25 Jul 2019 08:41:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190724042518.14363-1-jhubbard@nvidia.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9328
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1907250003
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9328
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907250003
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hqRrq-00GvqD-OT
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

T24gNy8yNC8xOSAxMjoyNSBQTSwgam9obi5odWJiYXJkQGdtYWlsLmNvbSB3cm90ZToKPiBGcm9t
OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Cj4gCj4gSGksCj4gCj4gVGhpcyBp
cyBtb3N0bHkgSmVyb21lJ3Mgd29yaywgY29udmVydGluZyB0aGUgYmxvY2svYmlvIGFuZCByZWxh
dGVkIGFyZWFzCj4gdG8gY2FsbCBwdXRfdXNlcl9wYWdlKigpIGluc3RlYWQgb2YgcHV0X3BhZ2Uo
KS4gQmVjYXVzZSBJJ3ZlIGNoYW5nZWQKPiBKZXJvbWUncyBwYXRjaGVzLCBpbiBzb21lIGNhc2Vz
IHNpZ25pZmljYW50bHksIEknZCBsaWtlIHRvIGdldCBoaXMKPiBmZWVkYmFjayBiZWZvcmUgd2Ug
YWN0dWFsbHkgbGVhdmUgaGltIGxpc3RlZCBhcyB0aGUgYXV0aG9yIChoZSBtaWdodAo+IHdhbnQg
dG8gZGlzb3duIHNvbWUgb3IgYWxsIG9mIHRoZXNlKS4KPiAKCkNvdWxkIHlvdSBhZGQgc29tZSBi
YWNrZ3JvdW5kIHRvIHRoZSBjb21taXQgbG9nIGZvciBwZW9wbGUgZG9uJ3QgaGF2ZSB0aGUgY29u
dGV4dC4uCldoeSB0aGlzIGNvbnZlcnRpbmc/IFdoYXQncyB0aGUgbWFpbiBkaWZmZXJlbmNlcz8K
ClJlZ2FyZHMsIC1Cb2IKCj4gSSBhZGRlZCBhIG5ldyBwYXRjaCwgaW4gb3JkZXIgdG8gbWFrZSB0
aGlzIHdvcmsgd2l0aCBDaHJpc3RvcGggSGVsbHdpZydzCj4gcmVjZW50IG92ZXJoYXVsIHRvIGJp
b19yZWxlYXNlX3BhZ2VzKCk6ICJibG9jazogYmlvX3JlbGVhc2VfcGFnZXM6IHVzZQo+IGZsYWdz
IGFyZyBpbnN0ZWFkIG9mIGJvb2wiLgo+IAo+IEkndmUgc3RhcnRlZCB0aGUgc2VyaWVzIHdpdGgg
YSBwYXRjaCB0aGF0IEkndmUgcG9zdGVkIGluIGFub3RoZXIKPiBzZXJpZXMgKCJtbS9ndXA6IGFk
ZCBtYWtlX2RpcnR5IGFyZyB0byBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2NrKCkiWzFdKSwKPiBi
ZWNhdXNlIEknbSBub3Qgc3VyZSB3aGljaCBvZiB0aGVzZSB3aWxsIGdvIGluIGZpcnN0LCBhbmQg
dGhpcyBhbGxvd3MgZWFjaAo+IHRvIHN0YW5kIGFsb25lLgo+IAo+IFRlc3Rpbmc6IG5vdCBtdWNo
IGJleW9uZCBidWlsZCBhbmQgYm9vdCB0ZXN0aW5nIGhhcyBiZWVuIGRvbmUgeWV0LiBBbmQKPiBJ
J20gbm90IHNldCB1cCB0byBldmVuIGV4ZXJjaXNlIGFsbCBvZiBpdCAoZXNwZWNpYWxseSB0aGUg
SUIgcGFydHMpIGF0Cj4gcnVuIHRpbWUuCj4gCj4gQW55d2F5LCBjaGFuZ2VzIGhlcmUgYXJlOgo+
IAo+ICogU3RvcmUsIGluIHRoZSBpb3ZfaXRlciwgYSAiY2FtZSBmcm9tIGd1cCAoZ2V0X3VzZXJf
cGFnZXMpIiBwYXJhbWV0ZXIuCj4gICBUaGVuLCB1c2UgdGhlIG5ldyBpb3ZfaXRlcl9nZXRfcGFn
ZXNfdXNlX2d1cCgpIHRvIHJldHJpZXZlIGl0IHdoZW4KPiAgIGl0IGlzIHRpbWUgdG8gcmVsZWFz
ZSB0aGUgcGFnZXMuIFRoYXQgYWxsb3dzIGNob29zaW5nIGJldHdlZW4gcHV0X3BhZ2UoKQo+ICAg
YW5kIHB1dF91c2VyX3BhZ2UqKCkuCj4gCj4gKiBQYXNzIGluIG9uZSBtb3JlIHBpZWNlIG9mIGlu
Zm9ybWF0aW9uIHRvIGJpb19yZWxlYXNlX3BhZ2VzOiBhICJmcm9tX2d1cCIKPiAgIHBhcmFtZXRl
ci4gU2ltaWxhciB1c2UgYXMgYWJvdmUuCj4gCj4gKiBDaGFuZ2UgdGhlIGJsb2NrIGxheWVyLCBh
bmQgc2V2ZXJhbCBmaWxlIHN5c3RlbXMsIHRvIHVzZQo+ICAgcHV0X3VzZXJfcGFnZSooKS4KPiAK
PiBbMV0gaHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNB
X19sb3JlLmtlcm5lbC5vcmdfcl8yMDE5MDcyNDAxMjYwNi4yNTg0NC0yRDItMkRqaHViYmFyZC00
MG52aWRpYS5jb20mZD1Ed0lEYVEmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2
NWVhcElfSm5FJnI9MWt0VDBVMllTX0k4Wnoyby1NUzFZY0NBeldaNmhGR3R5VGd2Vk1HTTdnSSZt
PUZwRmh2MnJqYktDQVlHbU82SHk4V0pBb3R0cjFRel9tREtETE9iUTQwRlUmcz1xLV9tWDNkYUVy
MjJXYmRaTUVsY19aYkQ4TDlvR0xEN1UweExleUo2NjFZJmU9IAo+ICAgICBBbmQgcGxlYXNlIG5v
dGUgdGhlIGNvcnJlY3Rpb24gZW1haWwgdGhhdCBJIHBvc3RlZCBhcyBhIGZvbGxvdy11cCwKPiAg
ICAgaWYgeW91J3JlIGxvb2tpbmcgY2xvc2VseSBhdCB0aGF0IHBhdGNoLiA6KSBUaGUgZml4ZWQg
dmVyc2lvbiBpcwo+ICAgICBpbmNsdWRlZCBoZXJlLgo+IAo+IEpvaG4gSHViYmFyZCAoMyk6Cj4g
ICBtbS9ndXA6IGFkZCBtYWtlX2RpcnR5IGFyZyB0byBwdXRfdXNlcl9wYWdlc19kaXJ0eV9sb2Nr
KCkKPiAgIGJsb2NrOiBiaW9fcmVsZWFzZV9wYWdlczogdXNlIGZsYWdzIGFyZyBpbnN0ZWFkIG9m
IGJvb2wKPiAgIGZzL2NlcGg6IGZpeCBhIGJ1aWxkIHdhcm5pbmc6IHJldHVybmluZyBhIHZhbHVl
IGZyb20gdm9pZCBmdW5jdGlvbgo+IAo+IErDqXLDtG1lIEdsaXNzZSAoOSk6Cj4gICBpb3ZfaXRl
cjogYWRkIGhlbHBlciB0byB0ZXN0IGlmIGFuIGl0ZXIgd291bGQgdXNlIEdVUCB2Mgo+ICAgYmxv
Y2s6IGJpb19yZWxlYXNlX3BhZ2VzOiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFn
ZSooKQo+ICAgYmxvY2tfZGV2OiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFnZSoo
KQo+ICAgZnMvbmZzOiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFnZSooKQo+ICAg
dmhvc3Qtc2NzaTogY29udmVydCBwdXRfcGFnZSgpIHRvIHB1dF91c2VyX3BhZ2UqKCkKPiAgIGZz
L2NpZnM6IGNvbnZlcnQgcHV0X3BhZ2UoKSB0byBwdXRfdXNlcl9wYWdlKigpCj4gICBmcy9mdXNl
OiBjb252ZXJ0IHB1dF9wYWdlKCkgdG8gcHV0X3VzZXJfcGFnZSooKQo+ICAgZnMvY2VwaDogY29u
dmVydCBwdXRfcGFnZSgpIHRvIHB1dF91c2VyX3BhZ2UqKCkKPiAgIDlwL25ldDogY29udmVydCBw
dXRfcGFnZSgpIHRvIHB1dF91c2VyX3BhZ2UqKCkKPiAKPiAgYmxvY2svYmlvLmMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDgxICsrKysrKysrKysrKy0tLQo+ICBkcml2ZXJzL2lu
ZmluaWJhbmQvY29yZS91bWVtLmMgICAgICAgICAgICAgfCAgIDUgKy0KPiAgZHJpdmVycy9pbmZp
bmliYW5kL2h3L2hmaTEvdXNlcl9wYWdlcy5jICAgIHwgICA1ICstCj4gIGRyaXZlcnMvaW5maW5p
YmFuZC9ody9xaWIvcWliX3VzZXJfcGFnZXMuYyB8ICAgNSArLQo+ICBkcml2ZXJzL2luZmluaWJh
bmQvaHcvdXNuaWMvdXNuaWNfdWlvbS5jICAgfCAgIDUgKy0KPiAgZHJpdmVycy9pbmZpbmliYW5k
L3N3L3Npdy9zaXdfbWVtLmMgICAgICAgIHwgICA4ICstCj4gIGRyaXZlcnMvdmhvc3Qvc2NzaS5j
ICAgICAgICAgICAgICAgICAgICAgICB8ICAxMyArKy0KPiAgZnMvYmxvY2tfZGV2LmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDIyICsrKy0KPiAgZnMvY2VwaC9kZWJ1Z2ZzLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAyICstCj4gIGZzL2NlcGgvZmlsZS5jICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA2MiArKysrKysrKy0tLQo+ICBmcy9jaWZzL2NpZnNnbG9i
LmggICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDMgKwo+ICBmcy9jaWZzL2ZpbGUuYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjIgKysrLQo+ICBmcy9jaWZzL21pc2MuYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTkgKysrLQo+ICBmcy9kaXJlY3QtaW8uYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZnMvZnVzZS9kZXYuYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDIyICsrKy0KPiAgZnMvZnVzZS9maWxlLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDUzICsrKysrKystLS0KPiAgZnMvbmZzL2RpcmVjdC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEwICstCj4gIGluY2x1ZGUvbGludXgvYmlv
LmggICAgICAgICAgICAgICAgICAgICAgICB8ICAyMiArKystCj4gIGluY2x1ZGUvbGludXgvbW0u
aCAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArLQo+ICBpbmNsdWRlL2xpbnV4L3Vpby5o
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTEgKysKPiAgbW0vZ3VwLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgMTE1ICsrKysrKysrKy0tLS0tLS0tLS0tLQo+ICBuZXQv
OXAvdHJhbnNfY29tbW9uLmMgICAgICAgICAgICAgICAgICAgICAgfCAgMTQgKystCj4gIG5ldC85
cC90cmFuc19jb21tb24uaCAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArLQo+ICBuZXQvOXAv
dHJhbnNfdmlydGlvLmMgICAgICAgICAgICAgICAgICAgICAgfCAgMTggKysrLQo+ICAyNCBmaWxl
cyBjaGFuZ2VkLCAzNTcgaW5zZXJ0aW9ucygrKSwgMTcwIGRlbGV0aW9ucygtKQo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
