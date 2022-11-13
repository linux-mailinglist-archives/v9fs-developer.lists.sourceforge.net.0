Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45546627118
	for <lists+v9fs-developer@lfdr.de>; Sun, 13 Nov 2022 18:02:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouGNP-0006cy-NI;
	Sun, 13 Nov 2022 17:02:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mail@contact.vpass.ne.jp>) id 1ouGNO-0006cr-Fu
 for v9fs-developer@lists.sourceforge.net;
 Sun, 13 Nov 2022 17:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D2XuCR+jvEDtF5ccmT+Bp/m/8G1qV+nNl3pVcWBqMOQ=; b=CcR3x7ofZf3HAyWBziQ2NLqxyn
 mmwB3ITqzcsrKuUIDmws6pF73uleBpSWNxbmmFSccXdAkA0sX+N4LoN0Vl1D4XrUrkRCm/dTHTCRa
 qWmQ9oPotOGqz49hkfdaSSBRJVcCLSF/qBUcgDpRgGThEXec1G8uxq/5HH7/3vzQdw84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=D2XuCR+jvEDtF5ccmT+Bp/m/8G1qV+nNl3pVcWBqMOQ=; b=T
 hcjeVeZLahVw+C7jSIw3oNXiQeH6cTfOU3wcWWUXxLWXIzB7ERBD0cuJXEI/p4RNw9A8pnpSDZLe9
 lgS8Weg/P4bIDrRcPo7ml9LoNvQoPxsCnC8jUcgrMNmi1hSdS30+R6fzu0tjVsWd2hJ9yP5r/hnDs
 bM5ZpsgqIu6Vdj2M=;
Received: from [122.241.83.23] (helo=contact.vpass.ne.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ouGNL-00054l-JR for v9fs-developer@lists.sourceforge.net;
 Sun, 13 Nov 2022 17:02:34 +0000
Date: Mon, 14 Nov 2022 01:02:14 +0800
From: =?utf-8?B?5LiJ5LqV5L2P5Y+L44Kr44O844OJ?= <mail@contact.vpass.ne.jp>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20221114010224600610@contact.vpass.ne.jp>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 7.8 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ＳＭＢＣＣＡＲＤクラシック※会員 様 平素は三井住友カードをご利用いただき、誠にありがとうございます。
    このたび、ご本人様のご利用かどう� [...] 
 
 Content analysis details:   (7.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
                             [122.241.83.23 listed in zen.spamhaus.org]
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=mail%40contact.vpass.ne.jp;ip=122.241.83.23;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=contact.vpass.ne.jp;ip=122.241.83.23;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1ouGNL-00054l-JR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR5LiJ5LqV5L2P5Y+L44Kr?=
	=?utf-8?b?44O844OJ44K144O844OT44K544Gu57eK5oCl6YCj57Wh44CB5oOF5aCx?=
	=?utf-8?b?44KS56K66KqN44GX44Gm44GP44Gg44GV44GE44CC?=
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

ICANCg0KIA0KDQoNCg0K77yz77yt77yi77yj77yj77yh77yy77yk44Kv44Op44K344OD44Kv4oC7
5Lya5ZOhIOanmA0K5bmz57Sg44Gv5LiJ5LqV5L2P5Y+L44Kr44O844OJ44KS44GU5Yip55So44GE
44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrjgZPj
ga7jgZ/jgbPjgIHjgZTmnKzkurrmp5jjga7jgZTliKnnlKjjgYvjganjgYbjgYvjgpLnorroqo3j
gZXjgZvjgabjgYTjgZ/jgaDjgY3jgZ/jgYTjgYrlj5blvJXjgYzjgYLjgorjgb7jgZfjgZ/jga7j
gafjgIHoqqDjgavli53miYvjgarjgYzjgonjgIHjgrXjg7zjg5Pjgrnjga7jgZTliKnnlKjjgpLk
uIDpg6jliLbpmZDjgZXjgZvjgabjgYTjgZ/jgaDjgY3jgIHjgYrlrqLmp5jjga7jgqLjgqvjgqbj
g7Pjg4jjga7jgavnmbvpjLLjgZXjgozjgZ/pm7voqbHnlarlj7fjgavjgZTpgKPntaHjgYTjgZ/j
gZfjgb7jgZfjgZ/jgYzjgIHjgYrlrqLmp5jjgavpgKPntaHjgpLlj5bjgovjgZPjgajjgYzjgafj
gY3jgb7jgZvjgpPjgafjgZfjgZ/jgILjgZ3jga7jgZ/jgoHjgIHjgZTnmbvpjLLjgZXjgozjgabj
gYTjgovjg6Hjg7zjg6vjgqLjg4njg6zjgrnjgavjgabjgZTpgKPntaHjgZXjgZvjgabjgYTjgZ/j
gaDjgY3jgb7jgZfjgZ/jgIINCuOBlOWbnuetlOOCkuOBhOOBn+OBoOOBkeOBquOBhOWgtOWQiOOA
geOCteODvOODk+OCueOBruOBlOWIqeeUqOWItumZkOOBjOe2mee2muOBleOCjOOCi+OBk+OBqOOC
guOBlOOBluOBhOOBvuOBmeOBruOBp+OAgeS6iOOCgeOBlOS6huaJv+S4i+OBleOBhOOAgg0K44GU
5Yip55So56K66KqN44Gv44GT44Gh44KJDQoNCuKWoOazqOaEj+S6i+mghQ0K4oC744Kr44O844OJ
44Gu5YCL5Lq65oOF5aCx44Gr44KI44Gj44Gm44Gv6Zu76Kmx44Gn6YCj57Wh44GZ44KL5aC05ZCI
44KC44GU44GW44GE44G+44GZ44CCDQrigLvmraPnorrjgarmg4XloLHjga/lv4XjgZroqJjlhaXj
gZfjgabjgY/jgaDjgZXjgYTjgIINCuKWoOeZuuihjOiAhQ0K5LiJ5LqV5L2P5Y+L44Kr44O844OJ
5qCq5byP5Lya56S+DQpodHRwczovL3d3dy5zbWJjLWNhcmQuY29tLw0K44CSMTM1LTAwNjEg5p2x
5Lqs6YO95rGf5p2x5Yy66LGK5rSyMuS4geebrjLnlaozMeWPtyBTTUJD6LGK5rSy44OT44OrDQoN
CuKAig0KDQoNCuacrOODoeODvOODq+OBq+mWouOBmeOCi+S4gOWIh+OBruiomOS6i+OBrueEoeaW
rei7oui8ieOBiuOCiOOBs+WGjemFjeW4g+OCkuemgeOBmOOBvuOBmeOAgg0KQ29weXJpZ2h0IChD
KSBTdW1pdG9tbyBNaXRzdWkgQ2FyZCBDby4sIEx0ZC4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
