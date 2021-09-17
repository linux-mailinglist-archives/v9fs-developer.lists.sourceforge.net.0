Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F3A40D47A
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Sep 2021 10:28:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mQmlB-0007nO-1i; Thu, 16 Sep 2021 08:28:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <amozonjp-account-update@zjmcjr.com>)
 id 1mQml9-0007nI-1U
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 08:28:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ngJuXn4wrM0vjZTnbp/NLsdvzRn1/7XdCjFiCyXuBvY=; b=GaTyF+9LSgOWgnz4Yh9hyOZvzh
 +PvItmbUusDx9/Wod1RbCSsSgittGYPyt0rXhnskerW6sVs9IZK1lxq4WUHnwJwFCC0PJHL6HitRk
 yShXjYmV0fRV+k4pamky8UY8NzSvUDzjZHMQDHyFM625Z2n3zO826p+tgpbV/OZ1YKSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ngJuXn4wrM0vjZTnbp/NLsdvzRn1/7XdCjFiCyXuBvY=; b=K
 4mdQC3hp0uAc0AsJi+lKgahpnrPGpXTjHmNSGtLZcNMZj5sWwrnQ3XT6T783WkkpjZVAGvdVc+W5Z
 Ud88frl10aH6kIS4yPmYrssI8bxnvD13KwhWODuac7sivLVSK0+k4Nr1adQizihc94meBRdS/FA5Y
 +rUiakID630XIzJM=;
Received: from [180.215.119.151] (helo=zjmcjr.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mQml6-00078o-QV
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Sep 2021 08:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=zjmcjr.com; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=amozonjp-account-update@zjmcjr.com;
 bh=ngJuXn4wrM0vjZTnbp/NLsdvzRn1/7XdCjFiCyXuBvY=;
 b=MQtnAIna8ujUq/dzbT2QogcVbGllsl4tcIoed7jbLqA5LRN9IYEZVFWcwvL20WIzXstjuahF8KpC
 HIPsWFJ+lonsCDKXspV6ps66BwupYiBp6yaOLEs8oAHa+h8S2WmgRmfzCj6AnK7fc0GJpqiuAqTi
 2btHrpGUYScN4/ADwe8=
From: Amazon.co.jp <amozonjp-account-update@zjmcjr.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 16 Sep 2021 16:24:39 -0800
Message-ID: <00f06ab931b6$eb2a24ba$9a036d5b$@dpfwdvu>
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (zjmcjr.com)
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  客様の注文とamazonアカウントを停止させていただいております、請求先住所が変更されたなど。アカウントにログインして画面の指示に従うことで�
    [...] 
 
 Content analysis details:   (6.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: amazon.co.jp]
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: amaznon.co]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [180.215.119.151 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
                             date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mQml6-00078o-QV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR5rOo5paH54q25rOB44KS?=
 =?utf-8?b?44GU56K66KqN44GP44Gg44GV44GE?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IA0KDQogDQoNCg0KIA0KDQogDQoNCiANCg0KIA0KDQogDQog5a6i5qeY44Gu5rOo5paH44GoYW1h
em9u44Ki44Kr44Km44Oz44OI44KS5YGc5q2i44GV44Gb44Gm44GE44Gf44Gg44GE44Gm44GK44KK
44G+44GZ44CB6KuL5rGC5YWI5L2P5omA44GM5aSJ5pu044GV44KM44Gf44Gq44Gp44CC44Ki44Kr
44Km44Oz44OI44Gr44Ot44Kw44Kk44Oz44GX44Gm55S76Z2i44Gu5oyH56S644Gr5b6T44GG44GT
44Go44Gn44CB44Ki44Kr44Km44Oz44OI44Gu5YGc5q2i54q25oWL44KS6Kej6Zmk44GX44Gm44GE
44Gf44Gg44GR44G+44GZ44CCIOS4i+iusFVSTOOCiOOCiuOCouOCq+OCpuODs+ODiOazqOaWh+aD
heWgseOCkuOBlOeiuuiqjeOBvuOBn+OBr+WkieabtOOAgg0KW+azqOaWh+eVquWPt10gNTQ2MzIx
MjQ1LTIwMjEwOTE2LTQyMQ0KW+W6l+iIl+WPl+S7mOaXpeaZgl0gMjAyMS8wOS8xNlvjgYrmlK/m
iZXjgYTmlrnms5VdIOOCr+ODrOOCuOODg+ODiOOCq+ODvOODieaxuua4iCANCiAg56K66KqN55So
44Ki44Kr44Km44Oz44OIDQoNCiAgIEFtYXpvbi5jby5qcOOBruOBvuOBn+OBruOBlOWIqeeUqOOC
kuOBiuW+heOBoeOBl+OBpuOBiuOCiuOBvuOBmeOAgiAgIMKpIDE5OTYtMjAyMSwgQW1hem9uLmNv
bSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcw0KIA0KDQogDQoNCg0KDQoNCg0KDQogDQoNCi4gDQoN
CiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
