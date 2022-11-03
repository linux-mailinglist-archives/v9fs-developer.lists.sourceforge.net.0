Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 539616188C8
	for <lists+v9fs-developer@lfdr.de>; Thu,  3 Nov 2022 20:31:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oqfw6-0006NL-Mo;
	Thu, 03 Nov 2022 19:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@mail.rakuten-card.co.jp>) id 1oqfw4-0006NF-9A
 for v9fs-developer@lists.sourceforge.net;
 Thu, 03 Nov 2022 19:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B9GkYwGHI3jhTICCARfxcgZCMpeX3igUnsReAogmesE=; b=nCcM/hpZfQWmqiNdWW1bRSJCLT
 2bPQhfINHHQ5mSGS92awHwcj5gNf8KVG60v2IsTBmo512IJwl/Ms9h0ezliz0H380W7ALi3L+zSfj
 7qMkCHePT/HTse9I1sUKc+oUfx/IKmSRg9ixmX1dM4tbAsCJs4xLKCHYk4PEoKOgOTos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B9GkYwGHI3jhTICCARfxcgZCMpeX3igUnsReAogmesE=; b=R
 /vWNlSeC8L9LFhEChlTFjfvM5Z28c+LtI3tH921UDJVI6QDt6EZHrYd3KlVpffLV7Qt2kI+JrzNxf
 ksHh3w0OhURKkjBfJiwEbphHXjwWb2LiWoKml0EwQtJUmr6RXLX6v9KfdbyoBV8gmDat/q0ZugIrk
 QS4FHrWp5qdqejkI=;
Received: from [115.229.233.24] (helo=mail.rakuten-card.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oqfvz-00Ay60-Sn for v9fs-developer@lists.sourceforge.net;
 Thu, 03 Nov 2022 19:31:32 +0000
Date: Fri, 4 Nov 2022 03:31:16 +0800
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20221104033126466402@mail.rakuten-card.co.jp>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  楽天e-NAVI お客様へ お客様のアカウントは楽天e-NAVI
    を更新できませんでした。原因はカードが期限切れになったか。請求先住所が変更されたなど、様々な理由で発生す�
    [...] 
 
 Content analysis details:   (5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [115.229.233.24 listed in zen.spamhaus.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: rebrand.ly]
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=info%40mail.rakuten-card.co.jp;ip=115.229.233.24;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=mail.rakuten-card.co.jp;ip=115.229.233.24;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1oqfvz-00Ay60-Sn
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ5qW95aSp5biC5aC044CR5oOF5aCx44Gu?=
	=?utf-8?b?5pyJ5Yq55pyf6ZmQ44GM5YiH44KM44CB44Ki44Kr44Km44Oz44OI44Gu?=
	=?utf-8?b?5L2/55So44GM5YGc5q2i44GV44KM44G+44GX44GfLg==?=
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
From: =?utf-8?B?5qW95aSp44Kr44O844OJ5qCq5byP5Lya56S+?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?5qW95aSp44Kr44O844OJ5qCq5byP5Lya56S+?=
 <info@mail.rakuten-card.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IOalveWkqWUtTkFWSSDjgYrlrqLmp5jjgbggDQoNCuOBiuWuouanmOOBruOCouOCq+OCpuODs+OD
iOOBr+alveWkqWUtTkFWSSDjgpLmm7TmlrDjgafjgY3jgb7jgZvjgpPjgafjgZfjgZ/jgILljp/l
m6Djga/jgqvjg7zjg4njgYzmnJ/pmZDliIfjgozjgavjgarjgaPjgZ/jgYvjgILoq4vmsYLlhYjk
vY/miYDjgYzlpInmm7TjgZXjgozjgZ/jgarjganjgIHmp5jjgIXjgarnkIbnlLHjgafnmbrnlJ/j
gZnjgovlj6/og73mgKfjgYzjgYLjgorjgb7jgZnjgIINCuOCouOCq+OCpuODs+ODiOaDheWgseOB
ruS4gOmDqOOBjOiqpOOBo+OBpuOBhOOCi+eCuuOAgeOBiuWuouanmOOBruOCouOCq+OCpuODs+OD
iOOCkue2reaMgeOBmeOCi+eCuuOAgealveWkqWUtTkFWIOaDheWgseOCkuabtOaWsOOBmeOCi+W/
heimgeOBjOOBguOCiuOBvuOBmeOAgg0KDQoNCualveWkqWUtTkFWSSDjg63jgrDjgqTjg7MgDQrj
garjgYrjgIEyNOaZgumWk+S7peWGheOBq+OBlOeiuuiqjeOBjOOBquOBhOWgtOWQiOOAgeiqoOOB
q+mBuuaGvuOBquOBjOOCieOAgeOCouOCq+OCpuODs+ODiOOCkuODreODg+OCr+OBleOBm+OBpuOB
hOOBn+OBoOOBj+OBk+OBqOOCkuitpuWRiuOBhOOBn+OBl+OBvuOBmeOAgg0K44OR44K544Ov44O8
44OJ44KS5aSJ5pu044GX44Gf6Kaa44GI44GM44Gq44GE5aC05ZCI44Gv44CB6Iez5oClKDAzKS01
NzU3LTUyNTLjgb7jgafjgYrpm7voqbHjgY/jgaDjgZXjgYTjgIINCuOBiuefpeOCieOBmzogDQrj
g5Hjgrnjg6/jg7zjg4njga/oqrDjgavjgoLmlZnjgYjjgarjgYTjgafjgY/jgaDjgZXjgYTjgIIg
DQrlgIvkurrmg4XloLHjgajplqLkv4LjgYzjgarjgY/jgIHmjqjmuKzjgZfjgavjgY/jgYTjg5Hj
grnjg6/jg7zjg4njgpLkvZzmiJDjgZfjgabjgY/jgaDjgZXjgYTjgILlpKfmloflrZfjgajlsI/m
loflrZfjgIHmlbDlrZfjgIHjgYrjgojjgbPoqJjlj7fjgpLlv4XjgZrkvb/nlKjjgZfjgabjgY/j
gaDjgZXjgYTjgIIgDQrjgqrjg7Pjg6njgqTjg7PjgqLjgqvjgqbjg7Pjg4jjgZTjgajjgavjgIHn
lbDjgarjgovjg5Hjgrnjg6/jg7zjg4njgpLkvb/nlKjjgZfjgabjgY/jgaDjgZXjgYTjgIINCg0K
DQrjganjgYbjgZ7jgojjgo3jgZfjgY/jgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgIIgDQrmpb3l
pKllLU5BVkkgDQrCqSAxOTk2LTIwMjIsIHJha3V0ZW4uY28uanAsIEluYy4gb3IgaXRzIGFmZmls
aWF0ZXNfMF0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Vjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZz
LWRldmVsb3Blcgo=
