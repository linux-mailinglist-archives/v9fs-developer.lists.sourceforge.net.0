Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE72443A0A
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 00:52:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mi3Zn-0005sy-KH; Tue, 02 Nov 2021 23:52:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <thomas@t-8ch.de>) id 1mi3Zm-0005sp-LD
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 23:52:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EoDfytdV+LSXDNnXqYAA0Tk6wiOd883CujH+OC5GBas=; b=YzE27b8rWgBOAd+DUi2xu/7+nc
 SfkLCYldrSAsX2senUaSyOnvyZpfbLocneGJZwIQ6m1CF4S/liGhGjjPswwg+Ki94f6KY1/hoBEol
 kwAagkCjbb7Vs1TxNHLiN0qNrKMnL+v2cCS5qnci/LcP4bBr/q9yA7MRxloojJjVrbpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EoDfytdV+LSXDNnXqYAA0Tk6wiOd883CujH+OC5GBas=; b=iHA4TvmPUHiM1qRgA92blCbEg/
 CcEWl6iL4b8VqtvgW6KCxgv7ulzgx4QifDcfgVaz4VZM8vKcY7W8QqvQAWNQFYo0fjgwHaCv57ZZi
 pTI+ZgJSKOHzbaLB8ISvvsfnOT7T7oXAKRP0h0uBAaL0PfS1IzEipvLQ/CPr+Z6wKNAA=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi3Zh-00FbLf-Jy
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 23:52:21 +0000
Date: Tue, 2 Nov 2021 23:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=t-8ch.de; s=mail;
 t=1635896007; bh=EoDfytdV+LSXDNnXqYAA0Tk6wiOd883CujH+OC5GBas=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=IquYBEBhTXBPDy7frCaGYIJqGtKLZuQ+tsWQKdUr1a2M98cA6+yiEWUhGjTILhtwG
 fOP8s56lQBrnbyH18VNfzjGTElO3YRWvBxaminNvTFmAo70QuiUpRz2o3Egeuexx16
 zX+WtIhN85oWC/FhoLy5BsJ9tIliaBHOrTtT6D7U=
From: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh_?= <thomas@t-8ch.de>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <778dfd93-ace5-4cab-9a08-21d279f18c1f@t-8ch.de>
In-Reply-To: <YYHHHy0qJGlpGEaQ@codewreck.org>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
 <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
 <YYEmOcEf5fjDyM67@codewreck.org>
 <ddf6b6c9-1d9b-4378-b2ee-b7ac4a622010@t-8ch.de>
 <YYFSBKXNPyIIFo7J@codewreck.org>
 <3e8fcaff-6a2e-4546-87c9-a58146e02e88@t-8ch.de>
 <YYHHHy0qJGlpGEaQ@codewreck.org>
MIME-Version: 1.0
X-Correlation-ID: <778dfd93-ace5-4cab-9a08-21d279f18c1f@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Nov 3, 2021 00:18:13 Dominique Martinet <asmadeus@codewreck.org>:
    > Thomas Weißschuh wrote on Tue, Nov 02, 2021 at 04:32:21PM +0100: >>> with
    9p/9pnet loaded, >>> running "mount -t 9p -o trans=virtio tmp /mnt" >>> request_module("9p-%s",
    "virtio") returns -2 (ENOEN [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: t-8ch.de]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mi3Zh-00FbLf-Jy
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ck5vdiAzLCAyMDIxIDAwOjE4OjEzIERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdy
ZWNrLm9yZz46Cgo+IFRob21hcyBXZWnDn3NjaHVoIHdyb3RlIG9uIFR1ZSwgTm92IDAyLCAyMDIx
IGF0IDA0OjMyOjIxUE0gKzAxMDA6Cj4+PiB3aXRoIDlwLzlwbmV0IGxvYWRlZCwKPj4+IHJ1bm5p
bmcgIm1vdW50IC10IDlwIC1vIHRyYW5zPXZpcnRpbyB0bXAgL21udCIKPj4+IHJlcXVlc3RfbW9k
dWxlKCI5cC0lcyIsICJ2aXJ0aW8iKSByZXR1cm5zIC0yIChFTk9FTlQpCj4+Cj4+IENhbiB5b3Ug
cmV0cnkgd2l0aG91dCA5cC85cG5ldCBsb2FkZWQgYW5kIHNlZSBpZiB0aGV5IGFyZSBsb2FkZWQg
YnkgdGhlIG1vdW50Cj4+IHByb2Nlc3M/Cj4+IFRoZSBzYW1lIGF1dG9sb2FkaW5nIGZ1bmN0aW9u
YWxpdHkgZXhpc3RzIGZvciBmaWxlc3lzdGVtcyB1c2luZwo+PiByZXF1ZXN0X21vZHVsZSgiZnMt
JXMiKSBpbiBmcy9maWxlc3lzdGVtcy5jCj4+IElmIHRoYXQgYWxzbyBkb2Vzbid0IHdvcmsgaXQg
d291bGQgaW5kaWNhdGUgYW4gaXNzdWUgd2l0aCB0aGUga2VybmVsIHNldHVwIGluIGdlbmVyYWwu
Cj4KPiBSaWdodCwgdGhhdCBhbHNvIGRpZG4ndCB3b3JrLCB3aGljaCBtYXRjaGVzIG1vZHByb2Jl
IG5vdCBiZWluZyBjYWxsZWQKPiBjb3JyZWN0bHkKPgo+Cj4+PiBMb29raW5nIGF0IHRoZSBjb2Rl
IGl0IHNob3VsZCBiZSBydW5uaW5nICJtb2Rwcm9iZSAtcSAtLSA5cC12aXJ0aW8iCj4+PiB3aGlj
aCBmaW5kcyB0aGUgbW9kdWxlIGp1c3QgZmluZSwgaGVuY2UgbXkgc3VwcG9zaXRpb24gdXNlcm1v
ZGhlbHBlciBpcwo+Pj4gbm90IHNldHVwIGNvcnJlY3RseQo+Pj4KPj4+IERvIHlvdSBoYXBwZW4g
dG8ga25vdyB3aGF0IEkgbmVlZCB0byBkbyBmb3IgaXQ/Cj4+Cj4+IFdoYXQgaXMgdGhlIHZhbHVl
IG9mIENPTkZJR19NT0RQUk9CRV9QQVRIPwo+PiBBbmQgdGhlIGNvbnRlbnRzIG9mIC9wcm9jL3N5
cy9rZXJuZWwvbW9kcHJvYmU/Cj4KPiBhaGEsIHRoZXNlIHR3byB3ZXJlIGluZGVlZCBkaWZmZXJl
bnQgZnJvbSB3aGVyZSBteSBtb2Rwcm9iZSBpcyBzbyBpdCBpcwo+IGEgc2V0dXAgcHJvYmxlbSAt
LSBJIG1pZ2h0IGhhdmUgYmVlbiBhIGxpdHRsZSByYXNoIHdpdGggdGhpcyBpbml0cmQKPiBzZXR1
cCBhbmQgbW9kcHJvYmUgZW5kZWQgdXAgaW4gL2JpbiB3aXRoIHBhdGggaGVyZSBpbiAvc2Jpbi4u
Lgo+Cj4gVGhhbmtzIGZvciB0aGUgcG9pbnRlciwgSSBzYXcgdGhlIGNvZGUgc2V0dXAgYW4gZW52
aXJvbm1lbnQgd2l0aCBhCj4gZnVsbC1ibG93biBQQVRIIHNvIGRpZG4ndCB0aGluayBvZiBjaGVj
a2luZyBpZiB0aGlzIGtpbmQgb2Ygc2V0dGluZwo+IGV4aXN0ZWQhCj4gQWxsIGxvb2tzIGluIG9y
ZGVyIHRoZW4gOikKCkRvZXMgaXQgYWxzbyB3b3JrIGZvciB0aGUgc3BsaXQgb3V0IEZEIHRyYW5z
cG9ydHM/CklmIHNvLCBJJ2xsIHJlc2VuZCB0aGF0IHBhdGNoIGluIGEgcHJvcGVyIGZvcm0gdG9t
b3Jyb3cuCgpUaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
