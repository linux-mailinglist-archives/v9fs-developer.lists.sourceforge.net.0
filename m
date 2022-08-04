Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AF158A400
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Aug 2022 01:48:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oJka9-0007cI-ED; Thu, 04 Aug 2022 23:48:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amazon@sr9su.cn>) id 1oJka7-0007cB-4m
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Aug 2022 23:48:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x0lFenf+voMbYHAq+3iTx7QaAaB55Hn2F5xznqSbRxw=; b=E5mjLMeDBLLXUco2Vncc/Ac8b4
 gAAXjESfzmhmix89C+rEd4A9hdJU+TDOjvwRkmxCDgrETh2/+0of35iCKPkrZQIAKNDfhmV3iTEV2
 7aEZd876BrOKG+eLzMYFqEtcK0eZkBaE/46JLulQk4RSumbc5wm1bR/y/ZTiq+nMmpc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=x0lFenf+voMbYHAq+3iTx7QaAaB55Hn2F5xznqSbRxw=; b=j
 qBHaeuFqA2P5O4WUrBsGZrpy6fPlnn4jZK3qOd6TomQYRoCjKJc45aZOwGh/R8nG4BxSlY2dOg+42
 RSMD44A20oQl+IMROpPCbPF6beK5pbbJDneWB3X7rwR1gqXfmIWH3ASlL2KD4uEoNY35omzY3TkXK
 65nF/egkTdfbz8hc=;
Received: from mail.sr9su.cn ([45.135.134.126] helo=sr9su.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJka6-0006ve-Kb
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Aug 2022 23:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=key1; d=sr9su.cn;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type; i=amazon@sr9su.cn;
 bh=x0lFenf+voMbYHAq+3iTx7QaAaB55Hn2F5xznqSbRxw=;
 b=EfdqJYpWu19dP33HK/pa5ERoc2gqz/wXXpRsXjPGveH6ceDSBI6P3U0OsM7dtLHHZ6sitX93M5xk
 7Rq7hDEUb4kVlG1BdaINi+yysXCPf8vqguDzTxYVofRkTxXtGIiqWQpav3ngkyhK/umRrEw9nWFB
 Mt3ilL+RKUGomHv6VHY/m2p+p20qfgIIpRhfWKDWfE48zd2xcDGA77PYhzLY/aa4J4boH6nQSYKi
 ZwDx0HryUIq8DtvR9Se37L22PvcaWJZ7Ry7BRR0NEEuP2c0PPcIbjHhXM1fdlLzQSl9hvA3/zlGc
 FIpTTPW1TmhPYiK12TXYtk5ks62t6hixGVDTsg==
Message-ID: <0A8885DFEE6F39C1DF7E0A94981FF806@sr9su.cn>
From: Amazon <amazon@sr9su.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 5 Aug 2022 08:47:37 +0900
MIME-Version: 1.0
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonをご利用いただきありがとうございます
    アカウントで異常なアクティビティが検出されたため、注文とAmazonアカウントを停止しました。
    ログイン日時: Friday, August 5, 2022 
 
 Content analysis details:   (7.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: sr9su.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [45.135.134.126 listed in zen.spamhaus.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: vsrsv.cn]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: vsrsv.cn]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: sr9su.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1oJka6-0006ve-Kb
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
44KS5YGc5q2i44GX44G+44GX44Gf44CCDQoNCuODreOCsOOCpOODs+aXpeaZgjogRnJpZGF5LCBB
dWd1c3QgNSwgMjAyMg0KDQrms6jmlofnlarlj7fvvJo5NTMtMjg5ODg0Mi05ODY4Mjk4DQoNCklQ
44Ki44OJ44Os44K5OiA2MC42OC4zMS4zMSANCg0K44Ki44Kr44Km44Oz44OI44G444Gu44Ki44Kv
44K744K544KS5YaN6ZaL44GZ44KL44Gr44Gv44CB44K144Kk44Oz44Kk44GX44Gm55S76Z2i44Gu
5oyH56S644Gr5b6T44Gj44Gm44GP44Gg44GV44GE44CCDQoNCuW/heimgeOBquaDheWgseOCkuOB
lOaPkOS+m+OBhOOBn+OBoOOBhOOBn+OCieOAgeW9k+OCteS7huODiOOBp+iqv+afu+OBruS4iuOA
gTI05pmC6ZaT5Lul5YaF44Gr6L+U5L+h44GE44Gf44GX44G+44GZ44CCDQoNCuacrOS7tuOBq+OB
pOOBhOOBpuOBlOi/t+aDkeOCkuOBiuOBi+OBl+OBvuOBl+OBn+OBk+OBqOOCkuOBiuipq+OBs+eU
s+OBl+S4iuOBkuOBvuOBmeOAgg0KDQogDQoNCuaJv+iqjeOBvuOBn+OBr+WQpuiqjeOBl+OBpuOB
j+OBoOOBleOBhA0KDQogDQoNCuOCouOCq+OCpuODs+ODiOOCueODmuOCt+ODo+ODquOCueODiA0K
DQogDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
