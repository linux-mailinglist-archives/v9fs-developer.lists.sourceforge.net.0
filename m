Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10303449EB0
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Nov 2021 23:32:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mkDBj-0004hp-NC; Mon, 08 Nov 2021 22:32:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1mkDBi-0004hj-C2
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 22:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zud7OdEIkTpD43LRPIbRcXq7+R/QWPBlGp1XNQjDQTw=; b=aBCaYLwtyxYuYWX5QcoyDry+7k
 4MKGqhadnJBn6i/9eqnx2Z7tEvypS5Cfc1HIq1jDdoYfeJSqVwUMlv5IGWrRToHjlzKF1fQ2mFIM2
 daoxF/Lz8Nd+3PCEWizIQ9mRjrpT0SjFL5T8FDXLcII9KKf7rFnRTwEpi/y0VHOShKOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zud7OdEIkTpD43LRPIbRcXq7+R/QWPBlGp1XNQjDQTw=; b=NME3dSjbb51QnOnMxBVJGy6z0F
 HtLzaZ47GknCSs9uxMpfk7Msqy2OMoYi5WLwCR5uBrL0M5puMPsB/XrJqYpQNzaeVoQWqtbdobevd
 QHNmI03mRlahSafWIgQK3CgQAzBItYXBu2jEm7ZtAaFN614fZh4T0v2gHaClSAmfCfqg=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mkDBf-0002GP-82
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Nov 2021 22:32:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 147D6C01D; Mon,  8 Nov 2021 23:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636410734; bh=zud7OdEIkTpD43LRPIbRcXq7+R/QWPBlGp1XNQjDQTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YSwAC1Ld+GyuvCjOOo79KBMLWXQ3WMg7p2uSSU+bRtTDPRue+1gwnrlcZOQzZHgwr
 oczWHEQL4oGs5Tc11NNNhWdgTks1dtDYuD5pbjWGXTX0c0PN6xgfXNGQs6/CGleEHf
 KbQOvDle99VCOpwv4vIJS2dSKmyvYPaGfT5d3ecJafBXu3jY+GP1QVDalAN7/ifF6H
 UbMticei3nPs9E6vN47PToiFTf9OHrfjGQ21rBcMHjUFDASmZ4U47TJzFn1Aveuvnm
 yqbad62IFy8ZzjvAvPYr8hLIZ3HSE2FrmSHj6YGY7bS7yqIjKLn2jh0S4aIgUo7Xt/
 sBkZkVqYthxGg==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id DD4FFC009;
 Mon,  8 Nov 2021 23:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1636410733; bh=zud7OdEIkTpD43LRPIbRcXq7+R/QWPBlGp1XNQjDQTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pfnrVCuPOHphpsheOYkQIMC63MpA6sG2wtcv+JDOBIQenja8mFJvwh06DRVXs9wPm
 SpiE6EnhQJqz2kJDsaMgxBWt0xOm9DDSV16INlsPlAtYJCOb7gw0CLRoBo1cJeiHz8
 9I2UR2d7aPpr3p9O0R5uKXzn14r5dBQiO8Vfi/MucEwuGrxNMC9Sme0afi/l2fBlFc
 0wPe7KNArqacoQ6yzKSAROyqDJlKHS5QWnkq05z+A53w7B5GF+xEQetsstLN9nAxXJ
 RgI6fXUBnwufQlCGYPzx46MqBZYVcE48Un3fhZ9LR5gCUijbpibjCzWByCh/OkMIDQ
 Jl6u2lYAhrbDg==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id e697cf90;
 Mon, 8 Nov 2021 22:32:08 +0000 (UTC)
Date: Tue, 9 Nov 2021 07:31:52 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
Message-ID: <YYmlWC9k9jU/JXri@codewreck.org>
References: <20211103193823.111007-1-linux@weissschuh.net>
 <20211103193823.111007-5-linux@weissschuh.net>
 <c2a33fa1-30b0-4f19-808f-3bd0316a4ed8@t-8ch.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2a33fa1-30b0-4f19-808f-3bd0316a4ed8@t-8ch.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Thomas Weißschuh wrote on Mon, Nov 08, 2021 at 07:50:34PM
    +0100: > I did not notice that you already had applied "net/9p: autoload
   transport modules" > to your tree when sending this series. > > Plea [...]
    
 
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
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1mkDBf-0002GP-82
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

SGksCgpUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZSBvbiBNb24sIE5vdiAwOCwgMjAyMSBhdCAwNzo1
MDozNFBNICswMTAwOgo+IEkgZGlkIG5vdCBub3RpY2UgdGhhdCB5b3UgYWxyZWFkeSBoYWQgYXBw
bGllZCAibmV0LzlwOiBhdXRvbG9hZCB0cmFuc3BvcnQgbW9kdWxlcyIKPiB0byB5b3VyIHRyZWUg
d2hlbiBzZW5kaW5nIHRoaXMgc2VyaWVzLgo+IAo+IFBsZWFzZSBub3RlIHRoYXQgaW4gdGhpcyBz
ZXJpZXMgSSBtb2RpZmllZCBwYXRjaCAxIGEgYml0LCBmcm9tIHRoZSBvbnkgeW91Cj4gYXBwbGll
ZCwgdG8gcHJldmVudCB3YXJuaW5ncyBpbiBwYXRjaCA0Lgo+IENvbmNyZXRlbHkgSSBtb2RpZmll
ZCB0aGUgcHJvdG90eXBlcyBvZiBgdjlmc19nZXRfdHJhbnNfYnlfbmFtZSgpYCBhbmQKPiBgX3A5
X2dldF90cmFuc19ieV9uYW1lKClgIHRvIHRha2UgY29uc3QgcGFyYW1ldGVycy4KPiAKPiBGZWVs
IGZyZWUgdG8gcm9sbCB0aG9zZSBjaGFuZ2VzIGludG8gdGhpcyBwYXRjaCB3aGVuIGFwcGx5aW5n
IG9yIEkgY2FuIHJlc2VuZAo+IHRoZSBwYXRjaC9zZXJpZXMuCgpUaGFua3MgZm9yIHRoZSBoZWFk
cyB1cCwgaXQncyBvayAtLSBJJ2xsIG1vdmUgdGhlIGNvbnN0aWZpY2F0aW9uIG9mCnRoZXNlIGZ1
bmN0aW9ucyB0byBwYXRjaCA0IG15c2VsZi4KCkkndmUganVzdCBzZW50IG15IHB1bGwgcmVxdWVz
dCB0byBMaW51cyBzbyB3aWxsIHRha2UgeW91ciBwYXRjaGVzIHRvCm15IGZvci1uZXh0IGJyYW5j
aCB3aGVuIHRoYXQncyBtZXJnZWQuCi0tIApEb21pbmlxdWUKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
Vjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
