Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 173D9444913
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 20:38:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miM5u-0003cW-0P; Wed, 03 Nov 2021 19:38:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1miM5p-0003cJ-Iq
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DpNhm67djA/4t7H/t6zeTGTAWwU8/HtkZqADVGISxQQ=; b=Z/QyWRFnBJzrBR93+MjvgLTKUm
 tZIg/2tmc77TMWCT7Mn3u2xWb43ipvN1c0xzurBV4zzVuxZEnGwTgc7XEibEox4Qd6sc9DZtigSdX
 69I5OSj2+NjiyZ2fXPiAmYCSwDNuBHr5/RxBfRYjn3r8u760YvecJN7vTkw4Xu7MzhBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DpNhm67djA/4t7H/t6zeTGTAWwU8/HtkZqADVGISxQQ=; b=C
 wBUpgNq3e/tLOleRbKtccgeB6BWMudx72JfvssHIrOg71E1zcUprjGD46egStTA5IUfNw8VXRpgiJ
 Gh3tL2djtLIUhCzVH19na84pGMG0G22mYJtrY5OSjxE1x1IayiVuayIn867GqATlNQeeb0LTadaBp
 7sS0qV62T4Ot74kU=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miM5k-00HYtK-0T
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:40 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635968308;
 bh=F7/IqXfrZtyQ8NW8rysMnKtrgiVYUxBlS6M/A2Yg+4k=;
 h=From:To:Cc:Subject:Date:From;
 b=VNiMoSp6ylT3mDXyPfrQtncCFOmKtCeB+EOnyRasaVPfN6fidBD0XzW7NsLyLA1Zd
 wn7v6SSdCkWEMffw23ksshCVOUke2Io+47sSdtUtDMBTc2bCMXLqjDELqh9UDWk2OB
 hzYwGIYcd6HyNK02dFXeRkepQtfUi6PDKDq5caRU=
To: v9fs-developer@lists.sourceforge.net,
	netdev@vger.kernel.org
Date: Wed,  3 Nov 2021 20:38:19 +0100
Message-Id: <20211103193823.111007-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a continuation of the single patch "net/9p: autoload
 transport modules". Patch 1 is a cleaned up version of the original patch.
 Patch 2 splits the filedescriptor-based transports into their own module.
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: weissschuh.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1miM5k-00HYtK-0T
Subject: [V9fs-developer] [PATCH v2 0/4] net/9p: optimize transport module
 loading
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
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, Stefano Stabellini <stefano@aporeto.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhpcyBpcyBhIGNvbnRpbnVhdGlvbiBvZiB0aGUgc2luZ2xlIHBhdGNoCiJuZXQvOXA6IGF1dG9s
b2FkIHRyYW5zcG9ydCBtb2R1bGVzIi4KClBhdGNoIDEgaXMgYSBjbGVhbmVkIHVwIHZlcnNpb24g
b2YgdGhlIG9yaWdpbmFsIHBhdGNoLgoKUGF0Y2ggMiBzcGxpdHMgdGhlIGZpbGVkZXNjcmlwdG9y
LWJhc2VkIHRyYW5zcG9ydHMgaW50byB0aGVpciBvd24gbW9kdWxlLgoKUGF0Y2ggMyBhZGRzIGF1
dG9sb2FkaW5nIGZvciB0aGUgeGVuIHRyYW5zcG9ydC4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIGlz
CmNvbXBsZXRlbHkgdW50ZXN0ZWQsIGJ1dCBvdGhlciB4ZW5idXMgZHJpdmVycyBkbyB0aGUgc2Ft
ZS4KClBhdGNoIDQgYWRkcyBzb21lIGZhbGxiYWNrIHRyYW5zcG9ydCBsb2FkaW5nIGZyb20gbW9k
dWxlcyBpZiBub25lIGlzIHVzYWJsZSBhdAp0aGUgbW9tZW50LgoKQ2hhbmdlcyBzaW5jZSB2MToK
KCBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMTEwMTcxMzQ2MTEuNDMzMC0xLWxp
bnV4QHdlaXNzc2NodWgubmV0LyApCgoqIEZpeCB3YXJuaW5ncwoqIFNwbGl0IEZEIHRyYW5zcG9y
dCBpbnRvIGl0cyBvd24gbW9kdWxlCiogQXV0b2xvYWQgeGVuIHRyYW5zcG9ydCB3aGVuIHhlbmJ1
cyBkZXZpY2UgaXMgcHJlc2VudAoqIExvYWQgdHJhbnNwb3J0cyBmcm9tIG1vZHVsZXMgd2hlbiBu
b25lIGlzIHNwZWNpZmllZCBhbmQgbG9hZGVkCgpUaG9tYXMgV2Vpw59zY2h1aCAoNCk6CiAgbmV0
LzlwOiBhdXRvbG9hZCB0cmFuc3BvcnQgbW9kdWxlcwogIDlwL3RyYW5zX2ZkOiBzcGxpdCBpbnRv
IGRlZGljYXRlZCBtb2R1bGUKICA5cC94ZW46IGF1dG9sb2FkIHdoZW4geGVuYnVzIHNlcnZpY2Ug
aXMgYXZhaWxhYmxlCiAgbmV0L3A5OiBsb2FkIGRlZmF1bHQgdHJhbnNwb3J0cwoKIGluY2x1ZGUv
bmV0LzlwLzlwLmggICAgICAgIHwgIDIgLS0KIGluY2x1ZGUvbmV0LzlwL3RyYW5zcG9ydC5oIHwg
IDggKysrKysrKy0KIG5ldC85cC9LY29uZmlnICAgICAgICAgICAgIHwgIDcgKysrKysrKwogbmV0
LzlwL01ha2VmaWxlICAgICAgICAgICAgfCAgNSArKysrLQogbmV0LzlwL21vZC5jICAgICAgICAg
ICAgICAgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQogbmV0Lzlw
L3RyYW5zX2ZkLmMgICAgICAgICAgfCAxNCArKysrKysrKysrKy0tCiBuZXQvOXAvdHJhbnNfcmRt
YS5jICAgICAgICB8ICAxICsKIG5ldC85cC90cmFuc192aXJ0aW8uYyAgICAgIHwgIDEgKwogbmV0
LzlwL3RyYW5zX3hlbi5jICAgICAgICAgfCAgMiArKwogOSBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNl
cnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCgpiYXNlLWNvbW1pdDogY2MwMzU2ZDZhMDJlMDY0
Mzg3YzE2YTgzY2I5NmZlNDNlZjMzMTgxZQotLSAKMi4zMy4xCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
