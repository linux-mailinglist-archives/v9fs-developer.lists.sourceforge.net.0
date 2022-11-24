Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C767E63777C
	for <lists+v9fs-developer@lfdr.de>; Thu, 24 Nov 2022 12:19:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oyAGn-0001Cb-81;
	Thu, 24 Nov 2022 11:19:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wanghai38@huawei.com>) id 1oyAGk-0001CU-MH
 for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 11:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9mpB1lTwSyWwwB4RMSbmpIj/5Qu0bIUhzVXDqN+mVME=; b=eApHxf90lb0BNxFBTd5/M8K+P7
 Dh4FRdOC90VL/sc8LMNykTliLp5/ZP3aQXKrx51YFr9MG6htmjqGMJ3LRzwUpKHOdLwFN4VbIY78I
 ipOYEqE1GcxyBNvA5R/KpKrWSDvLunlpII5QPMIa0XqW0jVmyY9ftDZUAC0aRCv25lNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9mpB1lTwSyWwwB4RMSbmpIj/5Qu0bIUhzVXDqN+mVME=; b=CNdJ2pHCL1r/h98v2adikXOPAw
 PLwhBKHK0Un3MBSg3C61sh/R8M1GVR+KDzQ0cKZkR2Ynyaq2ZEuJMqKyLb61fnZ3NRQgLb0q3DYnI
 PHD1YsX0bNwxB8yFGWR1IJusRr31O9hK8EE2IjNZYe31w8hs2848mWeIDg1HsrbPTzqw=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oyAGf-0004pU-7L for v9fs-developer@lists.sourceforge.net;
 Thu, 24 Nov 2022 11:19:49 +0000
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NHwQf3D89zqSgZ;
 Thu, 24 Nov 2022 19:15:38 +0800 (CST)
Received: from kwepemm600001.china.huawei.com (7.193.23.3) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 19:19:34 +0800
Received: from [10.174.176.245] (10.174.176.245) by
 kwepemm600001.china.huawei.com (7.193.23.3) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 19:19:33 +0800
Message-ID: <4d464258-de80-7d9c-bb8d-363d743396e7@huawei.com>
Date: Thu, 24 Nov 2022 19:19:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: <asmadeus@codewreck.org>
References: <20221124081005.66579-1-wanghai38@huawei.com>
 <Y382Spkkzt+i86e8@codewreck.org>
In-Reply-To: <Y382Spkkzt+i86e8@codewreck.org>
X-Originating-IP: [10.174.176.245]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600001.china.huawei.com (7.193.23.3)
X-CFilter-Loop: Reflected
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  在 2022/11/24 17:15, asmadeus@codewreck.org 写道: > Wang
    Hai wrote on Thu, Nov 24, 2022 at 04:10:05PM +0800: >> Both p9_fd_create_tcp()
    and p9_fd_create_unix() will call >> p9_socket_open(). If the [...] 
 
 Content analysis details:   (-4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [45.249.212.187 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oyAGf-0004pU-7L
Subject: Re: [V9fs-developer] [PATCH net] net/9p: Fix a potential socket
 leak in p9_socket_open
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
From: "wanghai \(M\) via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "wanghai \(M\)" <wanghai38@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 viro@zeniv.linux.org.uk, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CuWcqCAyMDIyLzExLzI0IDE3OjE1LCBhc21hZGV1c0Bjb2Rld3JlY2sub3JnIOWGmemBkzoKPiBX
YW5nIEhhaSB3cm90ZSBvbiBUaHUsIE5vdiAyNCwgMjAyMiBhdCAwNDoxMDowNVBNICswODAwOgo+
PiBCb3RoIHA5X2ZkX2NyZWF0ZV90Y3AoKSBhbmQgcDlfZmRfY3JlYXRlX3VuaXgoKSB3aWxsIGNh
bGwKPj4gcDlfc29ja2V0X29wZW4oKS4gSWYgdGhlIGNyZWF0aW9uIG9mIHA5X3RyYW5zX2ZkIGZh
aWxzLAo+PiBwOV9mZF9jcmVhdGVfdGNwKCkgYW5kIHA5X2ZkX2NyZWF0ZV91bml4KCkgd2lsbCBy
ZXR1cm4gYW4KPj4gZXJyb3IgZGlyZWN0bHkgaW5zdGVhZCBvZiByZWxlYXNpbmcgdGhlIGNzY29r
ZXQsIHdoaWNoIHdpbGwKPiAodHlwbywgc29ja2V0IG9yIGNzb2NrZXQgLS0gSSdsbCBmaXggdGhp
cyBvbiBhcHBseWluZykKSGksIERvbWluaXF1ZS4KVGhhbmtzIGZvciByZXZpZXdpbmcuCgpIZXJl
IGlzIGEgdHlwbywgaXQgc2hvdWxkIGJlIGNzb2NrZXQuCj4+IHJlc3VsdCBpbiBhIHNvY2tldCBs
ZWFrLgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgc29ja19yZWxlYXNlKCkgdG8gZml4IHRoZSBsZWFr
IGlzc3VlLgo+IFRoYW5rcywgaXQgbG9va3MgZ29vZCB0byBtZS4KPiBBIGJpdCBjb25mdXNpbmcg
dGhhdCBzb2NrX2FsbG9jX2ZpbGVzKCkgY2FsbHMgc29ja19yZWxlYXNlKCkgaXRzZWxmIG9uCj4g
ZmFpbHVyZSwgYnV0IHRoYXQgbWVhbnMgdGhpcyBvbmUncyBzYWZlIGF0IGxlYXN0Li4uClllcywg
dGhpcyBtZWNoYW5pc20gd2FzIGludHJvZHVjZWQgYnkgY29tbWl0IDhlMTYxMWUyMzU3OSAoIm1h
a2UgCnNvY2tfYWxsb2NfZmlsZSgpIGRvIHNvY2tfcmVsZWFzZSgpIG9uIGZhaWx1cmVzIikKPgo+
PiBGaXhlczogNmIxODY2MmUyMzlhICgiOXAgY29ubmVjdCBmaXhlcyIpCj4gKHRoZSBsZWFrIHdh
cyBwcmVzZW50IGJlZm9yZSB0aGF0IGNvbW1pdCBzbyBJIGd1ZXNzIHRoYXQncyBub3QgcmVhbGx5
Cj4gY29ycmVjdCAtLSBidXQgaXQgbWlnaHQgaGVscCBmaWd1cmUgb3V0IHVwIHRvIHdoaWNoIHBv
aW50IHN0YWJsZSBmb2xrcwo+IHdpbGwgYmUgYWJsZSB0byBiYWNrcG9ydCBzbyBJIGd1ZXNzIGl0
J3MgdXNlZnVsIGVpdGhlciB3YXkpClllcywgdGhlcmUgd2FzIGFscmVhZHkgYSBsZWFrIGJlZm9y
ZSB0aGlzIHBhdGNoLCBhbmQgdGhpcyBwYXRjaCBhbHNvIAppbnRyb2R1Y2VzIGEgbGVhawoKLS0g
CldhbmcgSGFpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
