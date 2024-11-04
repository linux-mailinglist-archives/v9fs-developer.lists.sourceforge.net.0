Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4409BAF3C
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Nov 2024 10:11:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t7t7L-0003pP-GS;
	Mon, 04 Nov 2024 09:11:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jan.polasek@bytebrigadebuilders.com>)
 id 1t7t7K-0003pJ-4o for v9fs-developer@lists.sourceforge.net;
 Mon, 04 Nov 2024 09:11:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bRQ4jFxNVcM6F4NBYTbWMLQ1h+eElp/lMiKXKTCAKAg=; b=gfnhpXFgiJK/HgXOIBFpqvOE8L
 LdRn/CnE+VaDEmuTGS/0HVUP4b6YdtZNhzRy1xwAmzddnw+HOH8dAskV6H+G0g0k6KIJgeGHI24k9
 hLg/Uzh4RoR64BZ8MbAmO1uG3RuUgrgrS+xF9Ol/yYH8Mz1bgUehKyywCFXOWhwuFCiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bRQ4jFxNVcM6F4NBYTbWMLQ1h+eElp/lMiKXKTCAKAg=; b=U
 Nhc5JLMJ1FWKli9cNWC3R603XhK7+6BxabdCezEUpf6f9py6jp11ampvM3NwIhi2d7rOtU0IGVa0y
 FUerbbrGGa9Bx1FpZrr8zZNrkRm5QQ67WEle6kkWar9eLjjmRBA9GZfFkRMoJKkkmtWHhE9IIhBLH
 hmaWl5IUREGrurow=;
Received: from mail.bytebrigadebuilders.com ([80.211.239.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t7t7I-0001Eh-St for v9fs-developer@lists.sourceforge.net;
 Mon, 04 Nov 2024 09:11:22 +0000
Received: by mail.ByteBrigadeBuilders.com (Postfix, from userid 1002)
 id 41F67842E7; Mon,  4 Nov 2024 10:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=ByteBrigadeBuilders.com; s=mail; t=1730711469;
 bh=bRQ4jFxNVcM6F4NBYTbWMLQ1h+eElp/lMiKXKTCAKAg=;
 h=Date:From:To:Subject:From;
 b=KzFHgpUGtANc6EcFgUUrh1CdVKy/5Nr7rfOW42eTGc+cBCTMAGNAkuMAd9vlDjTgV
 OAspFLgLj7QHGaj8hoGlLgyDunZsNk9dLOr7w/7FFCMmvDPZuc/YqPDgBCkf38Bhe+
 trzgm2pNwh1UCXeaOOU7akafkGCRkxTeElK17AOEOjAIMwZlweIP2a0sE4mpvTf3iC
 sFC5vnEPiJ99JCfAtjOQ2Oi6LqWJkAQrFzceuE+JN+YIUQb/MRrOX3RaLr+4W3tGlu
 axvatl90qg/ME2p3E4scdzORhsTCBi5KK24z8LA/bf6o8QMinWk0IozNzVbFK32OF3
 okD1iHO/CeWVg==
Received: by mail.ByteBrigadeBuilders.com for
 <v9fs-developer@lists.sourceforge.net>; Mon,  4 Nov 2024 09:10:59 GMT
Message-ID: <20241104084500-0.1.ay.y1p0.0.zdh0isrgfh@ByteBrigadeBuilders.com>
Date: Mon,  4 Nov 2024 09:10:59 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.ByteBrigadeBuilders.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi! I’m reaching out because I see great potential in your
    products and services. Imagine your offer reaching thousands of new, engaged
    customers. That's exactly what we offer through our affiliate marketing program.
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1t7t7I-0001Eh-St
Subject: [V9fs-developer] Quick Question About Collaboration
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
From: Jan Polasek via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Jan Polasek <jan.polasek@bytebrigadebuilders.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkhCgpJ4oCZbSByZWFjaGluZyBvdXQgYmVjYXVzZSBJIHNlZSBncmVhdCBwb3RlbnRpYWwgaW4g
eW91ciBwcm9kdWN0cyBhbmQgc2VydmljZXMuCgpJbWFnaW5lIHlvdXIgb2ZmZXIgcmVhY2hpbmcg
dGhvdXNhbmRzIG9mIG5ldywgZW5nYWdlZCBjdXN0b21lcnMuIFRoYXQncyBleGFjdGx5IHdoYXQg
d2Ugb2ZmZXIgdGhyb3VnaCBvdXIgYWZmaWxpYXRlIG1hcmtldGluZyBwcm9ncmFtLgoKT3ZlciB0
aGUgcGFzdCAzIHllYXJzLCB0aGUgYWZmaWxpYXRlIGFjdGl2aXRpZXMgd2UgY29uZHVjdGVkIGZv
ciBvbmUgb2Ygb3VyIGNsaWVudHMgaW4gdGhlIGUtY29tbWVyY2UgaW5kdXN0cnkgY29udHJpYnV0
ZWQgdG8gYW4gaW1wcmVzc2l2ZSByZXZlbnVlIGdyb3d0aCBmcm9tIDglIHRvIDE5JSAocXVhcnRl
cmx5IGF2ZXJhZ2UpLgoKV2UgaGF2ZSBleHRlbnNpdmUgZXhwZXJpZW5jZSBpbiB0aGUgQ0VFIG1h
cmtldCAoQ2VudHJhbCBhbmQgRWFzdGVybiBFdXJvcGUpLCB3aGljaCBpcyBjdXJyZW50bHkgdGhl
IGZhc3Rlc3QtZ3Jvd2luZyBhZHZlcnRpc2luZyBtYXJrZXQgaW4gdGhlIHdvcmxkLgoKV2UgYXJl
IGludGVyZXN0ZWQgaW4gcGFydG5lcmluZyB3aXRoIHdlYnNpdGVzIHRoYXQgYXR0cmFjdCBhdCBs
ZWFzdCAyMDAsMDAwIHZpc2l0cyBwZXIgbW9udGguIEhvdyBhYm91dCBhIHNob3J0LCBuby1vYmxp
Z2F0aW9uIGNvbnZlcnNhdGlvbj8KCgpCZXN0IHJlZ2FyZHMKSmFuIFBvbGFzZWsKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
