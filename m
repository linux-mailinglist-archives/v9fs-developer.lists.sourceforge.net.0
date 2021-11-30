Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7B4641AD
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Nov 2021 23:42:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1msBp8-00019j-HF; Tue, 30 Nov 2021 22:42:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@syqnvum.cn>) id 1msBp7-00019M-AJ
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 22:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tkqZou7OGnEBUPXf0Xy6jMZveHfLB+GX1YpB+tadFgg=; b=YPJGrxMxSZ9Lo+/UVOJXQUNf6d
 vWmmCzxZIwNgDbMNoJdFKNC8xfYszadMHVadXS85tXKcuGo0gUsoZpTi2VmvT0dsIJ52izBzkfPN3
 fgErRC198/gCFWwG2mMwfyK5J/RJpkDGB71K+/WuGSDOWI6a0zqEfJ3/KBoLrutpm3Qg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tkqZou7OGnEBUPXf0Xy6jMZveHfLB+GX1YpB+tadFgg=; b=d
 3Dx/WoV5bGBVO2KyfaPY92x6O4r+HVuF6ubH4E4UIYvS/dlYfmfqhwojy2wPCC+cpgOP/kHJDtpOe
 foC7Nh+Gujzho/Jn8jPR0QdoIi9j4VsbsNdoKEW/Zd5AIXjMWmTMw6AtzRZ5a/syl5gCXj9nnXgr7
 cfRENPlu5XR6xXK4=;
Received: from syqnvum.cn ([117.50.2.237] helo=mail.syqnvum.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msBp6-0007Te-Dd
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Nov 2021 22:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=syqnvum.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@syqnvum.cn;
 bh=tkqZou7OGnEBUPXf0Xy6jMZveHfLB+GX1YpB+tadFgg=;
 b=vVByoO4eC/iU1Ph97ytSPcFfiPBfjfTRmcFLdE32mkQ/FlNh1y9RcaqucsyNyxoY55KpZ9f7Vuz2
 4DOR+hy0kdbYFOzbH+66+6JBHYHSX+2e/dEld4J084JnFTIgtIDAvm3/ZGzFA4gIe3NzbfkerHTG
 k4j6ud0ZSWSrENdZJaQ=
Date: Wed, 1 Dec 2021 07:17:36 +0900
From: "Amazon.co.jp" <support-amazon.jp@syqnvum.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211201071741340544@syqnvum.cn>
Mime-Version: 1.0
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazon お客様 平素は、Amazonをご利用いただき、誠にありがとうございます。
    あなたのアカウントは使用不可になりました。 あなたは複数回間違いの�
    [...] 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: syqnvum.cn]
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: syqnvum.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [117.50.2.237 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: syqnvum.cn]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1msBp6-0007Te-Dd
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

IA0KDQoNCg0KQW1hem9uIOOBiuWuouanmA0K5bmz57Sg44Gv44CBQW1hem9u44KS44GU5Yip55So
44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQrj
gYLjgarjgZ/jga7jgqLjgqvjgqbjg7Pjg4jjga/kvb/nlKjkuI3lj6/jgavjgarjgorjgb7jgZfj
gZ/jgIINCuOBguOBquOBn+OBr+ikh+aVsOWbnumWk+mBleOBhOOBruODkeOCueODr+ODvOODieOC
kuWFpeWKm+OBl+OBn+OBruOBp+OAgeS7iuODkeOCueODr+ODvOODieOBr+OBmeOBp+OBq+S9v+eU
qOS4jeWPr+OBq+OBquOCiuOBvuOBl+OBn+OAguOCu+OCreODpeODquODhuOCo+OBruOBn+OCgeOA
geengeOBn+OBoeOBr+OBguOBquOBn+OBruOCouOCq+OCpuODs+ODiOOCkuS9v+eUqOS4jeWPr+OB
q+OBquOCi+OAgg0K44Ki44Kr44Km44Oz44OI44Gu6YCa5bi444KS5L2/55So44GZ44KL44Gf44KB
44Gr44CB5L2/55So5LiN5Y+v44Gu54q25oWL44KS5YGc5q2i44GX44Gm44CB5Zue5b6p44GZ44KL
44Gr44Gv5Lul5LiL44KS5pON5L2c44Gv5b+F6KaB44Gn44GZ44CCDQrkvZXjgpLjgZnjgovjgZnj
gbnjgY3jgafjgZnjgYvvvJ8NCuS7peS4i+OBuOOCouOCr+OCu+OCueOBruS4iuOAgUFtYXpvbuOB
ruOBlOWIqeeUqOeiuuiqjeOBq+OBlOWNlOWKm+OCkuOBiumhmOOBhOiHtOOBl+OBvuOBmeOAguOB
iuaJi+aVsOOBiuOBi+OBkeOBl+OBvuOBmeOBjOOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOB
n+OBl+OBvuOBmeOAgg0K44GK5a6i5qeY44GuIEFtYXpvbiDjgqLjgqvjgqbjg7Pjg4gNCkFtYXpv
buODgeODvOODoOOBr+OBguOBquOBn+OBruOCouOCq+OCpuODs+ODiOOBrueKtuaFi+OBjOeVsOW4
uOOBp+OBguOCi+OBk+OBqOOCkueZuuimi+OBl+OBvuOBl+OBn+OAguOCouOCq+OCpuODs+ODiOaJ
gOacieaoqeOBruiovOaYjuOCkuOBlOiHqui6q+OBp+ihjOOBhuWgtOWQiOOBr+OAgUFtYXpvbiDn
rqHnkIbjgrPjg7Pjgr3jg7zjg6vjgavjg63jgrDjgqTjg7PjgZfjgIHmiYDlrprjga7miYvpoIbj
gafjgYrmiYvntprjgY3jgY/jgaDjgZXjgYTjgIINCueKtuaFizogDQrnlbDluLjjga/mm7TmlrDl
voXjgaHjgafjgZkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBbWF6b27jgq/j
g6rjg4Pjgq8m44Ot44Kw44Kk44OzDQoNCg0KDQoNCg0KDQoNCkFtYXpvbuOCteODvOODk+OCueOD
geODvOODoA0KDQoNCg0KDQrCqSAxOTk2LTIwMjEsIEFtYXpvbi4gSW5jLiBvciBpdHMgYWZmaWxp
YXRlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
