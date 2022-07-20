Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B80057BDE7
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Jul 2022 20:35:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oEEY4-0003xV-GS; Wed, 20 Jul 2022 18:35:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <c-smart-account@myqhix.shop>) id 1oEEY4-0003xP-2a
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jul 2022 18:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KTrAOXmhXu2QM2B3CPEg6XzdvFa4akSQCPMnr6gwDb4=; b=gzcBgS+ibjrIN02x6zUsouyW2R
 GAlEuZ59doaDsHta0LN21Qn5027zHvWhPF9BE2Z8biZfDdBw+zwFlKeDPK2jumxNpRAzIBEqQJUvf
 SeAM0SGH+QJycsmgn60dJQL2Bk1cCah7DUmnLTgJx34L59k9OEyS3maljg4iekszqQqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KTrAOXmhXu2QM2B3CPEg6XzdvFa4akSQCPMnr6gwDb4=; b=P
 bnVZBstMjQdxfsfsn5rLKb3ZgRFcjuN+EwUBQqn7gwPdfdGyAdz6xdUdkYjKnZ+3IuH2qTFwvCaVr
 KmTjZruZsqTPeHqxzKeOXViEH+Ez+0mAMmABBIfI1RJLorzWhtNRwex8T2fbuy4W6Q5m+mTTPWlXw
 ZCa+wR5yVbdxrEhg=;
Received: from myqhix.shop ([116.63.236.191])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oEEY2-005K0j-L8
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jul 2022 18:35:52 +0000
Received: from oifbis (unknown [27.156.205.216])
 by myqhix.shop (Postfix) with ESMTPA id 051BCC51CD
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 21 Jul 2022 02:19:28 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 myqhix.shop 051BCC51CD
Date: Thu, 21 Jul 2022 02:19:15 +0800
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220721021929571506@myqhix.shop>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 4.9 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  応募するLINE（ID）：a9585 職種：自宅にいながら好きな時間でOK
    [業務委託]オンラインアルバイト、商店の人気を高める
    報酬：毎日八万円から十万円 
 
 Content analysis details:   (4.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [116.63.236.191 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1oEEY2-005K0j-L8
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5Zyo5a6F5Yuk5YuZ44Gr6YGp44GX44Gf44Ki?=
 =?utf-8?b?44Or44OQ44Kk44OI44Gn44GZYw==?=
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
From: "2022-07-21 02:19:29 via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "2022-07-21 02:19:29" <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5b+c5Yuf44GZ44KLTElORe+8iElE77yJ77yaYTk1ODUNCiAgICAgICAgICANCuiBt+eoru+8muiH
quWuheOBq+OBhOOBquOBjOOCieWlveOBjeOBquaZgumWk+OBp09LDQogICAgICBb5qWt5YuZ5aeU
6KiXXeOCquODs+ODqeOCpOODs+OCouODq+ODkOOCpOODiOOAgeWVhuW6l+OBruS6uuawl+OCkumr
mOOCgeOCiw0KDQrloLHphazvvJrmr47ml6XlhavkuIflhobjgYvjgonljYHkuIflhoYNCg0K5L2c
5qWt5pmC6ZaT77yaW+alreWLmeWnlOiol10wMDowMO+9njAwOjAwDQrlnKjlroXjg6/jg7zjgq/j
gavjgarjgorjgb7jgZnjga7jgafjgIENCuOBguOBquOBn+OBruOBlOmDveWQiOOBq+WQiOOCj+OB
m+OBpueEoeeQhuOBruOBquOBhOevhOWbsuOBpw0K5LuV5LqL44KS6KGM44Gj44Gm44GP44Gg44GV
44GE44CCDQrjgZToh6rliIbjga7lpb3jgY3jgarjgr/jgqTjg5/jg7PjgrDjgIENCuWlveOBjeOB
quOBiuS7leS6i+OBruOBv+OCkuOBmeOCi+OBoOOBkeOBp09L44Gn44GZ44CCICAgDQoNCue1jOmo
k+ODu+izh+agvO+8miDimIXlrabnlJ/jg7vjg5Xjg6rjg7zjgr/jg7zjg7vml6LlqZrogIXjga7m
lrnjgIHnmobjgZXjgpPlpKfmrZPov47vvIENCuKYheW/heimgee1jOmok+ODu+izh+agvOOBr+OB
lOOBluOBhOOBvuOBm+OCk+OAgg0K4piF5bGl5q205pu45LiN6KaB44CB5p2l56S+5LiN6KaBDQri
mIXmnKrntYzpqJPlpKfmrZPov47imIUNCuS4u+WppuOCkuOBr+OBmOOCgeOAgVfjg6/jg7zjgqvj
g7zjgarjgakNCjIw5Luj772eNDDku6Pjgb7jgafluYXluoPjgYTlsaTjga7jgrnjgr/jg4Pjg5Xj
gYzlpJrmlbDmtLvouo3kuK3vvIENCuKAu+epuuOBhOOBn+aZgumWk+OBq+OBiuWwj+mBo+OBhOeo
vOOBjuOBquOBqeOAgemDveWQiOOBq+WQiOOCj+OBm+OBpuOBiuS7leS6i+WPr+iDveOBp+OBmeOA
ggpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
