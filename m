Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A474D9549
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Mar 2022 08:29:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nU1cX-0005sY-Mb; Tue, 15 Mar 2022 07:29:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <goodsmall4@goodmallsf.ga>) id 1nU1cV-0005sS-Nn
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Mar 2022 07:29:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Eq8NVCtAlyxaZmodScLML1MBb8jv+Ge0AD6L7lC25o=; b=m7jhbSp4JspKvV2YwCcmjOhk63
 AsO3gmqnlciyhM9MLHzpoCTt4glTf7DnX7n7eP1UZRwI0+uqY/oMJN/2Xo0tlIsszB+QJoS8uAWSP
 XH7mfCLymZfMf2GqeM/F5EztzKzIXc2sZd4A0KU3tocK1UQTPNfxKRa3JsUhPeDxZcXk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9Eq8NVCtAlyxaZmodScLML1MBb8jv+Ge0AD6L7lC25o=; b=I
 kOpPd+LpimaAzsNU/ea6ESukLnw/4GyOImIh2XqRa1IYksMqz7yCOUUqCaXwBqQ0tiO7HcZHnofLN
 LfmoyKP15KSHaSDDF7da+EUT7xsI/V0iWU83GGv/GeuKz9NS2F+IkSOx6YywHjwvGvouIcWsu7uhB
 BOgnKuXncIGLxUW4=;
Received: from hwsrv-949230.hostwindsdns.com ([142.11.196.40])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nU1cB-00033V-L0
 for v9fs-developer@lists.sourceforge.net; Tue, 15 Mar 2022 07:29:25 +0000
Received: from lmvrtlqg (unknown [154.204.45.248])
 by hwsrv-949230.hostwindsdns.com (Postfix) with ESMTPA id 9491E2029D7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 15 Mar 2022 15:11:01 +0800 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmallsf.ga;
 s=default; t=1647328262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=9Eq8NVCtAlyxaZmodScLML1MBb8jv+Ge0AD6L7lC25o=;
 b=OfLD5VlZJypIZHrwFnkwXpkGLJl1spq6abXb6TFgp/6BnRp6KbsiTbssjAozksJXs3qiAC
 VRWA+eNHrHBeczqh1V2l3+QzEHqGmYPoTgdDmjNpNl5V9I15eDoyDNk0UmZkrRf/ckXU2b
 HPg+k9nzFzEloX/KkO2MFWSnPp+oQHU=
Message-ID: <4B1FA9DA13C192513D274699FB79368C@lmvrtlqg>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 15 Mar 2022 15:10:53 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam: Yes
X-Spam-Score: 3.5 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  New arrivals from Rolex ロレックスからの新着 SAVE
    10% 2日のみ-すべての時計で動作します 利用規約：メールユーザーのみが利用可能
    S h o p N o w 
 
 Content analysis details:   (3.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: watch-goodsjp.ga]
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: benchmarkemail.com]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: images.benchmarkemail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_SIZE_LARGE   BODY: HTML font size is large
  0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image
                             area
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1nU1cB-00033V-L0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44Ot44Os44OD44Kv44K544Gu5q+O5bm05oGS?=
	=?utf-8?b?5L6L44Gu5paw5L2c44Oq44Oq44O844K544Gr44Gc44Gy44GU5Y+C5Yqg?=
	=?utf-8?b?44GP44Gg44GV44GE44CC?=
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
From: "Rolex.jp via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "Rolex.jp" <goodsmall4@goodmallsf.ga>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KTmV3IGFycml2YWxzIGZyb20gUm9sZXgNCuODreODrOOD
g+OCr+OCueOBi+OCieOBruaWsOedgA0KU0FWRSAxMCUgDQoNCjLml6Xjga7jgb8t44GZ44G544Gm
44Gu5pmC6KiI44Gn5YuV5L2c44GX44G+44GZDQrliKnnlKjopo/ntITvvJrjg6Hjg7zjg6vjg6bj
g7zjgrbjg7zjga7jgb/jgYzliKnnlKjlj6/og70NCiANCg0KDQoNCg0KDQoNClMgaCBvIHAgICBO
IG8gdw0KDQoNCg0KDQoNCg0KDQoNCg0KDQrpq5jlk4Hos6rjga7jg63jg6zjg4Pjgq/jgrkNCuaW
memHkeOCkuaUr+aJleOCj+OBmuOBq+eEoeaWmeOBpzHjgpLlhaXmiYsNCumAgeaWmeeEoeaWmSAN
CuWFqOWbvTIwMOS6uuOBruW5uOmBi+OBquimluiBtOiAheOCkueEoeaWmeOBpw0KDQoNCg0KDQoN
Cg0KUyBoIG8gcCAgIE4gbyB3DQoNCg0KDQoNCiANCiAg44GZ44G544Gm44Gu5ZWG5ZOB44Gv5Luj
6YeR5byV5o+b44Gn44CB5a6J5b+D44GX44Gm44GU5rOo5paH44GE44Gf44Gg44GR44G+44GZ44CC
44Os44K344O844OI44Gr44K144Kk44Oz44GZ44KL6Zqb44Gr5ZWG5ZOB44Gu5ZOB6LOq44KS56K6
6KqN44Gn44GN44CB44GU5rqA6Laz44GE44Gf44Gg44GR44Gq44GE5aC05ZCI44Gv44GE44Gk44Gn
44KC6L+U5ZOB44O75Lqk5o+b44GM5Y+v6IO944Gn44GZ77yB44GK5qW944GX44G/44Gr77yB56eB
44Gf44Gh44Gu6ZW35pyf55qE44Gq6aGn5a6i44Gr44Gq44KLDQoNCg0KDQogDQogCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
