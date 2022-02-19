Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 473514BCB1C
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Feb 2022 00:13:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nLYv6-0008Q5-AR; Sat, 19 Feb 2022 23:13:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@vjovhht.cn>) id 1nLYv4-0008Py-1c
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Feb 2022 23:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2A0hxtfVYSGr4l84eBOzUIoruQHJzYikWJbkVV4OuPo=; b=DABgGsUwOwOdZkvdZmi9Z5Uitc
 fztkNtcLWt7JVOHDN1bNB3BvZhBh7Zn60791xuFSkiqWIvNmnscgm6o0zJORGzfiovdR5e2uJGpre
 vgSC9mt7RNvmjSu6pErYZ/rq4doc150pSmYHEWYE0WIwf2ZW5qrqfT0ef73bbWMd0m8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2A0hxtfVYSGr4l84eBOzUIoruQHJzYikWJbkVV4OuPo=; b=f
 CkH+KPEvgSvebkYqWIa+oCP4E83xUxKMvARH9pKevS96BrTFV2OBhwxR29eqqpAavhNeDdFcmrTat
 pA+tQx6cFgj0Ac2F9GwadEoRP9QT8MPj4gy38Grsl1s2N1l+U+xFq6VhiLMZkihnp7iyyZZsg7+RO
 3Rpb02Nw0dSaqG44=;
Received: from [139.198.13.22] (helo=mail.vjovhht.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nLYv1-007opz-2O
 for v9fs-developer@lists.sourceforge.net; Sat, 19 Feb 2022 23:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=vjovhht.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@vjovhht.cn;
 bh=2A0hxtfVYSGr4l84eBOzUIoruQHJzYikWJbkVV4OuPo=;
 b=bd5h+su0NSr9CDpigkU2iuavcB4l9pU+qp5hhpQGLFyS/1nUsRhb8aXAz1CDWVqzYMR+Z5rcdebI
 1iPlS620PmklChPj5e1kCUCLus/wlLWF9yxCn5T2vdz06OAZLWQ4K5ZrkqST9CRUdgh1gUEsgmwj
 isKZCox1q0XHzkrVNtc=
Date: Sun, 20 Feb 2022 08:14:55 +0900
From: "Amazon" <support-amazon.jp@vjovhht.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220220081503557676@vjovhht.cn>
Mime-Version: 1.0
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazon お客様 平素は Amazon.co.jp をご利用いただき、誠にありがとうございます。
    ご利用の Amazon アカウントで異常な活動が検出されたため、アカウン�
    [...] 
 
 Content analysis details:   (8.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [139.198.13.22 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: vjovhht.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: fbbnhid.cn]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.2 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nLYv1-007opz-2O
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE44CC?=
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

DQoNCg0KDQpBbWF6b24g44GK5a6i5qeYDQrlubPntKDjga8gQW1hem9uLmNvLmpwIOOCkuOBlOWI
qeeUqOOBhOOBn+OBoOOBjeOAgeiqoOOBq+OBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBmeOA
gg0K44GU5Yip55So44GuIEFtYXpvbiDjgqLjgqvjgqbjg7Pjg4jjgafnlbDluLjjgarmtLvli5Xj
gYzmpJzlh7rjgZXjgozjgZ/jgZ/jgoHjgIHjgqLjgqvjgqbjg7Pjg4jjgpLkuIDmmYLkv53nlZnj
gavjgZfjgIHkv53nlZnkuK3jga7jgZTms6jmlofjgoTjgrXjg5bjgrnjgq/jg6rjg5fjgrfjg6fj
g7PjgpLjgq3jg6Pjg7Pjgrvjg6vjgYTjgZ/jgZfjgb7jgZfjgZ/jgIINCuOCr+ODrOOCuOODg+OD
iOOCq+ODvOODieOBruebl+mbo+OCkumYsuOBkOOBn+OCgeOAgeODreOCsOOCpOODs+W+jOOBmeOB
kOOBq+aDheWgseOCkuabtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAgg0K44GC44Gq44Gf44GMMjTm
mYLplpPku6XlhoXjgavnorroqo3jgafjgY3jgarjgYTloLTlkIjjga/nlLPjgZfoqLPjgYLjgorj
gb7jgZvjgpPjgILjgYLjgarjgZ/jga7osqHnlKPjga7lronlhajjga7jgZ/jgoHjgavjgIHjgZPj
ga7jgqLjgqvjgqbjg7Pjg4jjga7kvb/nlKjjgpLliLbpmZDjgZfjgb7jgZnjgIINCuacrOS7tuOB
q+OBpOOBhOOBpuOBlOi/t+aDkeOCkuOBiuOBi+OBkeOBl+OBvuOBl+OBn+OBk+OBqOOCkuOBiuip
q+OBs+eUs+OBl+S4iuOBkuOBvuOBmeOAgg0K5L2V5Y2S44CB44KI44KN44GX44GP44GK6aGY44GE
55Sz44GX5LiK44GS44G+44GZ44CCDQoNCuOBiuWuouanmOOBriBBbWF6b24g44Ki44Kr44Km44Oz
44OIDQpBbWF6b27jg4Hjg7zjg6Djga/jgYLjgarjgZ/jga7jgqLjgqvjgqbjg7Pjg4jjga7nirbm
hYvjgYznlbDluLjjgafjgYLjgovjgZPjgajjgpLnmbropovjgZfjgb7jgZfjgZ/jgILjgqLjgqvj
gqbjg7Pjg4jmiYDmnInmqKnjga7oqLzmmI7jgpLjgZToh6rouqvjgafooYzjgYbloLTlkIjjga/j
gIFBbWF6b24g566h55CG44Kz44Oz44K944O844Or44Gr44Ot44Kw44Kk44Oz44GX44CB5omA5a6a
44Gu5omL6aCG44Gn44GK5omL57aa44GN44GP44Gg44GV44GE44CCDQrnirbmhYs6IA0K55Ww5bi4
44Gv5pu05paw5b6F44Gh44Gn44GZDQrjgqLjgqvjgqbjg7Pjg4jjgpLnorroqo3jgZnjgosNCg0K
DQoNCg0KDQoNCg0KQW1hem9u44Gu44G+44Gf44Gu44GU5Yip55So44KS44GK5b6F44Gh44GX44Gm
44GK44KK44G+44GZ44CCDQoNCg0KDQoNCsKpIDE5OTYtMjAyMiwgQW1hem9uLiBJbmMuIG9yIGl0
cyBhZmZpbGlhdGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
