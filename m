Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FABA065C4
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Jan 2025 21:12:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tVcPR-0008Ah-OC;
	Wed, 08 Jan 2025 20:12:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sendonly@ondapolitica.com>) id 1tVcPP-0008AK-Gh
 for v9fs-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yxOo4JC8cR+FPqF0W3xTl1akPYz9PPcBsdaaAhZO8JE=; b=KX2Al6V5GZz6zss9Jx5ntktX3Z
 eHmSDlmwjy3eFJwG41ZZBdw40mRVTA3Es+W84l3arDKj5j9tSWpWxiVgCFF1gfPCVELkOA8+glraB
 J1J6IV6Va0BO8/plQYilGVhVBCt9maCf0HG85aHeESO9hzH5RDX7c8Xvy+jnib2Skw0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yxOo4JC8cR+FPqF0W3xTl1akPYz9PPcBsdaaAhZO8JE=; b=c
 xvxexiNEq5KNccOo1uYd5y6QVVb2JqHVS0pL9Uo5Dy/fNDeraqYORYulhzSB+vyEoeqYI+oNcqqR5
 6Uupj3vkfGnIaa4KInadLImLoawwqA1yRGhS7s8HLO6J+rxk0KiNLc4AWbXq2IfShM06nYQ33pCcz
 k/rDcZlpXwpgn1oA=;
Received: from [140.227.120.168] (helo=mail0.ondapolitica.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVcPN-0004ed-Ko for v9fs-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:12:06 +0000
Message-ID: <a6c1be525f17b9d91f4a512205ff2233@shimabara.jp>
From: =?utf-8?Q?=EF=BC=AA=EF=BC=A1=E3=83=8D=E3=83=83=E3=83=88=E3=83=90=E3=83=B3=E3=82=AF?=
 <okamoto-cl@shimabara.jp>
To: "=?utf-8?Q?v9fs-developer@lists.sourceforge.net?="
 <v9fs-developer@lists.sourceforge.net>
Date: Wed, 08 Jan 2025 19:51:43 +0000
MIME-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつもＪＡネットバンクをご利用いただきありがとうございます。
    ＪＡネットバンクでは、お客さまに安心安全にお取引いただけるよう、マネー・ローンダリングおよびテロ資金供与防止対策に取り組んでおり、そ�
    [...] 
 
 Content analysis details:   (7.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [140.227.120.168 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [140.227.120.168 listed in bl.score.senderscore.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: dishscrubb.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: dishscrubb.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: dishscrubb.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [140.227.120.168 listed in wl.mailspike.net]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1tVcPN-0004ed-Ko
Subject: [V9fs-developer] =?utf-8?b?44CQ77yq77yh44ON44OD44OI44OQ44Oz44Kv?=
	=?utf-8?b?44CR44GK5a6i44GV44G+5oOF5aCx44O75Y+W5byV55uu55qE44Gu56K6?=
	=?utf-8?b?6KqN?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

44GE44Gk44KC77yq77yh44ON44OD44OI44OQ44Oz44Kv44KS44GU5Yip55So44GE44Gf44Gg44GN
44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCu+8qu+8oeODjeODg+ODiOODkOOD
s+OCr+OBp+OBr+OAgeOBiuWuouOBleOBvuOBq+WuieW/g+WuieWFqOOBq+OBiuWPluW8leOBhOOB
n+OBoOOBkeOCi+OCiOOBhuOAgeODnuODjeODvOODu+ODreODvOODs+ODgOODquODs+OCsOOBiuOC
iOOBs+ODhuODreizh+mHkeS+m+S4jumYsuatouWvvuetluOBq+WPluOCiue1hOOCk+OBp+OBiuOC
iuOAgeOBneOBruS4gOeSsOOBqOOBl+OBpuOAgeWumuacn+eahOOBq+OBiuWuouOBleOBvuaDheWg
seODu+WPluW8leebrueahOetieOBrueiuuiqjeOCkuihjOOBo+OBpuOBiuOCiuOBvuOBmeOAgg0K
44GK5omL5pWw44KS44GK44GL44GR44GE44Gf44GX44G+44GZ44GM44CB44GU55CG6Kej44Gu44GG
44GI44GU5Zue562U44Gu44G744Gp44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCDQoNCuS4i+io
mOOBruOBiuWPluW8leeiuuiqjeODnOOCv+ODs+OCkuOCr+ODquODg+OCr+OBmeOCi+OBqCDjgIwg
44GK5a6i44GV44G+5oOF5aCx44O75Y+W5byV55uu55qE44Gu56K66KqNIOOAjSDjga7nlLvpnaLj
gYzooajnpLrjgZXjgozjgb7jgZnjgILnlLvpnaLjga7moYjlhoXjgavmsr/jgaPjgabjgYrlrqLj
gZXjgb7mg4XloLHnrYnjga7norroqo3jgajjgZTlpInmm7Tjga7mnInnhKHjgIHlj5blvJXnm67n
moTjgpLjgZTlm57nrZTjgY/jgaDjgZXjgYTjgILnorroqo3kuovpoIXjga7lpInmm7TjgoTmlrDj
gZ/jgarmm7jpoZ7mj5Dlh7rnrYnjgYzjgarjgYTloLTlkIjjgIEx5YiG56iL5bqm44Gn5a6M5LqG
44GX44G+44GZ44CCDQoNCuKWvOOBiuWPluW8leeiuuiqjQ0KaHR0cHM6Ly9kaXNoc2NydWJiLmNv
bS9ocmlzdGluZS5odG1sDQoNCg0K44CQ44GU5rOo5oSP44CRDQrigLvlm57nrZTjgYzlrozkuobj
gZfjgb7jgZnjgajjgIHpgJrluLjjganjgYrjgorjg63jgrDjgqTjg7Plvozjga7jgYrmiYvntprj
gY3jgYzlj6/og73jgavjgarjgorjgb7jgZnjgIINCuKAu+S4gOWumuacn+mWk+OBlOeiuuiqjeOB
hOOBn+OBoOOBkeOBquOBhOWgtOWQiOOAgeWPo+W6p+WPluW8leOCkuWItumZkOOBleOBm+OBpuOB
hOOBn+OBoOOBjeOBvuOBmeOAgg0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSBDQrjgZTkuI3mmI7jgarngrnjgYzjgZTjgZbjgYTjgb7jgZfjgZ/jgonj
gIHkuIvoqJjjgb7jgafjgZTpgKPntaHjgY/jgaDjgZXjgYTjgIINCumAo+e1oeWFiCAwMTIwLTA1
OC0wOTgNCuOBk+OCjOOBi+OCieOCgu+8qu+8oeODjeODg+ODiOODkOODs+OCr+OCkuOCiOOCjeOB
l+OBj+OBiumhmOOBhOOBl+OBvuOBmeOAggoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
