Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE5453C1A2
	for <lists+v9fs-developer@lfdr.de>; Fri,  3 Jun 2022 03:41:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nwwJo-0004nX-23; Fri, 03 Jun 2022 01:41:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <eki-net-tester@gbnce.cn>) id 1nwwJl-0004nQ-JI
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jun 2022 01:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yTdLI7M2/KDswrcDzNxnRiVIc6oHghFFjHuF3YPCD/Q=; b=jqPM4K5Ab/ZkpvWKFC5ke7YXxY
 NaZw0R6zcqpy39DyciFGKdLH/viWG+5bFCY8Ge58eoI9l5r1ZRFZ6sMrRphAMYMp6Spw9hPzSNlNK
 iESYKxgP0za0cvCd1/YsNt/EJbCkm4XjR/dGNN+2knhtlTC8mA6KxRaaiPep/YfjgjXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yTdLI7M2/KDswrcDzNxnRiVIc6oHghFFjHuF3YPCD/Q=; b=N
 6H6iaPckIY4u9vlFpL5DEDGBM7ivmqvn/PTgDGyna5guUFZkW7E2uxiozfzKet97ZYWquDylkcgAH
 a52+zZW0P1J/KIZU2DlJDps7pOl9hDYM6fsj/Se41a/4wTGFMRv/fr6GFtGcXLDu1vO/R7pk009Cs
 4To+9c4FiTJcJ9zc=;
Received: from [202.36.61.153] (helo=mail.gbnce.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwwJg-0008Ev-Pa
 for v9fs-developer@lists.sourceforge.net; Fri, 03 Jun 2022 01:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=gbnce.cn;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=eki-net-tester@gbnce.cn;
 bh=yTdLI7M2/KDswrcDzNxnRiVIc6oHghFFjHuF3YPCD/Q=;
 b=eT5VEuy4700ba6iIQDDYKZ6JojDmis7N0lLDa0N01Fl3zjgEAsdzMs1+gJQHv1adwnsx4rMlqlav
 XS7X29Xj05Lv8leM8Lr4LR7XagGrfTX68YwfB8gj7eXP+zQIEUz2p+nyEwHxboY/sGq7zMgbxzO0
 SbGCsKEFIur8z15r6eo=
Message-ID: <20220603092120803823@gbnce.cn>
From: =?utf-8?B?44CM44GI44GN44Gt44Gj44Go44CN?= <eki-net-tester@gbnce.cn>
To: <v9fs-developer@lists.sourceforge.net>
Date: Fri, 3 Jun 2022 09:21:09 +0800
MIME-Version: 1.0
X-Spam-Score: 5.6 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  「えきねっと」をいつもご利用してありがとうございました。
    「えきねっと」の利用規約と会員資格は6月1日(水)に変更されており、アカウント情報を更新してお願いいたします。6月10日(金)の締め切りまでに更�
    [...] 
 
 Content analysis details:   (5.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: aixuh.cn]
  0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
                             [URIs: aixuh.cn]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nwwJg-0008Ev-Pa
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ44GI44GN44Gt44Gj44Go44CR6YeN6KaB?=
 =?utf-8?b?44Gq44GK55+l44KJ44Gb?=
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

DQoNCg0KDQoNCuOAjOOBiOOBjeOBreOBo+OBqOOAjeOCkuOBhOOBpOOCguOBlOWIqeeUqOOBl+OB
puOBguOCiuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBl+OBn+OAgg0KDQoNCuOAjOOBiOOBjeOBreOB
o+OBqOOAjeOBruWIqeeUqOimj+e0hOOBqOS8muWToeizh+agvOOBrzbmnIgx5pelKOawtCnjgavl
pInmm7TjgZXjgozjgabjgYrjgorjgIHjgqLjgqvjgqbjg7Pjg4jmg4XloLHjgpLmm7TmlrDjgZfj
gabjgYrpoZjjgYTjgYTjgZ/jgZfjgb7jgZnjgII25pyIMTDml6Uo6YeRKeOBrue3oOOCgeWIh+OC
iuOBvuOBp+OBq+abtOaWsOOBjOWujOS6huOBl+OBpuOBhOOBquOBhOODpuODvOOCtuODvOOBr+OA
geS8muWToeizh+agvOOCkuWPluOCiua2iOOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAguOB
lOi/t+aDkeOCkuOBi+OBkeOBl+OBpueUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OCk+OAgg0KDQoN
CuKHkuOBk+OBk+OCkuOCr+ODquODg+OCr+OBl+OBpuODreOCsOOCpOODs+OBl+OBpuOBj+OBoOOB
leOBhOOAgg0KDQoNCg0KDQrnorroqo3nlKjjgqLjgqvjgqbjg7Pjg4gNCg0KDQoNCg0KDQrjgYrl
lY/jgYQNCg0K44GK5b+D5b2T44Gf44KK44Gu44Gq44GE5pa544Gv44CB6Kqg44Gr5oGQ44KM5YWl
44KK44G+44GZ44GM44GT44Gu44Oh44O844Or44Gu5YmK6Zmk44KS44GK6aGY44GE44GE44Gf44GX
44G+44GZ44CCDQrjgZTkuI3mmI7jgarngrnjga7jgYLjgovmlrnjga/jgIHjgYjjgY3jga3jgaPj
gajjgrXjg53jg7zjg4jjgrvjg7Pjgr/jg7zjgb7jgafjgZTpgKPntaHjgY/jgaDjgZXjgYTjgIIN
Cg0KDQrlkIjjgo/jgZvlhYgNCiDjgYjjgY3jga3jgaPjgajjgrXjg53jg7zjg4jjgrvjg7Pjgr/j
g7wNCiBURUwgMDUwLTIwMTYtNTAwMA0KIOWPl+S7mOaZgumWkyA45pmCMDDliIbvvZ4yMuaZgjAw
5YiGDQog44K144Kk44OI6YGL5Za244O7566h55CGDQogSlLmnbHml6XmnKzjg43jg4Pjg4jjgrnj
g4bjg7zjgrfjg6fjg7MNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCg0KDQoNCg0KDQpDb3B5cmln
aHQgwqkgSlIgRWFzdCBOZXQgU3RhdGlvbiBDby4sTHRkLiBBbGwgUmlnaHRzIFJlc2VydmVkLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
