Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C564D70DD
	for <lists+v9fs-developer@lfdr.de>; Sat, 12 Mar 2022 21:29:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nT8F7-0000q6-RB; Sat, 12 Mar 2022 20:29:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <admin@foxmail.com>) id 1nT8F6-0000q0-3k
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Mar 2022 20:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fuBJ++TZNOG8XWK8AF5ShEnd3f6cq4RFhCjiP0dfgN0=; b=hORs4j8xYCB2M2FJx7jFGQwdL1
 JFlxrNoKuThkbuSO7Um3HNjVwZTif/Q5slTA+SZffjcj2P+KLJBacjK6uOB4tiklrs1xsm1af/QUt
 6SaW3aClbwdUMEwbVCoNDcAJjNStjnl1oYIWK9htvnFspXURyDKqvTG2gX9wQ8MZOFQw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fuBJ++TZNOG8XWK8AF5ShEnd3f6cq4RFhCjiP0dfgN0=; b=T
 eN6RI6iTX1oQ5NsRJYkxOhtzeZRNOd6cc5Zbj/oIEsbk73+/LUfTcgtSDl5aBIWG3vugJsMxwFg5G
 sL9MVWPo+JFq9RiSWoi1xRZNe5K0iucWGY+kIphEocxfDUWSTw8U741fGWWhQzLCvPLnP5Mrd4NqC
 j1NlAbGyUhUgQxrs=;
Received: from [152.32.203.86] (helo=aeon.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nT8N0-00DdQM-LU
 for v9fs-developer@lists.sourceforge.net; Sat, 12 Mar 2022 20:29:47 +0000
Message-ID: <20220313042946770262@foxmail.com>
From: =?utf-8?B?44Kk44Kq44Oz44Kv44Os44K444OD44OI44K144O844OT44K55qCq5byP5Lya56S+?=
 <admin@foxmail.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 13 Mar 2022 04:29:39 +0800
MIME-Version: 1.0
X-mailer: Yub 2
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  AEON CARDをご利用いただき、誠にありがとうございます。
    このたび、お客さまのお取引につきまして、第三者による不正使用の可能性を検知したため�
    [...] 
 
 Content analysis details:   (6.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [152.32.203.86 listed in dnsbl-1.uceprotect.net]
  2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
                             [152.32.203.86 listed in zen.spamhaus.org]
  0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
                             [URIs: c4f6005.cn]
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=aeon.co.jp;ip=152.32.203.86;r=util-spamd-1.v13.lw.sourceforge.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [admin[at]foxmail.com]
  0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.0 SPOOFED_FREEMAIL_NO_RDNS From SPOOFED_FREEMAIL and no rDNS
  1.3 SPOOFED_FREEMAIL       No description available.
X-Headers-End: 1nT8N0-00DdQM-LU
Subject: [V9fs-developer] =?utf-8?b?W0Flb25d44Kk44Kq44Oz44Kr44O844OJ44GU?=
 =?utf-8?b?6YeN6KaB44Gq44GK55+l44KJ44Gb?=
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

QUVPTiBDQVJE44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG
44GU44GW44GE44G+44GZ44CCDQrjgZPjga7jgZ/jgbPjgIHjgYrlrqLjgZXjgb7jga7jgYrlj5bl
vJXjgavjgaTjgY3jgb7jgZfjgabjgIHnrKzkuInogIXjgavjgojjgovkuI3mraPkvb/nlKjjga7l
j6/og73mgKfjgpLmpJznn6XjgZfjgZ/jgZ/jgoHCt+S4gOaZgueahOOBq+OBiuWPluW8leOCkuOB
iuatouOCgeOBl+OBvuOBl+OBn+OAgg0K44GU5pys5Lq644GV44G+44Gu44GU5Yip55So44Gn44GC
44Gj44Gf5aC05ZCI44Gv44CB5aSn5aSJ44GK5omL5pWw44KS44GK44GL44GR44GE44Gf44GX44G+
44GZ44GM44CB5YaN5bqm44GU5Yip55So44KS44GK6aGY44CB55Sz44GX44GC44GS44G+44GZ44CC
DQoo44Kk44Oz44K/44O844ON44OD5bqX6IiX44Gn44Gu44GU5Yip55So44Gu5aC05ZCI44Gv44CB
44GK5Y+W5byV44Gu5oiQ56uL54q25rOB44KS44GU56K66KqN44Gu44GG44GI44CB5YaN5bqm44GU
5Yip55So44KS44GK5Y6f44GE44Gf44GX44G+44GZ44CCKQ0K44CQ5Y+W5byV5bm05pyI5pelXToy
MDIyLzMvMTMNCuOAkOOBiuWVj+WQiOOBm+eVquWPt106Mzk5OS01NzQwLTI2NjctODU4MA0KDQrj
gZTliKnnlKjnorroqo3jga/jgZPjgaHjgokNCmh0dHBzOi8vYWVvbl9jb19qcC5jNGY2MDA1LmNu
DQrjgZTmnKzkurrjgZXjgb7jga7jgZTliKnnlKjjgafjgarjgYTloLTlkIjjgavjga/jgIHku4rl
vozjgIHlronlhajjgavjgqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY/jgZ/jgoHjgIHj
gqvjg7zjg4njga7lt67mm7/Ct+OBiOetieOBiuaJi+e2muOBjeOBjOW/heimgeOBqOOBquOCiuOB
vuOBmeOAguOBiuaJi+aVsOOBp+OBmeOBjOOAgeS4i+iomA0K44CQ5pys44Oh44O844Or5bCC55So
44OA44Kk44Ok44Or44CR44G444GK6Zu76Kmx44GP44Gg44GV44GE44G+44GZ44KI44GG44GK6aGY
44GE44Gf44GX44G+44GZ44CCDQoNCuOBlOW/g+mFjeOBqOOBlOS4jeS+v+OCkuOBiuOBi+OBkeOB
hOOBn+OBl+OBvuOBmeOBjOOAgeS9leWNkuOBlOeQhuino+iznOOCiuOBvuOBmeOCiOOBhuOBiumh
mOOBhOeUs+OBl+OBguOBkuOBvuOBmeOAgg0KwrfkuI3mraPlj5blvJXjga7nm6PoppbkvZPliLbj
gavjgaTjgYTjgaYNCigxKeW8iuekvuOBp+OBr+OBiuWuouOBleOBvuOBjOeKr+e9quOBq+W3u+OB
jei+vOOBvuOCjOOBquOBhOOCiOOBhuOAgeOBiuWuouOBleOBvuOBruOCq+ODvOODieOBq+S4jeWv
qeOBquOBiuWPluW8leOBjOOBquOBhOOBizI05pmC6ZaTMzY15pel44Oi44OL44K/44Oq44Oz44Kw
KOS4jeato+S9v+eUqOOBruebo+imlinjgpLooYzjgaPjgabjgYrjgorjgb7jgZnjgIINCigyKeOB
iuWPluW8leOBruebo+imluOBq+OCiOOCiuS4jeato+WPluW8leOBruWCvuWQkeOBqOWQiOiHtOOB
l+OBn+OBiuWPluW8leOCkuS/neeVmeOBruOBhuOBiOOAgeacrOODoeODvOODq+OCkumFjeS/oeOB
l+OBpuOBiuOCiuOBvuOBmeOAgg0KKDMp5byK56S+44Gu44Kr44O844OJ5LiN5q2j5L2/55So44Gr
5a++44GZ44KL5Y+W57WE44G/44Gr44Gk44GE44Gm44Gv44CB6Kmz44GX44GP44Gv5byK56S+44Ob
44O844Og44Oa44O844K444KS44GU6Kan44GP44Gg44GV44GE44CCDQogDQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
