Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81070696FF1
	for <lists+v9fs-developer@lfdr.de>; Tue, 14 Feb 2023 22:40:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pS32W-0000yd-Mi;
	Tue, 14 Feb 2023 21:40:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aohhfw@service.n786.cn>) id 1pS32U-0000yW-Bf
 for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 21:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=niO0xM11k4U93+Lejnt6+z6UY0A3Brj/zN+9+NacmTo=; b=ODhwE8i1OL1slPmzmpa0U/yD4Y
 CxzrKiZFM+okgkFmS37Ntn0qtE/FgXlre1PyJB/DgxgkKeHAGdJnnwSyY5OotPHyrmEvxSYAo44+3
 XXFkxLJVjhmSadtuWdBELsP1YX0wVlnWOaUjXyWUIYv9A82hR2lI9uulB006pHejSXVo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=niO0xM11k4U93+Lejnt6+z6UY0A3Brj/zN+9+NacmTo=; b=U
 4GxvUOWQ+ygiODvFSA+Nz8hpz4cliz6w4GXDmY2rjsLB25CAKyly+0XIP9M8NHm+rSKswYo5RUIcC
 us5EJK0kkZMcLSafmTCtSVhtA2fwbTEZ6yj7hQ+fdkecSTBH087bY9lP6LGi/u+aVwn7OUpBZlzMF
 eO5dwmOdoYtQ+uvI=;
Received: from [45.156.27.247] (helo=service.n786.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pS32P-00083P-3b for v9fs-developer@lists.sourceforge.net;
 Tue, 14 Feb 2023 21:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mykey; d=service.n786.cn;
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 bh=PBuBVLHgb7oweP2i99i2jETnojM=;
 b=ZeOemnfar63YfSqNpZjAh17iilkq7zg/gCrcjnFr9cdX7x18cihbYjS49Mfm7SeWfMsfuyy7HnMx
 HdBPv62fB9APNIP2mH6O6J3n6916lTBXkwfvHDGxYfznYY7MR1tfzDbbJBEXAW5JI/92LZL172tk
 c/cKtuVKEBommRaChyk=
Received: from yahoo2.com.cn (156.239.37.234) by service.n786.cn id
 htfvt20001gi for <v9fs-developer@lists.sourceforge.net>;
 Tue, 14 Feb 2023 21:19:26 +0000 (envelope-from <aohhfw@service.n786.cn>)
Date: Wed, 15 Feb 2023 05:19:10 +0800
From: "Amazon.co.jp" <aohhfw@service.n786.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20230215051923646256@service.n786.cn>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  サインインが検出されました v9fs-developer@lists.sourceforge.net様、新しいデバイスからお客様のアカウントへのサインインが検出されました。
    日時 2023/2/1 [...] 
 
 Content analysis details:   (7.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: n786.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [45.156.27.247 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: service.n786.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1pS32P-00083P-3b
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?djlmcy1kZXZlbG9wZXLmp5gg44CQQW1hem9u?=
	=?utf-8?b?44CR44GU5qGI5YaF4oC744Ki44Kr44Km44Oz44OI44Gu44K744Kt44Ol?=
	=?utf-8?b?44Oq44OG44Kj44Gu5ZWP6aGM44Oh44O844Or55Wq5Y+377yaNzU5ODcx?=
	=?utf-8?q?457823?=
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

DQrjgrXjgqTjg7PjgqTjg7PjgYzmpJzlh7rjgZXjgozjgb7jgZfjgZ8NCnY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldOanmOOAgeaWsOOBl+OBhOODh+ODkOOCpOOCueOBi+OCieOB
iuWuouanmOOBruOCouOCq+OCpuODs+ODiOOBuOOBruOCteOCpOODs+OCpOODs+OBjOaknOWHuuOB
leOCjOOBvuOBl+OBn+OAgg0K5pel5pmCIDIwMjMvMi8xNSAvNToxOToyMkphcGFuIFN0YW5kYXJk
IFRpbWUgIA0K44OH44OQ44Kk44K5ICBHb29nbGUgQ2hyb21lIFdpbmRvd3MgKOODh+OCueOCr+OD
iOODg+ODlykgIA0K5LuY6L+RICBLeW90bywgSmFwYW4gIA0K44GT44KM44GM44GK5a6i5qeY44GU
6Ieq6Lqr44Gr44KI44KL5pON5L2c44Gg44Gj44Gf5aC05ZCI44CB44GT44Gu44Oh44OD44K744O8
44K444Gv54Sh6KaW44GX44Gm44GP44Gg44GV44GE44CC6Iez5oCl56K66KqN44GX44Gf44GE44GT
44Go44GM44GU44GW44GE44G+44GZ44Gu44Gn44CB5LiL6KiY44Oq44Oz44Kv44KS44Ki44Kv44K7
44K544GX44CB44GU56K66KqN44KS44GE44Gf44Gg44GN44G+44GZ44KI44GG44GK6aGY44GE44GE
44Gf44GX44G+44GZ44CCDQog44Ki44Kr44Km44Oz44OI566h55CGDQrilqAg5rOo5oSP5LqL6aCF
DQogDQoq5q6L5b+144Gq44GM44KJ44CBMjTmmYLplpPku6XlhoXjgavnorroqo3jgafjgY3jgarj
gZHjgozjgbDjgIEg44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI44KS44Ot44OD44Kv44GX44Gm
QW1hem9u44K144O844OTIOOCueOCkuS4gOaZgueahOOBq+eEoeWKueOBq+WkieabtOOBmeOCi+OB
k+OBqOOCkuOBiuefpeOCieOBmyDjgZfjgb7jgZnjgIINCirjgZPjga7jg6Hjg7zjg6vjga/ph43o
poHjgarjgYrnn6XjgonjgZvjgajjgZfjgabjgIHjg6Hjg7wg44Or44KS5Y+X5L+h5biM5pyb44GX
44Gq44GE44GK5a6i5qeY44Gr44KC44GK6YCB44KK44GE44Gf44GXIOOBvuOBmeOAguOBlOeQhuin
o+OBhOOBn+OBoOOBjeOAgeOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBviDjgZnjgIINCirjgZPj
ga7jg6Hjg7zjg6vjgYzjgZTkuI3mmI7ngrnjgYzjgYLjgorjgb7jgZfjgZ/jgonjgIFBbWF6b27j
grXjgqTjg4jjgavjgZTpgKPntaHjgY/jgaDjgZXjgYTjgIINCuOBlOi/t+aDkeOBqOOBlOW/g+mF
jeOCkuOBiuOBi+OBkeOBl+OBpuOAgea3seOBj+OBiuipq+OBs+eUsyDjgZfkuIrjgZLjgb7jgZnj
gILjgZTkuobmib/jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZfjgZ/jgIIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
