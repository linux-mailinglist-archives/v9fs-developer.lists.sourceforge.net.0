Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DACB841B110
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Sep 2021 15:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d6z1pGQqrOAu47EjUSu+R/kevSE0CubvHER7vrN+ecI=; b=jOXKv85HStsTMFRdVMal4IuxvW
	VsejSC5aAsWFcjfojh5P4esBrB4xrMNw/fZtXZ06XS7ZisWreunOYMhuBpF+KD1Ewmli8xjku+DLM
	j0deMPT1KA+kmQxjfXY+bQX8QmRRZj8oIzFJ46NBgYx916ggjYV4L/8urYWBRmSFhfqg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mVDQ4-0005Ig-Hd; Tue, 28 Sep 2021 13:45:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mail@wg5oecm.cn>) id 1mVDQ2-0005ID-Ke
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Sep 2021 13:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B82O4V+7jArmmooy2vCkP0yOZ3Q2BPz6GV8bKzYIAPM=; b=JIYhph7XzQoX5ZLyLHCCx4AChm
 jOiwrGVyj/5rBNNiot/OSmCrQvnPKDfvYHmoBpmn7PbwCRGa+9AG5n4qpGwx0KEsE22y/vLtPaWFD
 ECsan48dGP/4iW88fSUgDa3yIVa7cNqBDskVGW0PVnD3FpzWNMoF8W4iLKc0xITgOjlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=B82O4V+7jArmmooy2vCkP0yOZ3Q2BPz6GV8bKzYIAPM=; b=C
 SJFd2VC3YnoL14eV7UR5LnygXNwOBehbt3jxY0zMUt2XxX+Ry9FKIAoyZcacx0rdZ2Hh4LbL5UQoQ
 Il0uIm58MLr7s68382DBZxNhaujiqaowuyQPCkLGPJK+6GkNfj8eQUIafDfsiZ9oEwS/HFLtzoj6h
 uSB9Z4WsJk5eLXGQ=;
Received: from [45.156.26.175] (helo=wg5oecm.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mVDPy-009X1v-Fy
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Sep 2021 13:45:14 +0000
Received: from wveu (unknown [185.202.103.212])
 by wg5oecm.cn (Postfix) with ESMTPA id D33E3346B5C7
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 28 Sep 2021 21:44:22 +0800 (CST)
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 28 Sep 2021 21:40:29 -0800
Message-ID: <0042ace29a0b$98d95d1a$b38f2e12$@wveu>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  客様の注文とamazonアカウントを停止させていただいております、請求先住所が変更されたなど。アカウントにログインして画面の指示に従うことで�
    [...] 
 
 Content analysis details:   (3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: jpbkgp.cn]
  2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
                             date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mVDPy-009X1v-Fy
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
From: "Amazon.co.jp via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "Amazon.co.jp" <mail@wg5oecm.cn>
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
MjQ1LTIwMjEwOTI4LTc2MjRb5bqX6IiX5Y+X5LuY5pel5pmCXSAyMDIxLzA5LzI4W+OBiuaUr+aJ
leOBhOaWueazlV0g44Kv44Os44K444OD44OI44Kr44O844OJ5rG65riIIA0KICDnorroqo3nlKjj
gqLjgqvjgqbjg7Pjg4gNCg0KICAgQW1hem9uLmNvLmpw44Gu44G+44Gf44Gu44GU5Yip55So44KS
44GK5b6F44Gh44GX44Gm44GK44KK44G+44GZ44CCICAgwqkgMTk5Ni0yMDIxLCBBbWF6b24uY29t
LCBJbmMuIG9yIGl0cyBhZmZpbGlhdGVzDQogDQoNCg0KDQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
