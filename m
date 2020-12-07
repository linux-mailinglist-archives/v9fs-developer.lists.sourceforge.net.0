Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 933DD2D118F
	for <lists+v9fs-developer@lfdr.de>; Mon,  7 Dec 2020 14:14:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kmGLt-0006pJ-LW; Mon, 07 Dec 2020 13:14:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cgxu519@mykernel.net>) id 1kmGLq-0006p7-VN
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 13:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m1EXW9UrNenJ4Drup8QUGkjJFS4dJg1NixP1O1C1HGU=; b=b1UopFyuLaA7VJp6T2cx/8BxOs
 IzQqQNOgojL9oFYFjhQ9TYBZXYjU8bUIVMcpCgdYsOHALSJRbyKGwFJXVWX55qN2B5kdCu6nxqxNQ
 TT0sY0U2vtkPNeZW/T3MmVCh4AvdSG3VGisEk225X5P7Pi4DwS0bTd1fGpidjOLldKrQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:Reply-To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m1EXW9UrNenJ4Drup8QUGkjJFS4dJg1NixP1O1C1HGU=; b=Y0btVqJ5bEfSGNPa4+2prVn1N+
 A8CIsHH/1GfqaCYGA5DbtVAsAFIbS/uo57cfeUDgN3igj8aVGz3Wf5KxFIgw3MyDECHau607L9gBK
 fje2pIp37wcrVNeN2hijSWavYzOBIQDb0OLP6o8lRnUrF5Fw7zsNAB+xZRpX9qxbvx9Q=;
Received: from [163.53.93.251] (helo=sender2-pp-o92.zoho.com.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kmGLd-0020Zs-JC
 for v9fs-developer@lists.sourceforge.net; Mon, 07 Dec 2020 13:14:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1607346814; cv=none; d=zoho.com.cn; s=zohoarc; 
 b=EIPjGMUQItKAOjOMk6h5MN62nMJSt2Rj0Bc42jFqzcyRtmnsXXvk8hIqF4NNmJ7w5skB/l9RjvDSUFrBcDlXpv0JZx7Ywozhm66fbQyl8MCP/Qx/gRhZQN9Q8s+jv2gG1YYgq7hpwEoAfrgmhrQE8WJHrd5AOBc0zf5Q9PXkPPA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn;
 s=zohoarc; t=1607346814;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:References:Subject:To;
 bh=m1EXW9UrNenJ4Drup8QUGkjJFS4dJg1NixP1O1C1HGU=; 
 b=ihF8Uqu+wKoeIggK9To4iz6RgFX1t4n0YOk2icmDotGioXAGV2mO0qVRMhCpmLhDHGNaTXW+Xr3T+MfYctkyi6zyogBnKesdOEx1m4t7CWjcRZpkzmVlnDXFP7AcJ+f3zdwUhdY5GrXjoMMVedkpf6ln1PqsFjBKLFWhXvrHdDg=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
 dkim=pass  header.i=mykernel.net;
 spf=pass  smtp.mailfrom=cgxu519@mykernel.net;
 dmarc=pass header.from=<cgxu519@mykernel.net>
 header.from=<cgxu519@mykernel.net>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1607346814; 
 s=zohomail; d=mykernel.net; i=cgxu519@mykernel.net;
 h=Date:From:Reply-To:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
 bh=m1EXW9UrNenJ4Drup8QUGkjJFS4dJg1NixP1O1C1HGU=;
 b=VcZxE0Js8r+IaCwt/2qgxqNYtbB3qZIsCySg+PB2exioCrQk7NrBlD+B0APiFvOM
 D6JdhltnbIXAk3YUdeW8eiStMEH79Sl68kJTAKXKxxFkaIZ43E5mZZBwG8iuwkah/Tj
 pxvpeT51S2YrX75fXlwIuXM9Fr2NRGsHMsqx7qGY=
Received: from mail.baihui.com by mx.zoho.com.cn
 with SMTP id 1607346811183256.91092767797534;
 Mon, 7 Dec 2020 21:13:31 +0800 (CST)
Date: Mon, 07 Dec 2020 21:13:31 +0800
From: Chengguang Xu <cgxu519@mykernel.net>
To: "Dominique Martinet" <asmadeus@codewreck.org>
Message-ID: <1763d55f12b.11abdd4431975.7848752990749710617@mykernel.net>
In-Reply-To: <20201207112410.GA26628@nautica>
References: <20201205130904.518104-1-cgxu519@mykernel.net>
 <20201206091618.GA22629@nautica> <20201206205318.GA25257@nautica>
 <1763bcb5b8e.da1e98e51195.9022463261101254548@mykernel.net>
 <20201207112410.GA26628@nautica>
MIME-Version: 1.0
Importance: Medium
User-Agent: ZohoCN Mail
X-Mailer: ZohoCN Mail
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kmGLd-0020Zs-JC
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: create writeback fid on shared
 mmap
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
Reply-To: cgxu519@mykernel.net
Cc: ericvh <ericvh@gmail.com>, lucho <lucho@ionkov.net>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 v9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IC0tLS0g5ZyoIOaYn+acn+S4gCwgMjAyMC0xMi0wNyAxOToyNDoxMCBEb21pbmlxdWUgTWFydGlu
ZXQgPGFzbWFkZXVzQGNvZGV3cmVjay5vcmc+IOaSsOWGmSAtLS0tCiA+IENoZW5nZ3VhbmcgWHUg
d3JvdGUgb24gTW9uLCBEZWMgMDcsIDIwMjA6CiA+ID4gID4gLCBWTV9NQVlXUklURSBpcyBzZXQg
YW55dGltZSB3ZSBoYXZlIGEgc2hhcmVkIG1hcCB3aGVyZSBmaWxlIGhhcwogPiA+ICA+IGJlZW4g
b3BlbmVkIHJlYWQtd3JpdGUsIHdoaWNoIHNlZW1zIHRvIGJlIHdoYXQgeW91IHdhbnQgd2l0aCBy
ZWdhcmRzIHRvCiA+ID4gID4gcHJvdGVjdGluZyBmcm9tIG1wcm90ZWN0IGNhbGxzLgogPiA+ICA+
IAogPiA+ICA+IEhvdyBhYm91dCBzaW1wbHkgY2hhbmdpbmcgY2hlY2sgZnJvbSBXUklURSB0byBN
QVlXUklURT8KID4gPiAKID4gPiBJdCB3b3VsZCBiZSBmaW5lIGFuZCBiYXNlZCBvbiB0aGUgY29k
ZSBpbiBkb19tbWFwKCksIGl0ICBzZWVtcyB3ZSBldmVuIGRvbid0CiA+ID4gbmVlZCBleHRyYSBj
aGVjayBoZXJlLiAgVGhlIGNvbmRpdGlvbiAodm1hLT52bV9mbGFncyAmIFZNX1NIQVJFRCkgd2ls
bCBiZSBlbm91Z2guCiA+ID4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8KID4gCiA+IFZNX01BWVdS
SVRFIGlzIHVuc2V0IGlmIHRoZSBmaWxlIGhhc24ndCBiZWVuIG9wZW4gZm9yIHdyaXRpbmcgKGlu
IHdoaWNoCiA+IGNhc2UgdGhlIG1hcHBpbmcgY2FuJ3QgYmUgbXByb3RlY3QoKWVkIHRvIHdyaXRh
YmxlIG1hcCksIHNvIGNoZWNraW5nIGl0CiA+IGlzIGEgYml0IG1vcmUgZWZmaWNpZW50LgogPiAK
ID4gQW55d2F5IEknZCBsaWtlIHRvIG9ic29sZXRlIHRoZSB3cml0ZWJhY2sgZmlkIHVzZXMgbm93
IHRoYXQgZmlkcyBoYXZlIGEKID4gcmVmY291bnQgKHRoaXMgdXNlY2FzZSBjYW4gYmUgYSBzaW1w
bGUgcmVmY291bnQgaW5jcmVhc2UpLCBpbiB3aGljaCBjYXNlCiA+IGVmZmljaWVuY3kgaXMgbGVz
cyBvZiBhIHByb2JsZW0sIGJ1dCB3ZSdyZSBub3QgdGhlcmUgeWV0Li4uCiA+IAogPiBQbGVhc2Ug
cmVzZW5kIHdpdGggTUFZV1JJVEUgaWYgeW91IHdhbnQgYXV0aG9yc2hpcCBhbmQgSSdsbCB0cnkg
dG8gdGFrZQogPiBzb21lIHRpbWUgdG8gdGVzdCBpbmNsLiB0aGUgbXByb3RlY3QgdXNlY2FzZS4K
ID4gCgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIEknbGwgc2VuZCByZXZpc2VkIHZlcnNpb24gbGF0
ZXIuCgpUaGFua3MsCkNoZW5nZ3VhbmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
