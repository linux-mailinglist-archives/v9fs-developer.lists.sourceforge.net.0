Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DA589542
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Aug 2022 02:21:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oJOcb-0008Ky-Tz; Thu, 04 Aug 2022 00:21:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amazon@qu7yv.cn>) id 1oJOca-0008Ks-42
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Aug 2022 00:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VJ0EjFP263juMKyllyiwcxLptV6YJNNeT/au1NIjISw=; b=ReFDUd3H6LMwLMBwXrboaqKOFP
 zi1qEjCJ19vEQxjf3myJprCeZx6TgoYVoIli5uBlkd4ip39bIV0p+XtC7cyFjGwsAnsuah4fR6y2h
 JwLMAWRHfjjPKBcH4jniFsjIBRR0w1KC1a7VNTfDkPTnJhI6ltiD8WACR5yXNGrcAxyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VJ0EjFP263juMKyllyiwcxLptV6YJNNeT/au1NIjISw=; b=L
 wIfIByhwWA9885tYfgls2UiI97Ld6BBId/XKlNAeWHk1G1a3iY5uDndQlswXV+9m4E8J0iHIOuPAx
 xEWFle+haPIkIzqunTVLdXeYbSuawOZYNuULaQN2Ux4+tOo+3ApnsTcBpsJAQwMPpFc/YDrhgdL2L
 N073B2cHXyiZvOLA=;
Received: from mail.qu7yv.cn ([193.53.127.85] helo=qu7yv.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJOcT-0001c8-TV
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Aug 2022 00:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=key1; d=qu7yv.cn;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type; i=amazon@qu7yv.cn;
 bh=VJ0EjFP263juMKyllyiwcxLptV6YJNNeT/au1NIjISw=;
 b=NnoUzOPCu7H9P+XvPaIj34GxU4R6xWxYQyq0gZTe6p0wqGRJJImP7CgXAI/wfcXSGEaIOH4Qfzx/
 9ZVGoe5reuUcEoXI3EwO+jMtp0ClnJee7T5kCy/nuDVDMsfrBsx8EwGw9kCM6KKvPWbVpPFnLovz
 NCD88MYjv8KU58pTMrozyZvBqNEGsky6cIQlim8QPsSq9PMmBwCDCv+nC/DU1U3nJaVBi0Fo4h3o
 bEtpvxn+xAk0QlNdzzLX09zSSWP1tv90fn2acBDu/XxcS+PuMFvmZeLvSysKG6/BMPPLQz6zgVtG
 C2I6iB6a0vqT7yujsvRoAMveKnXpPSvJtYaT7g==
Message-ID: <D74369DB5FE73A9F62DD6BE24B998387@qu7yv.cn>
From: Amazon <amazon@qu7yv.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Thu, 4 Aug 2022 09:20:30 +0900
MIME-Version: 1.0
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonをご利用いただきありがとうございます
    アカウントで異常なアクティビティが検出されたため、注文とAmazonアカウントを停止しました。
    ログイン日時: Thursday, August 4, 2022 
 
 Content analysis details:   (7.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: qu7yv.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [193.53.127.85 listed in zen.spamhaus.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: rrxrx.cn]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: qu7yv.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1oJOcT-0001c8-TV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpw44KS44GU5Yip55So44GE?=
	=?utf-8?b?44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ?=
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

DQpBbWF6b27jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTj
gb7jgZkNCg0K44Ki44Kr44Km44Oz44OI44Gn55Ww5bi444Gq44Ki44Kv44OG44Kj44OT44OG44Kj
44GM5qSc5Ye644GV44KM44Gf44Gf44KB44CB5rOo5paH44GoQW1hem9u44Ki44Kr44Km44Oz44OI
44KS5YGc5q2i44GX44G+44GX44Gf44CCDQoNCuODreOCsOOCpOODs+aXpeaZgjogVGh1cnNkYXks
IEF1Z3VzdCA0LCAyMDIyDQoNCuazqOaWh+eVquWPt++8mjk1My0yODk4ODQyLTk4NjgyOTgNCg0K
SVDjgqLjg4njg6zjgrk6IDYwLjY4LjMxLjMxIA0KDQrjgqLjgqvjgqbjg7Pjg4jjgbjjga7jgqLj
gq/jgrvjgrnjgpLlho3plovjgZnjgovjgavjga/jgIHjgrXjgqTjg7PjgqTjgZfjgabnlLvpnaLj
ga7mjIfnpLrjgavlvpPjgaPjgabjgY/jgaDjgZXjgYTjgIINCg0K5b+F6KaB44Gq5oOF5aCx44KS
44GU5o+Q5L6b44GE44Gf44Gg44GE44Gf44KJ44CB5b2T44K15LuG44OI44Gn6Kq/5p+744Gu5LiK
44CBMjTmmYLplpPku6XlhoXjgavov5Tkv6HjgYTjgZ/jgZfjgb7jgZnjgIINCg0K5pys5Lu244Gr
44Gk44GE44Gm44GU6L+35oOR44KS44GK44GL44GX44G+44GX44Gf44GT44Go44KS44GK6Kmr44Gz
55Sz44GX5LiK44GS44G+44GZ44CCDQoNCiANCg0K5om/6KqN44G+44Gf44Gv5ZCm6KqN44GX44Gm
44GP44Gg44GV44GEDQoNCiANCg0K44Ki44Kr44Km44Oz44OI44K544Oa44K344Oj44Oq44K544OI
DQoNCiANCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
