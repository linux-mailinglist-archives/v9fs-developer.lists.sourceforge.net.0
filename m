Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AB4444916
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Nov 2021 20:38:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miM5w-0003Lh-3Q; Wed, 03 Nov 2021 19:38:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1miM5s-0003Lb-Aw
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tk+jKOhXLIhXZ4vOdlp9BZ0XWPMf0bilvx+y615sNfI=; b=E7SUOAT0Y+zl2zJN1MXhUcQQTW
 SoZuNACF06E4kanZ9zhSr3iLVhV6CBZ/AlFgZaFsDxTgVpUVBWWMjYwqAzVYMV51lW2TX3javmNQq
 783xLRpT4q27U5tQvxXhrXuBvfS7vZWLdFAgneVMvgWSRXXnRXynB0ReRsVsreRz72Eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tk+jKOhXLIhXZ4vOdlp9BZ0XWPMf0bilvx+y615sNfI=; b=MhO6H0deO1R+NaZBW+mS4srvGK
 kqMFo2BUJsOo8RASd6yGg3jwXBWMYJFBrp/Ie637Kxi9nfaHOrmRAnTFyaxyu589EiVua/AF/1b1z
 5w1QxsQlu3RNCscD8Dni5SFzFZ6HZyz3JxdjWjAjN5atCcqLuN9dOho6a+AB6jj0lt7k=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miM5k-000078-EP
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Nov 2021 19:38:44 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635968309;
 bh=bXuf1Fnll4HQ6OApxVeazk1FgKp+3wfoq7NhsxXZiy8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rGlqzH+SLKMzu7H/ocY4KlIzi9xr/EW2+zV2jo1HuMmI6hVkMiNmbnK/dli9tn3/7
 yDnUaYKiQvxgt/NufZd+gnBOZRqtOLHHMVo7F6a9KMuzqMS0pmuzhPW/yGiMVL1Ui/
 pENNVyqQ09IBrFLfZrMYcx3010GPJoByx5oRzXc4=
To: v9fs-developer@lists.sourceforge.net,
	netdev@vger.kernel.org
Date: Wed,  3 Nov 2021 20:38:23 +0100
Message-Id: <20211103193823.111007-5-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211103193823.111007-1-linux@weissschuh.net>
References: <20211103193823.111007-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that all transports are split into modules it may happen
 that no transports are registered when v9fs_get_default_trans() is called.
 When that is the case try to load more transports from modules. 
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
X-Headers-End: 1miM5k-000078-EP
Subject: [V9fs-developer] [PATCH v2 4/4] net/p9: load default transports
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

Tm93IHRoYXQgYWxsIHRyYW5zcG9ydHMgYXJlIHNwbGl0IGludG8gbW9kdWxlcyBpdCBtYXkgaGFw
cGVuIHRoYXQgbm8KdHJhbnNwb3J0cyBhcmUgcmVnaXN0ZXJlZCB3aGVuIHY5ZnNfZ2V0X2RlZmF1
bHRfdHJhbnMoKSBpcyBjYWxsZWQuCldoZW4gdGhhdCBpcyB0aGUgY2FzZSB0cnkgdG8gbG9hZCBt
b3JlIHRyYW5zcG9ydHMgZnJvbSBtb2R1bGVzLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFdlacOf
c2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgotLS0KIG5ldC85cC9tb2QuYyB8IDkgKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbmV0Lzlw
L21vZC5jIGIvbmV0LzlwL21vZC5jCmluZGV4IDhmMWQwNjdiMjcyZS4uN2JiODc1Y2QyNzlmIDEw
MDY0NAotLS0gYS9uZXQvOXAvbW9kLmMKKysrIGIvbmV0LzlwL21vZC5jCkBAIC0xMjgsNiArMTI4
LDEwIEBAIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnY5ZnNfZ2V0X3RyYW5zX2J5X25hbWUoY29u
c3QgY2hhciAqcykKIH0KIEVYUE9SVF9TWU1CT0wodjlmc19nZXRfdHJhbnNfYnlfbmFtZSk7CiAK
K3N0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgdjlmc19kZWZhdWx0X3RyYW5zcG9ydHNbXSA9IHsK
KwkidmlydGlvIiwgInRjcCIsICJmZCIsICJ1bml4IiwgInhlbiIsICJyZG1hIiwKK307CisKIC8q
KgogICogdjlmc19nZXRfZGVmYXVsdF90cmFucyAtIGdldCB0aGUgZGVmYXVsdCB0cmFuc3BvcnQK
ICAqCkBAIC0xMzYsNiArMTQwLDcgQEAgRVhQT1JUX1NZTUJPTCh2OWZzX2dldF90cmFuc19ieV9u
YW1lKTsKIHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnY5ZnNfZ2V0X2RlZmF1bHRfdHJhbnModm9p
ZCkKIHsKIAlzdHJ1Y3QgcDlfdHJhbnNfbW9kdWxlICp0LCAqZm91bmQgPSBOVUxMOworCWludCBp
OwogCiAJc3Bpbl9sb2NrKCZ2OWZzX3RyYW5zX2xvY2spOwogCkBAIC0xNTMsNiArMTU4LDEwIEBA
IHN0cnVjdCBwOV90cmFuc19tb2R1bGUgKnY5ZnNfZ2V0X2RlZmF1bHRfdHJhbnModm9pZCkKIAkJ
CX0KIAogCXNwaW5fdW5sb2NrKCZ2OWZzX3RyYW5zX2xvY2spOworCisJZm9yIChpID0gMDsgIWZv
dW5kICYmIGkgPCBBUlJBWV9TSVpFKHY5ZnNfZGVmYXVsdF90cmFuc3BvcnRzKTsgaSsrKQorCQlm
b3VuZCA9IHY5ZnNfZ2V0X3RyYW5zX2J5X25hbWUodjlmc19kZWZhdWx0X3RyYW5zcG9ydHNbaV0p
OworCiAJcmV0dXJuIGZvdW5kOwogfQogRVhQT1JUX1NZTUJPTCh2OWZzX2dldF9kZWZhdWx0X3Ry
YW5zKTsKLS0gCjIuMzMuMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
