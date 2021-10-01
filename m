Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D563941F12D
	for <lists+v9fs-developer@lfdr.de>; Fri,  1 Oct 2021 17:25:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mWKPT-0005pF-2x; Fri, 01 Oct 2021 15:25:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <grrrswa@etc-meisai.jp>) id 1mWKPJ-0005oq-Kj
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 15:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylot/XnG0ps49ZktIpsnYUbXf5GRQLA8SXRE04ge71k=; b=anQfE6ULnRDbnucBYSSwPIOW7V
 2y+tCVs6+esrrU5J0rJ6TMY7KwiaQR7TYd1AjHAdOfzZN4gSRrqt9gghfItzMsNSY/PSqh/4+yPrl
 jPs44/Bd/jwd16suZSByMrpqSvGHMCoJRAyRhSKg6dKVAN1SuEIAdKO8iNDC/vn7fCa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ylot/XnG0ps49ZktIpsnYUbXf5GRQLA8SXRE04ge71k=; b=A
 IrSLVLtLBKJCMIhVt4xTw22GzjHAZg5+jR+zF8j2Hc6BUTYSfkFYsPmeCSeyKqEr6cwyBEN4Cv2la
 iPLs/j2rEEQFhyfN5RhI0Nk24qV9HSLN+0SeRQdlEsStE6hqO6dxIMIELV4HMR/3U0WAQmv2ccZoX
 i/haz/xOSZq6Xh+M=;
Received: from [101.36.64.77] (helo=etc-meisai.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mWKPH-0000Ww-2Y
 for v9fs-developer@lists.sourceforge.net; Fri, 01 Oct 2021 15:25:04 +0000
Date: Fri, 1 Oct 2021 23:24:45 +0800
From: "etc-meisai.jp" <admin@ml.etc-meisai.jp>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211001232458132647@etc-meisai.jp>
X-Priority: 1 (Highest)
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  あなたのアカウントは停止されました ＥＴＣサービスをご利用いただきありがとうございます
    ＥＴＣサービスは無効になりました。引き続きサービスをご利用いただきたい場合は、下記�
    [...] 
 
 Content analysis details:   (6.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: etc-meisai.jp]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [101.36.64.77 listed in bl.score.senderscore.com]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [101.36.64.77 listed in dnsbl-1.uceprotect.net]
  2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
                             [101.36.64.77 listed in psbl.surriel.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mWKPH-0000Ww-2Y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?RVRD44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz?=
	=?utf-8?b?44OI44Gv5YGc5q2i44GV44KM44G+44GX44Gf77yB55Wq5Y+377yaNzM1?=
	=?utf-8?q?931322245?=
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

44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44Gv5YGc5q2i44GV44KM44G+44GX44GfDQoNCg0K
DQoNCg0KDQrvvKXvvLTvvKPjgrXjg7zjg5PjgrnjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLj
gorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZkg77yl77y077yj44K144O844OT44K544Gv54Sh5Yq5
44Gr44Gq44KK44G+44GX44Gf44CC5byV44GN57aa44GN44K144O844OT44K544KS44GU5Yip55So
44GE44Gf44Gg44GN44Gf44GE5aC05ZCI44Gv44CB5LiL6KiY44Oq44Oz44Kv44KI44KK6Kmz57Sw
44KS44GU56K66KqN44GP44Gg44GV44GE44CCIOKGkuOBlOWkieabtOOBr+OBk+OBoeOCieOBi+OC
iSDjgZTkuI3kvr/jgajjgZTlv4PphY3jgpLjgYrjgYvjgZHjgZfjgb7jgZfjgaboqqDjgavnlLPj
gZfoqLPjgZTjgZbjgYTjgb7jgZvjgpPjgYzjgIHkvZXjgajjgZ7jgZTnkIbop6Pos5zjgorjgZ/j
gY/jgYrpoZjjgYTnlLPjgZfjgYLjgZLjgb7jgZnjgIINCuKAu+OBquOBiuOAgTI05pmC6ZaT5Lul
5YaF44Gr44GU56K66KqN44GM44Gq44GE5aC05ZCI44CB6Kqg44Gr6YG65oa+44Gq44GM44KJ44CB
44Ki44Kr44Km44Oz44OI44KS44Ot44OD44Kv44GV44Gb44Gm44GE44Gf44Gg44GP44GT44Go44KS
6K2m5ZGK44GE44Gf44GX44G+44GZIOKAu+acrOODoeODvOODq+OBr+OAgemHjeimgeOBquOBiuef
peOCieOBm+OBqOOBl+OBpuODoeODvOODq+OBrumFjeS/oeOCkuW4jOacm+OBleOCjOOBpuOBhOOB
quOBhOOBiuWuouOBleOBvuOBq+OCguOBiumAgeOCiuOBleOBm+OBpuOBhOOBn+OBoOOBhOOBpuOB
iuOCiuOBvuOBmeOAguS9leWNkuOBlOS6huaJv+OBj+OBoOOBleOBhOOAgiDigLvjgZPjga7jg6Hj
g7zjg6vjgavlv4PlvZPjgZ/jgorjga7jgarjgYTjgYvjgZ/jga/jgIHmgZDjgozlhaXjgorjgb7j
gZnjgYzvvKXvvLTvvKPjgqbjgqfjg5bjgrXjgqTjg4jjgojjgorjgYrllY/jgYTlkIjjgo/jgZvj
gY/jgaDjgZXjgYTjgILmsLjkuYXjg63jg4Pjgq/jgIIgDQoNCueiuuiqjeeUqOOCouOCq+OCpuOD
s+ODiA0KDQoNCg0KDQoNCu+8pe+8tO+8o+WIqeeUqOeFp+S8muOCteODvOODk+OCueS6i+WLmeWx
gCBFYXN0IE5pcHBvbiBFeHByZXNzd2F5IENvbXBhbnkgTGltaXRlZCwgTWV0cm9wb2xpdGFuIEV4
cHJlc3N3YXkgQ29tcGFueSBMaW1pdGVkIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
