Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0927449BFD
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Nov 2021 19:50:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mk9jG-0007g1-73; Mon, 08 Nov 2021 18:50:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mk9jE-0007fv-Ef
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z00A43K3LCe5IH/2fEoUqJj7f2Dd16xMECNnuAExluI=; b=FRNbS79N8ke0JR9sq7DHLWDHJ8
 O4z8YIbZ2b5MAxMETI39DiC4UqR+A2j1C8VkjbUGkBd/ERb1O52JTqBv1EJcg5NHBCnOGd58i1bOt
 UHtjFJBWkNqrDWcw9+l2RmoQMLFgM6zsneKFu2aYjZ8JTfUyPqIq3zslbxaMxYK7PzaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z00A43K3LCe5IH/2fEoUqJj7f2Dd16xMECNnuAExluI=; b=Suu/2iSBJX5zhGiEMACTELWGxe
 g9cQ0GQGhGtkTMc0xBdMGAzFd3i725btnfF5xRiolVyxUIjfkzDF4Fzjbib8Ili7AqJzwCYK5eDjI
 2+Wg8iAae3jFK+GEVs/H0oFWoKbBCnVavdaXtNoRgmV6SgbNy529NE4fe6B2dQ3CbmHY=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk9jC-006Nfq-0N
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:50:48 +0000
Date: Mon, 8 Nov 2021 19:50:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636397436;
 bh=L6MFlY7fncI7DTAhySExlSyQ36N0y6PwyRwcayAnt6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ATxD+/7NQrBK6w98+St8hye1dyDqJ/XVefzz3A+E4wsY/9IPnPcEuie7Bx8TdpWPk
 4J+viPttbySzEI1AQl+GCBK8rdPh9ml/P3cCzMXsdQE5e1rtNKA2oja7w51XSXuTau
 3SrTnH6BZR2VbxLua9Vr1Ycbxmyv6lrMv4SP2qXU=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <c2a33fa1-30b0-4f19-808f-3bd0316a4ed8@t-8ch.de>
References: <20211103193823.111007-1-linux@weissschuh.net>
 <20211103193823.111007-5-linux@weissschuh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211103193823.111007-5-linux@weissschuh.net>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Dominique, On 2021-11-03 20:38+0100, Thomas Weißschuh
   wrote: > Now that all transports are split into modules it may happen that
    no > transports are registered when v9fs_get_default_trans() is called. >
    When th [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mk9jC-006Nfq-0N
Subject: Re: [V9fs-developer] [PATCH v2 4/4] net/p9: load default transports
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stefano Stabellini <stefano@aporeto.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLAoKT24gMjAyMS0xMS0wMyAyMDozOCswMTAwLCBUaG9tYXMgV2Vpw59zY2h1
aCB3cm90ZToKPiBOb3cgdGhhdCBhbGwgdHJhbnNwb3J0cyBhcmUgc3BsaXQgaW50byBtb2R1bGVz
IGl0IG1heSBoYXBwZW4gdGhhdCBubwo+IHRyYW5zcG9ydHMgYXJlIHJlZ2lzdGVyZWQgd2hlbiB2
OWZzX2dldF9kZWZhdWx0X3RyYW5zKCkgaXMgY2FsbGVkLgo+IFdoZW4gdGhhdCBpcyB0aGUgY2Fz
ZSB0cnkgdG8gbG9hZCBtb3JlIHRyYW5zcG9ydHMgZnJvbSBtb2R1bGVzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4KPiAtLS0KPiAg
bmV0LzlwL21vZC5jIHwgOSArKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9uZXQvOXAvbW9kLmMgYi9uZXQvOXAvbW9kLmMKPiBpbmRl
eCA4ZjFkMDY3YjI3MmUuLjdiYjg3NWNkMjc5ZiAxMDA2NDQKPiAtLS0gYS9uZXQvOXAvbW9kLmMK
PiArKysgYi9uZXQvOXAvbW9kLmMKPiBAQCAtMTI4LDYgKzEyOCwxMCBAQCBzdHJ1Y3QgcDlfdHJh
bnNfbW9kdWxlICp2OWZzX2dldF90cmFuc19ieV9uYW1lKGNvbnN0IGNoYXIgKnMpCj4gIH0KPiAg
RVhQT1JUX1NZTUJPTCh2OWZzX2dldF90cmFuc19ieV9uYW1lKTsKPiAgCj4gK3N0YXRpYyBjb25z
dCBjaGFyICogY29uc3Qgdjlmc19kZWZhdWx0X3RyYW5zcG9ydHNbXSA9IHsKPiArCSJ2aXJ0aW8i
LCAidGNwIiwgImZkIiwgInVuaXgiLCAieGVuIiwgInJkbWEiLAo+ICt9Owo+ICsKPiAgLyoqCj4g
ICAqIHY5ZnNfZ2V0X2RlZmF1bHRfdHJhbnMgLSBnZXQgdGhlIGRlZmF1bHQgdHJhbnNwb3J0Cj4g
ICAqCj4gQEAgLTEzNiw2ICsxNDAsNyBAQCBFWFBPUlRfU1lNQk9MKHY5ZnNfZ2V0X3RyYW5zX2J5
X25hbWUpOwo+ICBzdHJ1Y3QgcDlfdHJhbnNfbW9kdWxlICp2OWZzX2dldF9kZWZhdWx0X3RyYW5z
KHZvaWQpCj4gIHsKPiAgCXN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnQsICpmb3VuZCA9IE5VTEw7
Cj4gKwlpbnQgaTsKPiAgCj4gIAlzcGluX2xvY2soJnY5ZnNfdHJhbnNfbG9jayk7Cj4gIAo+IEBA
IC0xNTMsNiArMTU4LDEwIEBAIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnY5ZnNfZ2V0X2RlZmF1
bHRfdHJhbnModm9pZCkKPiAgCQkJfQo+ICAKPiAgCXNwaW5fdW5sb2NrKCZ2OWZzX3RyYW5zX2xv
Y2spOwo+ICsKPiArCWZvciAoaSA9IDA7ICFmb3VuZCAmJiBpIDwgQVJSQVlfU0laRSh2OWZzX2Rl
ZmF1bHRfdHJhbnNwb3J0cyk7IGkrKykKPiArCQlmb3VuZCA9IHY5ZnNfZ2V0X3RyYW5zX2J5X25h
bWUodjlmc19kZWZhdWx0X3RyYW5zcG9ydHNbaV0pOwo+ICsKPiAgCXJldHVybiBmb3VuZDsKPiAg
fQo+ICBFWFBPUlRfU1lNQk9MKHY5ZnNfZ2V0X2RlZmF1bHRfdHJhbnMpOwo+IC0tIAo+IDIuMzMu
MQoKSSBkaWQgbm90IG5vdGljZSB0aGF0IHlvdSBhbHJlYWR5IGhhZCBhcHBsaWVkICJuZXQvOXA6
IGF1dG9sb2FkIHRyYW5zcG9ydCBtb2R1bGVzIgp0byB5b3VyIHRyZWUgd2hlbiBzZW5kaW5nIHRo
aXMgc2VyaWVzLgoKUGxlYXNlIG5vdGUgdGhhdCBpbiB0aGlzIHNlcmllcyBJIG1vZGlmaWVkIHBh
dGNoIDEgYSBiaXQsIGZyb20gdGhlIG9ueSB5b3UKYXBwbGllZCwgdG8gcHJldmVudCB3YXJuaW5n
cyBpbiBwYXRjaCA0LgpDb25jcmV0ZWx5IEkgbW9kaWZpZWQgdGhlIHByb3RvdHlwZXMgb2YgYHY5
ZnNfZ2V0X3RyYW5zX2J5X25hbWUoKWAgYW5kCmBfcDlfZ2V0X3RyYW5zX2J5X25hbWUoKWAgdG8g
dGFrZSBjb25zdCBwYXJhbWV0ZXJzLgoKRmVlbCBmcmVlIHRvIHJvbGwgdGhvc2UgY2hhbmdlcyBp
bnRvIHRoaXMgcGF0Y2ggd2hlbiBhcHBseWluZyBvciBJIGNhbiByZXNlbmQKdGhlIHBhdGNoL3Nl
cmllcy4KClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
