Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8916EDC46
	for <lists+v9fs-developer@lfdr.de>; Tue, 25 Apr 2023 09:11:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1prCpY-0004ce-TC;
	Tue, 25 Apr 2023 07:11:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1prCpW-0004cY-TK
 for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Apr 2023 07:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HsVyTMR83ttxuxKZQEOXlJIEnSx7WFKLjIUf5uGlz4k=; b=kLI04BMdKiXN3//Bq2Uif7Udh5
 k6kdOIUT/prFe35FRgj6xu4qqog5tAeuiCm7HMCHKDkGgKgJp5pb7WJtp923UxiYBze5whEY20sCh
 huIIQEL5R3Fmd/yXYPyNwF4SFTCV02VTsmGZdaN/MPNj/+jYRKQCmqH2ah17mKx2Xu/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HsVyTMR83ttxuxKZQEOXlJIEnSx7WFKLjIUf5uGlz4k=; b=gmJ95vX2/+0C1u7nsr8rm++cGA
 zPgZ1M+ysab/jbaTjELcTCcESy1GwMB+kNhusR9BETLPoLqzapcYXc67DkBAaXFC8UVnQcDs/34lV
 hxnQsRqGXslJOJMCVoT5BZdx8WXWeMzvqiq58Q01gRd0hQ2vxQeNhE4QgpdUv4M/N0Pk=;
Received: from smtp-23.smtpout.orange.fr ([80.12.242.23]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1prCpR-000iQa-J3 for v9fs-developer@lists.sourceforge.net;
 Tue, 25 Apr 2023 07:11:14 +0000
Received: from [192.168.1.18] ([86.243.2.178]) by smtp.orange.fr with ESMTPA
 id rCpKpcPOC0ulprCpKpYEyY; Tue, 25 Apr 2023 09:11:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1682406663;
 bh=HsVyTMR83ttxuxKZQEOXlJIEnSx7WFKLjIUf5uGlz4k=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=K6ZFNMvQnqvN61urx9LXNTzA6mMEvkC3DY5Uwq8pOIyr6z2zS6MqJ8mECK2iClJwR
 uDHePAGgIY+PErtHVMsNS+miKnJF/ePoGyWxjzpb1D0RX6tg++szbb8GtvIymQpd1n
 ekHsBJsb58p/PGF7HVgDKfFsSjwnqKBl8SD0cuIhJZ/OKW2ZjWmd+6/5nTOEPhn2VP
 hsC/rwIfWIRYrkn10e7H2N+iHdRP2dHJAewozjtACiBuOYYRT/vT/1e3AgWRN7q2jR
 8lfHzDnwVXkLnsHYDuBG0VnaSUs7BSSX/UOv3VEGJWxqOX7I5efuQyysVd7VEcQc0D
 qOvP+Bs1f22OA==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 25 Apr 2023 09:11:03 +0200
X-ME-IP: 86.243.2.178
Message-ID: <7686c810-4ed6-9e3a-3714-8b803e2d3c46@wanadoo.fr>
Date: Tue, 25 Apr 2023 09:11:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Eric Van Hensbergen <ericvh@kernel.org>,
 v9fs-developer@lists.sourceforge.net
References: <20230218003323.2322580-11-ericvh@kernel.org>
 <ZCEGmS4FBRFClQjS@7e9e31583646>
Content-Language: fr
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <ZCEGmS4FBRFClQjS@7e9e31583646>
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 27/03/2023 à 04:59, Eric Van Hensbergen a écrit : >
   This patch removes the creating of an additional writeback_fid > for opened
    files. The patch addresses problems when files > were opened write [...] 
 
 Content analysis details:   (-1.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.12.242.23 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.23 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1prCpR-000iQa-J3
Subject: Re: [V9fs-developer] [PATCH v5] fs/9p: remove writeback fid and fix
 per-file modes
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-fsdevel@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

TGUgMjcvMDMvMjAyMyDDoCAwNDo1OSwgRXJpYyBWYW4gSGVuc2JlcmdlbiBhIMOpY3JpdMKgOgo+
IFRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUgY3JlYXRpbmcgb2YgYW4gYWRkaXRpb25hbCB3cml0ZWJh
Y2tfZmlkCj4gZm9yIG9wZW5lZCBmaWxlcy4gIFRoZSBwYXRjaCBhZGRyZXNzZXMgcHJvYmxlbXMg
d2hlbiBmaWxlcwo+IHdlcmUgb3BlbmVkIHdyaXRlLW9ubHkgb3IgZ2V0YXR0ciBvbiBmaWxlcyB3
aXRoIGRpcnR5IGNhY2hlcy4KPiAKPiBUaGlzIHBhdGNoIGFsc28gaW5jb3Jwb3JhdGVzIGluZm9y
bWF0aW9uIGFib3V0IGNhY2hlIGJlaGF2aW9yCj4gaW4gdGhlIGZpZCBmb3IgZXZlcnkgZmlsZS4g
IFRoaXMgYWxsb3dzIHVzIHRvIHJlZmxlY3QgY2FjaGUKPiBiZWhhdmlvciBmcm9tIG1vdW50IGZs
YWdzLCBvcGVuIG1vZGUsIGFuZCBpbmZvcm1hdGlvbiBmcm9tCj4gdGhlIHNlcnZlciB0byBpbmZv
cm0gcmVhZGFoZWFkIGFuZCB3cml0ZWJhY2sgYmVoYXZpb3IuCj4gCj4gVGhpcyBpbmNsdWRlcyBh
ZGRpbmcgc3VwcG9ydCBmb3IgYSA5cCBzZW1hbnRpYyB0aGF0IHFpZC52ZXJzaW9uPT0wCj4gaXMg
dXNlZCB0byBtYXJrIGEgZmlsZSBhcyBub24tY2FjaGFibGUgd2hpY2ggaXMgaW1wb3J0YW50IGZv
cgo+IHN5bnRoZXRpYyBmaWxlcy4gIFRoaXMgbWF5IGhhdmUgYSBzaWRlLWVmZmVjdCBvZiBub3Qg
c3VwcG9ydGluZwo+IGNhY2hpbmcgb24gY2VydGFpbiBsZWdhY3kgZmlsZSBzZXJ2ZXJzIHRoYXQg
ZG8gbm90IHByb3Blcmx5IHNldAo+IHFpZC52ZXJzaW9uLiAgVGhlcmUgaXMgYWxzbyBub3cgYSBt
b3VudCBmbGFnIHdoaWNoIGNhbiBkaXNhYmxlCj4gdGhlIHFpZC52ZXJzaW9uIGJlaGF2aW9yLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEVyaWMgVmFuIEhlbnNiZXJnZW4gPGVyaWN2aEBrZXJuZWwub3Jn
Pgo+IC0tLQo+ICAgZnMvOXAvZmlkLmMgICAgICAgICAgICB8IDQ4ICsrKysrKysrKy0tLS0tLS0t
LS0tLS0KPiAgIGZzLzlwL2ZpZC5oICAgICAgICAgICAgfCAzMyArKysrKysrKysrKysrKy0KPiAg
IGZzLzlwL3Y5ZnMuaCAgICAgICAgICAgfCAgMSAtCj4gICBmcy85cC92ZnNfYWRkci5jICAgICAg
IHwgMjIgKysrKystLS0tLQo+ICAgZnMvOXAvdmZzX2ZpbGUuYyAgICAgICB8IDkxICsrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgZnMvOXAvdmZzX2lub2RlLmMg
ICAgICB8IDQ1ICsrKysrKystLS0tLS0tLS0tLS0tLQo+ICAgZnMvOXAvdmZzX2lub2RlX2RvdGwu
YyB8IDQ4ICsrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgIGZzLzlwL3Zmc19zdXBlci5jICAgICAg
fCAzMyArKysrLS0tLS0tLS0tLS0KPiAgIDggZmlsZXMgY2hhbmdlZCwgMTM1IGluc2VydGlvbnMo
KyksIDE4NiBkZWxldGlvbnMoLSkKPiAKCkhpLAoKdGhpcyBwYXRjaCBoYXMgYWxyZWFkeSByZWFj
aGVkIC1uZXh0LCBidXQgdGhlcmUgaXMgc29tZSBzcHVyaW91cyBjb2RlLgoKQXMsIEknbSBub3Qg
c3VyZSB3aGF0IHRoZSByZWFsIGludGVudCBpcywgSSBwcmVmZXIgdG8gcmVwbHkgaGVyZSBpbnN0
ZWFkIApvZiBzZW5kaW5nIGEgcGF0Y2guCgoKWy4uLl0KCj4gQEAgLTgxNyw5ICs4MTQsMTQgQEAg
djlmc192ZnNfYXRvbWljX29wZW4oc3RydWN0IGlub2RlICpkaXIsIHN0cnVjdCBkZW50cnkgKmRl
bnRyeSwKPiAgIAo+ICAgCXY5c2VzID0gdjlmc19pbm9kZTJ2OXNlcyhkaXIpOwo+ICAgCXBlcm0g
PSB1bml4bW9kZTJwOW1vZGUodjlzZXMsIG1vZGUpOwo+IC0JZmlkID0gdjlmc19jcmVhdGUodjlz
ZXMsIGRpciwgZGVudHJ5LCBOVUxMLCBwZXJtLAo+IC0JCQkJdjlmc191ZmxhZ3Myb21vZGUoZmxh
Z3MsCj4gLQkJCQkJCXY5ZnNfcHJvdG9fZG90dSh2OXNlcykpKTsKPiArCXA5X29tb2RlID0gdjlm
c191ZmxhZ3Myb21vZGUoZmxhZ3MsIHY5ZnNfcHJvdG9fZG90dSh2OXNlcykpOwo+ICsKPiArCWlm
ICgodjlzZXMtPmNhY2hlID49IENBQ0hFX1dSSVRFQkFDSykgJiYgKHA5X29tb2RlICYgUDlfT1dS
SVRFKSkgewo+ICsJCXA5X29tb2RlID0gKHA5X29tb2RlICYgIVA5X09XUklURSkgfCBQOV9PUkRX
UjsKClRoaXMgY29kZSBsb29rcyBzdHJhbmdlLgpQOV9PV1JJVEUgaXMgMHgwMSwgc28gIVA5X09X
UklURSBpcyAwLgpTbyB0aGUgY29kZSBpcyBlcXVpdmFsZW50IHRvICJwOV9vbW9kZSA9IFA5X09S
RFdSOyIKCklzIGl0IHdoYXQgaXMgZXhwZXh0ZWQ/CgpNYXliZQoJcDlfb21vZGUgPSAocDlfb21v
ZGUgJiB+UDlfT1dSSVRFKSB8IFA5X09SRFdSOwo/Cgo+ICsJCXA5X2RlYnVnKFA5X0RFQlVHX0NB
Q0hFLAo+ICsJCQkid3JpdGUtb25seSBmaWxlIHdpdGggd3JpdGViYWNrIGVuYWJsZWQsIGNyZWF0
aW5nIHcvIE9fUkRXUlxuIik7Cj4gKwl9Cj4gKwlmaWQgPSB2OWZzX2NyZWF0ZSh2OXNlcywgZGly
LCBkZW50cnksIE5VTEwsIHBlcm0sIHA5X29tb2RlKTsKPiAgIAlpZiAoSVNfRVJSKGZpZCkpIHsK
PiAgIAkJZXJyID0gUFRSX0VSUihmaWQpOwo+ICAgCQlnb3RvIGVycm9yOwoKWy4uLl0KCj4gZGlm
ZiAtLWdpdCBhL2ZzLzlwL3Zmc19pbm9kZV9kb3RsLmMgYi9mcy85cC92ZnNfaW5vZGVfZG90bC5j
Cj4gaW5kZXggYTI4ZWIzYWVhYjI5Li40Yjk0ODhjYjdhNTYgMTAwNjQ0Cj4gLS0tIGEvZnMvOXAv
dmZzX2lub2RlX2RvdGwuYwo+ICsrKyBiL2ZzLzlwL3Zmc19pbm9kZV9kb3RsLmMKPiBAQCAtMjMy
LDEyICsyMzIsMTIgQEAgdjlmc192ZnNfYXRvbWljX29wZW5fZG90bChzdHJ1Y3QgaW5vZGUgKmRp
ciwgc3RydWN0IGRlbnRyeSAqZGVudHJ5LAo+ICAgCWludCBlcnIgPSAwOwo+ICAgCWtnaWRfdCBn
aWQ7Cj4gICAJdW1vZGVfdCBtb2RlOwo+ICsJaW50IHA5X29tb2RlID0gdjlmc19vcGVuX3RvX2Rv
dGxfZmxhZ3MoZmxhZ3MpOwo+ICAgCWNvbnN0IHVuc2lnbmVkIGNoYXIgKm5hbWUgPSBOVUxMOwo+
ICAgCXN0cnVjdCBwOV9xaWQgcWlkOwo+ICAgCXN0cnVjdCBpbm9kZSAqaW5vZGU7Cj4gICAJc3Ry
dWN0IHA5X2ZpZCAqZmlkID0gTlVMTDsKPiAtCXN0cnVjdCB2OWZzX2lub2RlICp2OWlub2RlOwo+
IC0Jc3RydWN0IHA5X2ZpZCAqZGZpZCA9IE5VTEwsICpvZmlkID0gTlVMTCwgKmlub2RlX2ZpZCA9
IE5VTEw7Cj4gKwlzdHJ1Y3QgcDlfZmlkICpkZmlkID0gTlVMTCwgKm9maWQgPSBOVUxMOwo+ICAg
CXN0cnVjdCB2OWZzX3Nlc3Npb25faW5mbyAqdjlzZXM7Cj4gICAJc3RydWN0IHBvc2l4X2FjbCAq
cGFjbCA9IE5VTEwsICpkYWNsID0gTlVMTDsKPiAgIAlzdHJ1Y3QgZGVudHJ5ICpyZXMgPSBOVUxM
Owo+IEBAIC0yODIsMTQgKzI4MiwxOSBAQCB2OWZzX3Zmc19hdG9taWNfb3Blbl9kb3RsKHN0cnVj
dCBpbm9kZSAqZGlyLCBzdHJ1Y3QgZGVudHJ5ICpkZW50cnksCj4gICAJLyogVXBkYXRlIG1vZGUg
YmFzZWQgb24gQUNMIHZhbHVlICovCj4gICAJZXJyID0gdjlmc19hY2xfbW9kZShkaXIsICZtb2Rl
LCAmZGFjbCwgJnBhY2wpOwo+ICAgCWlmIChlcnIpIHsKPiAtCQlwOV9kZWJ1ZyhQOV9ERUJVR19W
RlMsICJGYWlsZWQgdG8gZ2V0IGFjbCB2YWx1ZXMgaW4gY3JlYXQgJWRcbiIsCj4gKwkJcDlfZGVi
dWcoUDlfREVCVUdfVkZTLCAiRmFpbGVkIHRvIGdldCBhY2wgdmFsdWVzIGluIGNyZWF0ZSAlZFxu
IiwKPiAgIAkJCSBlcnIpOwo+ICAgCQlnb3RvIG91dDsKPiAgIAl9Cj4gLQllcnIgPSBwOV9jbGll
bnRfY3JlYXRlX2RvdGwob2ZpZCwgbmFtZSwgdjlmc19vcGVuX3RvX2RvdGxfZmxhZ3MoZmxhZ3Mp
LAo+IC0JCQkJICAgIG1vZGUsIGdpZCwgJnFpZCk7Cj4gKwo+ICsJaWYgKCh2OXNlcy0+Y2FjaGUg
Pj0gQ0FDSEVfV1JJVEVCQUNLKSAmJiAocDlfb21vZGUgJiBQOV9PV1JJVEUpKSB7Cj4gKwkJcDlf
b21vZGUgPSAocDlfb21vZGUgJiAhUDlfT1dSSVRFKSB8IFA5X09SRFdSOwoKU2FtZSBoZXJlLgoK
Q0oKCj4gKwkJcDlfZGVidWcoUDlfREVCVUdfQ0FDSEUsCj4gKwkJCSJ3cml0ZS1vbmx5IGZpbGUg
d2l0aCB3cml0ZWJhY2sgZW5hYmxlZCwgY3JlYXRpbmcgdy8gT19SRFdSXG4iKTsKPiArCX0KPiAr
CWVyciA9IHA5X2NsaWVudF9jcmVhdGVfZG90bChvZmlkLCBuYW1lLCBwOV9vbW9kZSwgbW9kZSwg
Z2lkLCAmcWlkKTsKPiAgIAlpZiAoZXJyIDwgMCkgewo+IC0JCXA5X2RlYnVnKFA5X0RFQlVHX1ZG
UywgInA5X2NsaWVudF9vcGVuX2RvdGwgZmFpbGVkIGluIGNyZWF0ICVkXG4iLAo+ICsJCXA5X2Rl
YnVnKFA5X0RFQlVHX1ZGUywgInA5X2NsaWVudF9vcGVuX2RvdGwgZmFpbGVkIGluIGNyZWF0ZSAl
ZFxuIiwKPiAgIAkJCSBlcnIpOwo+ICAgCQlnb3RvIG91dDsKPiAgIAl9CgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
